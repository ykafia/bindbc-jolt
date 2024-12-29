module bindbc.joltc.loader;

import core.stdc.stdint;
import bindbc.loader;
import bindbc.joltc.funcs;
import std.traits;
import std.stdio;
import std.string : toUpper, endsWith;

enum JoltSupport
{
    noLibrary,
    badLibrary,
    jolt
}

private
{
    SharedLib lib;
    JoltSupport loadedVersion;
}

void unloadJolt()
{
    if (lib != invalidHandle)
    {
        lib.unload();
    }
}

JoltSupport loadedJoltVersion()
{
    return loadedVersion;
}

bool isJoltLoaded()
{
    return lib != invalidHandle;
}

JoltSupport loadJolt()
{
    version (Windows)
    {
        const(char)[][1] libNames =
            [
                "joltc.dll"
            ];
    }
    else version (OSX)
    {
        const(char)[][1] libNames =
            [
                "libjolt_native.dylib"
            ];
    }
    else version (Posix)
    {
        const(char)[][2] libNames =
            [
                "libjolt_native.so",
                "/usr/local/lib/libjolt_native.so",
            ];
    }
    else
        static assert(0, "libjolt is not yet supported on this platform.");

    JoltSupport ret;
    foreach (name; libNames)
    {
        ret = loadJolt(name.ptr);
        if (ret != JoltSupport.noLibrary)
            break;
    }
    return ret;
}

mixin template FuncAlias(string symbol)
{
    alias symbol = __traits(getMember, bindbc.joltc.types, symbol);
}

int add(int a)
{
    return a;
}

string correctFuncName(string name)
{
    return name[0 .. 5].toUpper() ~ name[5 .. $];
}

template GenLoadLib(string name)
{
    const char[] GenLoadLib = "lib.bindSymbol(cast(void**) &" ~ name ~ ", \"" ~ correctFuncName(name) ~ "\");";
}

JoltSupport loadJolt(const(char)* libName)
{
    lib = load(libName);
    if (lib == invalidHandle)
    {
        return JoltSupport.noLibrary;
    }

    auto errCount = errorCount();
    loadedVersion = JoltSupport.badLibrary;
    import std.algorithm.searching : startsWith;

    static foreach (symbol; __traits(allMembers, bindbc.joltc.funcs))
    {
        static if (symbol.startsWith("jph_"))
            mixin(GenLoadLib!symbol);
        if(errorCount() > 0)
        {
            writeln(symbol);
            return loadedVersion;
        }
    }

    loadedVersion = JoltSupport.jolt;
    if (errorCount() != errCount)
        return JoltSupport.badLibrary;

    return loadedVersion;
}

#include <stdio.h>

#include <Windows.h>

int __cdecl wmain(int argc, wchar_t** argv)
{
    for (int arg = 0; argv[arg]; ++arg)
    {
        wprintf (L"%d: [%ls]\n", arg, argv[arg]);
    }
    
    return 0;
}

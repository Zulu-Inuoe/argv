#ifdef _WIN32
#include <wchar.h>
#include <Windows.h>
#else
#include <stdio.h>
#endif

int main(int argc, char** argv)
{
    #ifdef _WIN32
    int wargc = 0;
    LPWSTR* wargv = CommandLineToArgvW(GetCommandLineW(), &wargc);
    #endif

    for (int arg = 0; wargv[arg]; ++arg)
    {
        #ifdef _WIN32
        wprintf(L"%d: [%ls]\n", arg, wargv[arg]);
        #else
        printf("%d: [%s]\n", arg, argv[arg]);
        #endif
    }

    #ifdef _WIN32
    LocalFree(wargv);
    #endif

    return 0;
}

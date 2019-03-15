#include <stdio.h>

#ifdef _WIN32
#include <io.h>
#include <fcntl.h>
#include <wchar.h>
#endif


#ifdef _WIN32
int wmain (int argc, wchar_t** argv)
#else
int main (int argc, char** argv)
#endif
{
#ifdef _WIN32
    _setmode(_fileno(stdout), _O_U16TEXT);
#endif

    for (int i = 0; i < argc; ++i)
    {
#ifdef _WIN32
        wprintf(L"%d: [%s]\n", i, argv[i]);
#else
        printf("%d: [%s]\n", i, argv[i]);
#endif
    }

    return 0;
}

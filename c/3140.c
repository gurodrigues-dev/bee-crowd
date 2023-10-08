#include <string.h>
#include <stdbool.h>
#include <stdio.h>

int main(int argc, char *argv)
{

    char string[1100];

    bool body = false;
    while (~scanf("%[^\n]%*c", string))
    {

        if (strstr(string, "<body>"))
        {

            body = true;
            continue;
        }

        if (body && strstr(string, "</body>"))
            body = false;

        if (body)
            puts(string);
    }

    return 0;
}
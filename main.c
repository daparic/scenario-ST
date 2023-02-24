#include <stdio.h>
#include "helper/addnum.h"

int main(int argc, char* argv[])
{
    printf("*** scenario-ST ***\n");
    int result;

    result = addnum(3, 4);
    printf("result = %d\n", result);

    return 0;
}

#include <stdio.h>

int main () {
    char* family[9] = {
        "Baby shark", "Mommy shark", "Daddy shark", "Grandma shark", "Grandpa shark",
        "Let\'s go hunt", "Run away", "Safe at last", "It\'s the end"
    };

    for (int i = 0; i < 9; i++) {
        for (int j = 0; j < 3; j++) printf("%s, doo doo doo doo doo doo\n", family[i]);
        printf("%s!\n", family[i]);
    }

    return 0;
}

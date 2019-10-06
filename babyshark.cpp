#include <iostream>

int main() {
    std::string family[9]{"Baby shark",    "Mommy shark",   "Daddy shark",
                          "Grandma shark", "Grandpa shark", "Let's go hunt",
                          "Run away",      "Safe at last",  "It's the end"};
    for (int i = 0; i < 9; i++) {
        for (int j = 0; j < 3; j++) {
            std::cout << family[i] << ", doo doo doo doo doo doo\n";
        }
        std::cout << family[i] << "!\n";
    }
    return 0;
}

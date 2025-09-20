#include <iostream>
#include "tools/tools.hpp"

int main(int argc, char **argv)
{
    std::cout << "(1): Add Subdirectory" << std::endl;
    std::cout << "(2): 10 + 20 = " << tools::addNumber(10, 20) << std::endl;
    return 0;
}

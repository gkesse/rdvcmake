#include <iostream>
#include "version.hpp"

int main(int argc, char **argv)
{
    std::cout << "(1): Configure File Example" << std::endl;

#ifdef VERSION_ENABLE
    std::cout << "(2): VERSION: " << VERSION << std::endl;
#endif

    return 0;
}
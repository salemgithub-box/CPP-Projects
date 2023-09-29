#include<iostream>
#include<nlohmann/json.hpp>

#include"my_lib.hpp"
// #include"config.hpp"

int main(){
    std::cout<<"json library version: "<<NLOHMANN_JSON_VERSION_MAJOR<<std::endl;
    // std::cout<< project_name <<std::endl;
    print_hello_world();
    return 0;
}


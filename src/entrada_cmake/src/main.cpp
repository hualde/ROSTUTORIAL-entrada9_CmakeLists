#include "mi_libreria.h"

int main(int argc, char ** argv) {

    ros::init(argc,argv,"nodo_main");
    ros::NodeHandle node;

    ROS_WARN("PROGRAMA");

    Mi_libreria mi_libreria(node);


    return 0;

}
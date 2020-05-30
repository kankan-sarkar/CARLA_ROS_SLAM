#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/kankan/CARLA_ROS_SLAM/src/carla_ego_vehicle"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/kankan/CARLA_ROS_SLAM/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/kankan/CARLA_ROS_SLAM/install/lib/python2.7/dist-packages:/home/kankan/CARLA_ROS_SLAM/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/kankan/CARLA_ROS_SLAM/build" \
    "/usr/bin/python2" \
    "/home/kankan/CARLA_ROS_SLAM/src/carla_ego_vehicle/setup.py" \
    build --build-base "/home/kankan/CARLA_ROS_SLAM/build/carla_ego_vehicle" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/kankan/CARLA_ROS_SLAM/install" --install-scripts="/home/kankan/CARLA_ROS_SLAM/install/bin"

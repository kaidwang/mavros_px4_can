# CMake generated Testfile for 
# Source directory: /home/nvidia/kd_px4_can/src/mavros/libmavconn
# Build directory: /home/nvidia/kd_px4_can/build/libmavconn
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_libmavconn_gtest_mavconn-test "/home/nvidia/kd_px4_can/build/libmavconn/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/nvidia/kd_px4_can/build/libmavconn/test_results/libmavconn/gtest-mavconn-test.xml" "--return-code" "/home/nvidia/kd_px4_can/devel/.private/libmavconn/lib/libmavconn/mavconn-test --gtest_output=xml:/home/nvidia/kd_px4_can/build/libmavconn/test_results/libmavconn/gtest-mavconn-test.xml")
subdirs(gtest)

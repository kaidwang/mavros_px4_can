# CMake generated Testfile for 
# Source directory: /home/nvidia/kd_px4_can/src/mavros/mavros
# Build directory: /home/nvidia/kd_px4_can/build/mavros
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_mavros_gtest_libmavros-frame-conversions-test "/home/nvidia/kd_px4_can/build/mavros/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/nvidia/kd_px4_can/build/mavros/test_results/mavros/gtest-libmavros-frame-conversions-test.xml" "--return-code" "/home/nvidia/kd_px4_can/devel/.private/mavros/lib/mavros/libmavros-frame-conversions-test --gtest_output=xml:/home/nvidia/kd_px4_can/build/mavros/test_results/mavros/gtest-libmavros-frame-conversions-test.xml")
add_test(_ctest_mavros_gtest_libmavros-sensor-orientation-test "/home/nvidia/kd_px4_can/build/mavros/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/nvidia/kd_px4_can/build/mavros/test_results/mavros/gtest-libmavros-sensor-orientation-test.xml" "--return-code" "/home/nvidia/kd_px4_can/devel/.private/mavros/lib/mavros/libmavros-sensor-orientation-test --gtest_output=xml:/home/nvidia/kd_px4_can/build/mavros/test_results/mavros/gtest-libmavros-sensor-orientation-test.xml")
add_test(_ctest_mavros_gtest_libmavros-quaternion-utils-test "/home/nvidia/kd_px4_can/build/mavros/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/nvidia/kd_px4_can/build/mavros/test_results/mavros/gtest-libmavros-quaternion-utils-test.xml" "--return-code" "/home/nvidia/kd_px4_can/devel/.private/mavros/lib/mavros/libmavros-quaternion-utils-test --gtest_output=xml:/home/nvidia/kd_px4_can/build/mavros/test_results/mavros/gtest-libmavros-quaternion-utils-test.xml")
subdirs(gtest)

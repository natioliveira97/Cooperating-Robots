# CMake generated Testfile for 
# Source directory: /home/scara/Cooperating-Robots/catkin_ws/src/camera1394
# Build directory: /home/scara/Cooperating-Robots/catkin_ws/build/camera1394
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_camera1394_rostest_tests_no_device_node.test "/home/scara/Cooperating-Robots/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/scara/Cooperating-Robots/catkin_ws/build/test_results/camera1394/rostest-tests_no_device_node.xml" "--return-code" "/opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/scara/Cooperating-Robots/catkin_ws/src/camera1394 --package=camera1394 --results-filename tests_no_device_node.xml --results-base-dir \"/home/scara/Cooperating-Robots/catkin_ws/build/test_results\" /home/scara/Cooperating-Robots/catkin_ws/src/camera1394/tests/no_device_node.test ")
add_test(_ctest_camera1394_rostest_tests_no_device_nodelet.test "/home/scara/Cooperating-Robots/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/scara/Cooperating-Robots/catkin_ws/build/test_results/camera1394/rostest-tests_no_device_nodelet.xml" "--return-code" "/opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/scara/Cooperating-Robots/catkin_ws/src/camera1394 --package=camera1394 --results-filename tests_no_device_nodelet.xml --results-base-dir \"/home/scara/Cooperating-Robots/catkin_ws/build/test_results\" /home/scara/Cooperating-Robots/catkin_ws/src/camera1394/tests/no_device_nodelet.test ")
subdirs("src/nodes")

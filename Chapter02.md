# 2장 터틀봇3 버거와 와플파이 이해하기

- TurtleBot3 Burger 3D Model 
```
https://cad.onshape.com/documents/2586c4659ef3e7078e91168b/w/14abf4cb615429a14a2732cc/e/9ae9841864e78c02c4966c5e
```


- TurtleBot3 Waffle Pi 3D Model
```
https://cad.onshape.com/documents/179d4ba2a1f9231f93cae6e2/w/71e9066aee42d5039f880e2f/e/3cb7d487c93655e7067a3d5f
```

- 우분투 다운로드 링크
```
http://releases.ubuntu.com/18.04/ubuntu-18.04.4-desktop-amd64.iso.torrent 
```

- 한 줄 설치
```
wget https://raw.githubusercontent.com/orocapangyo/meetup/master/190830/install_ros_melodic.sh && chmod 755 ./install_ros_melodic.sh && bash ./install_ros_melodic.sh 
```
- 터틀봇3 라즈베리파이 이미지
```
https://www.robotis.com/service/download.php?no=1738 
```

- 라즈베리파이 다운로드 사이트
```
https://www.raspberrypi.org/downloads/
```

- 아두이노 개발환경 프록그램 다운로드 사이트
```
https://www.arduino.cc/en/Main/Software
```
- OpenCR 패키지 다운로드 
```
https://raw.githubusercontent.com/ROBOTIS-GIT/OpenCR/master/arduino/opencr_release/package_opencr_index.json
```

### ROS 실행
- Remote PC에서 roscore를 실행한다.
```
roscore
```

- 터틀봇3에서 ROS 패키지를 기동한다.
```
roslaunch turtlebot3_bringup turtlebot3_robot.launch
```

- Remote PC에서 기본 패키지를 설치한다.
```
sudo apt-get install ros-kinetic-joy ros-kinetic-teleop-twist-joy ros-kinetic-teleop-twist-keyboard ros-kinetic-laser-proc ros-kinetic-rgbd-launch ros-kinetic-depthimage-to-laserscan ros-kinetic-rosserial-arduino ros-kinetic-rosserial-python ros-kinetic-rosserial-server ros-kinetic-rosserial-client ros-kinetic-rosserial-msgs ros-kinetic-amcl ros-kinetic-map-server ros-kinetic-move-base ros-kinetic-urdf ros-kinetic-xacro ros-kinetic-compressed-image-transport ros-kinetic-rqt-image-view ros-kinetic-gmapping ros-kinetic-navigation ros-kinetic-interactive-markers
```
```
$ cd ~/catkin_ws/src/
$ git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
$ git clone -b kinetic-devel https://github.com/ROBOTIS-GIT/turtlebot3.git
$ cd ~/catkin_ws && catkin_make
```
- Remote PC에서 원격조종 패키지를 실행한다.
```
$ export TURTLEBOT3_MODEL=burger
$ roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
```
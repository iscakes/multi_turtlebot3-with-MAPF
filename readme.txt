使用与启动
roslaunch turtlebot3_navigation multi_turtlebot3_navigation.launch
所有的world存放地址：
/home/wlm/cbs-new/src/turtlebot3_simulations/turtlebot3_gazebo/worlds
所有的maps存放地址：
/home/wlm/cbs-new/src/turtlebot3/turtlebot3_navigation/maps
测试用例;
关于工厂地图：factory_cropped.pgm  工厂world：output311.world(该场景确定为原点0.0)
小场景：map1.pgm  小场景world：cbs.world
how to use:
替换所需要的world和map，可以先通过gazebo打开world看看坐标是否一致，地图坐标通过factory_cropped.yaml文件确定，RG371.building.yaml为原始工厂路网图，0.yaml为traffic edditor生成的工厂路网图

关于安装traffic_edditor：
主要是改为ROS1后，包的版本不再匹配，应该使用proj-7.2.1这个包


关于python脚本的使用：
multi_robot_goal_sender.py主要为不同机器人发送目标点，可以修改坐标发送点位，0.0为正右方，1.5708为正北方向，3.1416为正西方向，-1.5708为正南方向
visualize_yawl.py主要为路网显示mark,主要读取0.yaml中的数据
map.py常常用来做格式转换，png和pgm

多机器人实现方法：
gazebo出现：nulti_turtlebot3.launch
参照以下格式launch机器人，launch前需要定义机器人坐标和位姿
  <group ns = "$(arg first_tb3)">
    <param name="robot_description" command="$(find xacro)/xacro --inorder $(find turtlebot3_description)/urdf/turtlebot3_$(arg model).urdf.xacro" />
 
    <node pkg="robot_state_publisher" type="robot_state_publisher" name="robot_state_publisher" output="screen">
      <param name="publish_frequency" type="double" value="50.0" />
      <param name="tf_prefix" value="$(arg first_tb3)" />
    </node>
    <param name="tf_prefix" value="$(arg first_tb3)" />
    <node name="spawn_urdf" pkg="gazebo_ros" type="spawn_model" args="-urdf -model $(arg first_tb3) -x $(arg first_tb3_x_pos) -y $(arg first_tb3_y_pos) -z $(arg first_tb3_z_pos) -Y $(arg first_tb3_yaw) -param robot_description" />
     <node pkg="tf2_ros" type="static_transform_publisher" name="map_to_odom" args="0 0 0 0 0 0 $(arg global_frame_id) $(arg first_tb3)/odom"/>
  </group>
  
  
 多机器人导航参考：multi_turtlebot3_navigation.lauch
  为每个机器人添加一个group，分别添加amcl和move_base
   <group ns="$(arg first_tb3)">
    <!-- AMCL -->
   
    <include file="$(find turtlebot3_navigation)/launch/multi_amcl.launch" >
      <arg name="initial_pose_x" default="$(arg first_tb3_x_pos)"/>
      <arg name="initial_pose_y" default="$(arg first_tb3_y_pos)"/>
      <arg name="initial_pose_a" default="$(arg first_tb3_yaw)"/>
      <arg name="odom_frame_id"   value="$(arg first_tb3)/odom"/>
      <arg name="base_frame_id"   value="$(arg first_tb3)/base_footprint"/>
      <arg name="global_frame_id" value="map"/>
    </include>   
    <!-- move_base -->
    <include file="$(find turtlebot3_navigation)/launch/multi_move_base.launch" >
      <arg name="odom_frame_id"   value="$(arg first_tb3)/odom"/>
      <arg name="base_frame_id"   value="$(arg first_tb3)/base_footprint"/>
      <arg name="global_frame_id" value="map"/>
      <arg name="scan_frame_id" value="$(arg first_tb3)/base_scan" />
      <arg name="model" value="$(arg model)" />
    </include>
  </group>
  
  RViz修改部分：参考文件multi_turtlebot3_navigation.rviz
    Tools:
    - Class: rviz/MoveCamera
    - Class: rviz/Interact
      Hide Inactive Objects: true
    - Class: rviz/Select
    - Class: rviz/SetInitialPose
      Theta std deviation: 0.2617993950843811
      Topic: tb3_0//initialpose
      X std deviation: 0.5
      Y std deviation: 0.5
    - Class: rviz/SetGoal
      Topic: tb3_0/move_base_simple/goal
    - Class: rviz/SetInitialPose
      Theta std deviation: 0.2617993950843811
      Topic: tb3_1//initialpose
      X std deviation: 0.5
      Y std deviation: 0.5
    - Class: rviz/SetGoal
      Topic: tb3_1/move_base_simple/goal
    - Class: rviz/SetInitialPose
      Theta std deviation: 0.2617993950843811
      Topic: tb3_2//initialpose
      X std deviation: 0.5
      Y std deviation: 0.5
    - Class: rviz/SetGoal
      Topic: tb3_2/move_base_simple/goal
    - Class: rviz/SetInitialPose
      Theta std deviation: 0.2617993950843811
      Topic: tb3_3//initialpose
      X std deviation: 0.5
      Y std deviation: 0.5
    - Class: rviz/SetGoal
      Topic: tb3_3/move_base_simple/goal
    - Class: rviz/SetInitialPose
      Theta std deviation: 0.2617993950843811
      Topic: tb3_4//initialpose
      X std deviation: 0.5
      Y std deviation: 0.5
    - Class: rviz/SetGoal
      Topic: tb3_4/move_base_simple/goal
    - Class: rviz/Measure
    注意替换tools部分，由于我们是给每个机器人都设置了一个group，所以move_base前应该有机器人的标号，必须为每个机器人设置/goal，否则无法向机器人发送/goal，同样也可以使用multi_robot_goal_sender.py脚本
  
  个人CSDN帖子：【基于ROS的多机器人路径规划导航实现 - CSDN App】https://blog.csdn.net/wlm2001429/article/details/144885376?sharetype=blog&shareId=144885376&sharerefer=APP&sharesource=wlm2001429&sharefrom=link

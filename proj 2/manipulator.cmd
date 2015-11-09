!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 5.0E-002  &
   spacing_for_grid = 1.0
!
!--------------------------- Plugins used by Model ----------------------------!
!
!
plugin load  &
   plugin_name = .MDI.plugins.controls
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = robot
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .robot.moment_1  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .robot.moment_2  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .robot.fi_1  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .robot.fi_2  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .robot.om_wir_1  &
   adams_id = 5  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .robot.om_wir_2  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .robot.steel  &
   adams_id = 1  &
   density = 7801.0  &
   youngs_modulus = 2.07E+011  &
   poissons_ratio = 0.29
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .robot.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .robot.ground.MARKER_7  &
   adams_id = 7  &
   location = 0.0, 0.0, -1.5E-002  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .robot.ground.os_czlon_1  &
   adams_id = 13  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.ground.os_wirnik_1  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .robot.ground  &
   material_type = .robot.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .robot.ground.CYLINDER_5  &
   adams_id = 5  &
   center_marker = .robot.ground.MARKER_7  &
   angle_extent = 360.0  &
   length = 5.0E-002  &
   radius = 5.0E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .robot.ground  &
   name_visibility = off
!
!---------------------------------- czlon_1 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .robot.ground
!
part create rigid_body name_and_position  &
   part_name = .robot.czlon_1  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .robot.czlon_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .robot.czlon_1.MARKER_1  &
   adams_id = 1  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.czlon_1.MARKER_2  &
   adams_id = 2  &
   location = 0.25, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.czlon_1.cm  &
   adams_id = 20  &
   location = 0.125, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .robot.czlon_1.os_czlon_1  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.czlon_1.os_czlon_2  &
   adams_id = 15  &
   location = 0.25, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.czlon_1.os_wirnik_2  &
   adams_id = 19  &
   location = 0.25, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .robot.czlon_1  &
   density = 5000.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .robot.czlon_1.LINK_1  &
   i_marker = .robot.czlon_1.MARKER_1  &
   j_marker = .robot.czlon_1.MARKER_2  &
   width = 5.0E-002  &
   depth = 3.0E-002
!
part attributes  &
   part_name = .robot.czlon_1  &
   color = RED  &
   name_visibility = off
!
!---------------------------------- czlon_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .robot.ground
!
part create rigid_body name_and_position  &
   part_name = .robot.czlon_2  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .robot.czlon_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .robot.czlon_2.MARKER_3  &
   adams_id = 3  &
   location = 0.25, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.czlon_2.MARKER_4  &
   adams_id = 4  &
   location = 0.45, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.czlon_2.cm  &
   adams_id = 21  &
   location = 0.35, 0.0, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .robot.czlon_2.os_czlon_2  &
   adams_id = 14  &
   location = 0.25, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .robot.czlon_2  &
   density = 5000.0
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .robot.czlon_2.LINK_2  &
   i_marker = .robot.czlon_2.MARKER_3  &
   j_marker = .robot.czlon_2.MARKER_4  &
   width = 4.0E-002  &
   depth = 2.0E-002
!
part attributes  &
   part_name = .robot.czlon_2  &
   color = GREEN  &
   name_visibility = off
!
!---------------------------------- wirnik_1 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .robot.ground
!
part create rigid_body name_and_position  &
   part_name = .robot.wirnik_1  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .robot.wirnik_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .robot.wirnik_1.MARKER_5  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.wirnik_1.cm  &
   adams_id = 22  &
   location = 0.0, 1.8466138062E-004, 2.4815338619E-002  &
   orientation = 0.0d, 4.199375186d, 0.0d
!
marker create  &
   marker_name = .robot.wirnik_1.MARKER_8  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.wirnik_1.MARKER_9  &
   adams_id = 9  &
   location = 0.0, 5.0E-002, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.wirnik_1.os_wirnik_1  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .robot.wirnik_1  &
   material_type = .robot.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .robot.wirnik_1.CYLINDER_3  &
   adams_id = 3  &
   center_marker = .robot.wirnik_1.MARKER_5  &
   angle_extent = 360.0  &
   length = 5.0E-002  &
   radius = 2.4E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .robot.wirnik_1.LINK_8  &
   i_marker = .robot.wirnik_1.MARKER_8  &
   j_marker = .robot.wirnik_1.MARKER_9  &
   width = 5.0E-003  &
   depth = 2.5E-003
!
part attributes  &
   part_name = .robot.wirnik_1  &
   color = MAIZE  &
   name_visibility = off
!
!---------------------------------- wirnik_2 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .robot.ground
!
part create rigid_body name_and_position  &
   part_name = .robot.wirnik_2  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .robot.wirnik_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .robot.wirnik_2.MARKER_6  &
   adams_id = 6  &
   location = 0.25, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.wirnik_2.cm  &
   adams_id = 23  &
   location = 0.25, 3.6536475389E-004, 2.4634635246E-002  &
   orientation = 0.0d, 3.9250265123d, 0.0d
!
marker create  &
   marker_name = .robot.wirnik_2.MARKER_10  &
   adams_id = 10  &
   location = 0.25, 0.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.wirnik_2.MARKER_11  &
   adams_id = 11  &
   location = 0.25, 5.0E-002, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .robot.wirnik_2.os_wirnik_2  &
   adams_id = 18  &
   location = 0.25, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .robot.wirnik_2  &
   material_type = .robot.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .robot.wirnik_2.CYLINDER_4  &
   adams_id = 4  &
   center_marker = .robot.wirnik_2.MARKER_6  &
   angle_extent = 360.0  &
   length = 5.0E-002  &
   radius = 1.7E-002  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape link  &
   link_name = .robot.wirnik_2.LINK_9  &
   i_marker = .robot.wirnik_2.MARKER_10  &
   j_marker = .robot.wirnik_2.MARKER_11  &
   width = 5.0E-003  &
   depth = 2.5E-003
!
part attributes  &
   part_name = .robot.wirnik_2  &
   color = CYAN  &
   name_visibility = off
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .robot.os_czlon_1  &
   adams_id = 1  &
   i_marker_name = .robot.czlon_1.os_czlon_1  &
   j_marker_name = .robot.ground.os_czlon_1
!
constraint attributes  &
   constraint_name = .robot.os_czlon_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .robot.os_czlon_2  &
   adams_id = 2  &
   i_marker_name = .robot.czlon_2.os_czlon_2  &
   j_marker_name = .robot.czlon_1.os_czlon_2
!
constraint attributes  &
   constraint_name = .robot.os_czlon_2  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .robot.os_wirnik_1  &
   adams_id = 3  &
   i_marker_name = .robot.wirnik_1.os_wirnik_1  &
   j_marker_name = .robot.ground.os_wirnik_1
!
constraint attributes  &
   constraint_name = .robot.os_wirnik_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .robot.os_wirnik_2  &
   adams_id = 4  &
   i_marker_name = .robot.wirnik_2.os_wirnik_2  &
   j_marker_name = .robot.czlon_1.os_wirnik_2
!
constraint attributes  &
   constraint_name = .robot.os_wirnik_2  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .robot.naped_1  &
   adams_id = 1  &
   type_of_freedom = rotational  &
   i_marker_name = .robot.wirnik_1.os_wirnik_1  &
   j_marker_name = .robot.ground.os_wirnik_1  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .robot.naped_2  &
   adams_id = 2  &
   type_of_freedom = rotational  &
   i_marker_name = .robot.wirnik_2.os_wirnik_2  &
   j_marker_name = .robot.czlon_1.os_wirnik_2  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .robot.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=1.0 number_of_steps=100 model_name=.robot"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .robot.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .robot.Controls_Plant_1  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.input_channels  &
   object_value =   &
      .robot.moment_1,  &
      .robot.moment_2
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.output_channels  &
   object_value =   &
      .robot.fi_1,  &
      .robot.fi_2,  &
      .robot.om_wir_1,  &
      .robot.om_wir_2
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.file_name  &
   string_value = "manipulator"
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.host  &
   string_value = "Daniel_Laptop"
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .robot.Controls_Plant_1.output_rate  &
   integer_value = 1
!
ude modify instance  &
   instance_name = .robot.Controls_Plant_1
!
undo end_block
!
!---------------------------------- Couplers ----------------------------------!
!
!
constraint create complex_joint coupler  &
   coupler_name = .robot.przekladnia_1  &
   adams_id = 1  &
   joint_name =  &
      .robot.os_wirnik_1,  &
      .robot.os_czlon_1  &
   type_of_freedom = rot_rot  &
   motion_multipliers = -1.0, 20.0
!
constraint create complex_joint coupler  &
   coupler_name = .robot.przekladnia_2  &
   adams_id = 2  &
   joint_name =  &
      .robot.os_wirnik_2,  &
      .robot.os_czlon_2  &
   type_of_freedom = rot_rot  &
   motion_multipliers = -1.0, 20.0
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9.80665  &
   z_component_gravity = 0.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .robot._model  &
   string_value = ".robot"
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .robot.moment_1  &
   function = "0"
!
data_element modify variable  &
   variable_name = .robot.moment_2  &
   function = "0"
!
data_element modify variable  &
   variable_name = .robot.fi_1  &
   function = "AZ(.robot.czlon_1.os_czlon_1, .robot.ground.os_czlon_1)"
!
data_element modify variable  &
   variable_name = .robot.fi_2  &
   function = "AZ(.robot.czlon_2.os_czlon_2, .robot.czlon_1.os_czlon_2)"
!
data_element modify variable  &
   variable_name = .robot.om_wir_1  &
   function = "WZ(.robot.wirnik_1.os_wirnik_1,.robot.ground.os_wirnik_1,.robot.ground.os_wirnik_1)"
!
data_element modify variable  &
   variable_name = .robot.om_wir_2  &
   function = "WZ(.robot.wirnik_2.os_wirnik_2,.robot.czlon_1.os_wirnik_2,.robot.czlon_1.os_wirnik_2)"
!
force modify direct single_component_force  &
   single_component_force_name = .robot.naped_1  &
   function = "VARVAL(.robot.moment_1)"
!
force modify direct single_component_force  &
   single_component_force_name = .robot.naped_2  &
   function = "VARVAL(.robot.moment_2)"
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .robot.Controls_Plant_1
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape cylinder  &
   cylinder_name = .robot.ground.CYLINDER_5  &
   length = (5.0E-002meter)  &
   radius = (5.0cm)
!
geometry modify shape link  &
   link_name = .robot.czlon_1.LINK_1  &
   width = (5.0cm)  &
   depth = (3.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .robot.czlon_1  &
   density = (5000(kg/meter**3))
!
geometry modify shape link  &
   link_name = .robot.czlon_2.LINK_2  &
   width = (4.0cm)  &
   depth = (2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .robot.czlon_2  &
   density = (5000(kg/meter**3))
!
geometry modify shape cylinder  &
   cylinder_name = .robot.wirnik_1.CYLINDER_3  &
   length = (5.0E-002meter)  &
   radius = (2.4cm)
!
geometry modify shape link  &
   link_name = .robot.wirnik_1.LINK_8  &
   width = (5.0E-003meter)  &
   depth = (2.5E-003meter)
!
geometry modify shape cylinder  &
   cylinder_name = .robot.wirnik_2.CYLINDER_4  &
   length = (5.0E-002meter)  &
   radius = (1.7cm)
!
geometry modify shape link  &
   link_name = .robot.wirnik_2.LINK_9  &
   width = (5.0E-003meter)  &
   depth = (2.5E-003meter)
!
material modify  &
   material_name = .robot.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+011(Newton/meter**2))
!
model display  &
   model_name = robot

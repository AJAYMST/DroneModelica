within Drone.Mechanical.Chassis.Template;
model DroneChassis
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-116,56},{-84,88}},origin = {0,0},rotation = 0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a2 annotation(Placement(transformation(extent = {{-116.0,12.0},{-84.0,44.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a3 annotation(Placement(transformation(extent = {{-116.0,-26.0},{-84.0,6.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a4 annotation(Placement(transformation(extent = {{-116.0,-66.0},{-84.0,-34.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a5 annotation(Placement(transformation(extent = {{-16.0,-16.0},{16.0,16.0}},origin = {0.0,-100.0},rotation = -90.0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0,0.25,0},m = m,r_CM = {0,0.175,0},animation = false,animateSphere = false,useQuaternions = false) annotation(Placement(transformation(extent = {{-20.0,62.0},{0.0,82.0}},origin = {0.0,0.0},rotation = 0.0)));
    parameter .Modelica.Units.SI.Mass m = 1 "Mass of the Drone Chassis";
    .Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape2(useQuaternions = false,animateSphere = false,animation = false,r_CM = {0.175,0,0},m = m,r = {0.25,0,0}) annotation(Placement(transformation(extent = {{-20.0,18.0},{0.0,38.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape3(useQuaternions = false,animateSphere = false,animation = false,r_CM = {0,-0.175,0},m = m,r = {0,-0.25,0}) annotation(Placement(transformation(extent = {{-20.0,-20.0},{0.0,0.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape4(useQuaternions = false,animateSphere = false,animation = false,r_CM = {-0.175,0,0},m = m,r = {-0.25,0,0}) annotation(Placement(transformation(extent = {{-20.0,-60.0},{0.0,-40.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder(animation = false,r = {0,0,-Length},length = Length,diameter = 0.01,density = 0,useQuaternions = false) annotation(Placement(transformation(extent = {{40.0,-20.0},{60.0,0.0}},origin = {0.0,0.0},rotation = 0.0)));
    parameter .Modelica.Units.SI.Length Length = 0.25 "Length of Mass";
    .Modelica.Mechanics.MultiBody.Parts.PointMass pointMass(animation = false,m = m) annotation(Placement(transformation(extent = {{72.0,-20.0},{92.0,0.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(frame_a,bodyShape.frame_a) annotation(Line(points = {{-100,72},{-20,72}},color = {95,95,95}));
    connect(frame_a2,bodyShape2.frame_a) annotation(Line(points = {{-100,28},{-20,28}},color = {95,95,95}));
    connect(frame_a3,bodyShape3.frame_a) annotation(Line(points = {{-100,-10},{-20,-10}},color = {95,95,95}));
    connect(frame_a4,bodyShape4.frame_a) annotation(Line(points = {{-100,-50},{-20,-50}},color = {95,95,95}));
    connect(frame_a5,bodyCylinder.frame_a) annotation(Line(points = {{0,-100},{10,-100},{10,-10},{40,-10}},color = {95,95,95}));
    connect(bodyShape.frame_b,bodyCylinder.frame_a) annotation(Line(points = {{0,72},{10,72},{10,-10},{40,-10}},color = {95,95,95}));
    connect(bodyShape2.frame_b,bodyCylinder.frame_a) annotation(Line(points = {{0,28},{10,28},{10,-10},{40,-10}},color = {95,95,95}));
    connect(bodyShape3.frame_b,bodyCylinder.frame_a) annotation(Line(points = {{0,-10},{40,-10}},color = {95,95,95}));
    connect(bodyShape4.frame_b,bodyCylinder.frame_a) annotation(Line(points = {{0,-50},{10,-50},{10,-10},{40,-10}},color = {95,95,95}));
    connect(bodyCylinder.frame_b,pointMass.frame_a) annotation(Line(points = {{60,-10},{82,-10}},color = {95,95,95}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={0,0,0},fillColor={230,230,230},
            fillPattern =                                                                                                                                                              FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString
            =                                                                                                                                                                                                        "%name")}));
end DroneChassis;

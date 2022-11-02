within Drone.Mechanical.Chassis.Templates;
model DroneChassis
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-116.0,44.0},{-84.0,76.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a2 annotation(Placement(transformation(extent = {{-116.0,4.0},{-84.0,36.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a3 annotation(Placement(transformation(extent = {{-116,-36},{-84,-4}},origin = {0,0},rotation = 0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a4 annotation(Placement(transformation(extent = {{-116,-76},{-84,-44}},origin = {0,0},rotation = 0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(r = {0,0.25,0},r_CM = {0,0.175,0},m = m,useQuaternions = false,animateSphere = false,animation = false) annotation(Placement(transformation(extent = {{-60.0,50.0},{-40.0,70.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape2(r = {0.25,0,0},r_CM = {0.175,0,0},m = m,useQuaternions = false,animation = false,animateSphere = false) annotation(Placement(transformation(extent = {{-60.0,10.0},{-40.0,30.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape3(r = {0,-0.25,0},r_CM = {0,-0.175,0},m = m,useQuaternions = false,animation = false,animateSphere = false) annotation(Placement(transformation(extent = {{-60.0,-30.0},{-40.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape4(r = {-0.25,0,0},r_CM = {-0.175,0,0},m = m,useQuaternions = false,animation = false,animateSphere = false) annotation(Placement(transformation(extent = {{-60.0,-70.0},{-40.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a5 annotation(Placement(transformation(extent = {{-16.0,-16.0},{16.0,16.0}},origin = {0.0,-100.0},rotation = 90.0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder(animation = false,r = {0,0,-length},length = length,diameter = 0.01,density = 0,useQuaternions = false) annotation(Placement(transformation(extent = {{22.0,-10.0},{42.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Parts.PointMass pointMass(animation = false,m = m) annotation(Placement(transformation(extent = {{52.0,-10.0},{72.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    parameter .Modelica.Units.SI.Mass m = 1 "Mass of rigid body";
    parameter .Modelica.Units.SI.Length length = 0.25 "Length of cylinder";
equation
    connect(frame_a,bodyShape.frame_a) annotation(Line(points = {{-100,60},{-60,60}},color = {95,95,95}));
    connect(frame_a2,bodyShape2.frame_a) annotation(Line(points = {{-100,20},{-60,20}},color = {95,95,95}));
    connect(frame_a3,bodyShape3.frame_a) annotation(Line(points = {{-100,-20},{-60,-20}},color = {95,95,95}));
    connect(frame_a4,bodyShape4.frame_a) annotation(Line(points = {{-100,-60},{-60,-60}},color = {95,95,95}));
    connect(bodyShape.frame_b,bodyCylinder.frame_a) annotation(Line(points = {{-40,60},{-20,60},{-20,0},{22,0}},color = {95,95,95}));
    connect(bodyShape2.frame_b,bodyCylinder.frame_a) annotation(Line(points = {{-40,20},{-20,20},{-20,0},{22,0}},color = {95,95,95}));
    connect(bodyShape3.frame_b,bodyCylinder.frame_a) annotation(Line(points = {{-40,-20},{-20,-20},{-20,0},{22,0}},color = {95,95,95}));
    connect(bodyShape4.frame_b,bodyCylinder.frame_a) annotation(Line(points = {{-40,-60},{-20,-60},{-20,0},{22,0}},color = {95,95,95}));
    connect(frame_a5,bodyCylinder.frame_a) annotation(Line(points = {{0,-100},{0,0},{22,0}},color = {95,95,95}));
    connect(bodyCylinder.frame_b,pointMass.frame_a) annotation(Line(points = {{42,0},{62,0}},color = {95,95,95}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Drone/Resources/Dronechassis.png",origin={1,0},extent={{99.24718731598453,-98.98105691007225},{-99,98}})}));
end DroneChassis;

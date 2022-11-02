within Drone.Mechanical.Propeller.Templates;
partial model Blades
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-118,-16},{-86,16}},origin = {0,0},rotation = 0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(animateSphere = false,animation = false,r = r,m = m) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {20.0,10.0},rotation = 90.0)));
    .Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape2(animation = false,animateSphere = false,r = r,m = m) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {20.0,-12.0},rotation = -90.0)));
    parameter .Modelica.Units.SI.Mass m = 0.01 "Mass of the rigid body ";
    parameter .Modelica.Units.SI.Position r[3] = {0.154,0,0};
equation
    connect(frame_a,bodyShape.frame_a) annotation(Line(points = {{-102,0},{19.999999999999996,0}},color = {95,95,95}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Drone/Resources/Propeller.png",origin={1,0},extent={{99.28089887640448,-99.31978759819195},{-99,100}})}));
end Blades;

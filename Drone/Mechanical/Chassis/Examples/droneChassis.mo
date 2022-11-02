within Drone.Mechanical.Chassis.Examples;
model droneChassis
    extends .Drone.Mechanical.Chassis.Templates.DroneChassis(bodyShape(useQuaternions = true),bodyShape2(useQuaternions = true),bodyShape3(useQuaternions = true),bodyShape4(useQuaternions = true),bodyCylinder(useQuaternions = true));
    .Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(animation = false,r = {-0.27,0,-0.2},angle = 90) annotation(Placement(transformation(extent = {{0.0,30.0},{20.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation2(animation = false,n = {0,1,0},angle = 45) annotation(Placement(transformation(extent = {{40.0,30.0},{60.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(shapeType = "modelica://Drone/Resources/DroneChassis.glb",length = 1.025e-3,width = 1.025e-3,height = 1.025e-3,extra = 1,r_shape = {0,0,0},lengthDirection = {1,0,0}) annotation(Placement(transformation(extent = {{80.0,30.0},{100.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(bodyCylinder.frame_a,fixedRotation.frame_a) annotation(Line(points = {{22,0},{0,0},{0,40}},color = {95,95,95}));
    connect(fixedRotation.frame_b,fixedRotation2.frame_a) annotation(Line(points = {{20,40},{40,40}},color = {95,95,95}));
    connect(fixedRotation2.frame_b,fixedShape.frame_a) annotation(Line(points = {{60,40},{80,40}},color = {95,95,95}));
end droneChassis;

within Drone.Mechanical.Chassis;
model BasicChassis
    extends .Drone.Mechanical.Chassis.Template.DroneChassis;
    .Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(animation = false,r = {-0.27,0,-0.2},angle = 90) annotation(Placement(transformation(extent = {{20.0,30.0},{40.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation2(n = {0,1,0},angle = 45,animation = false) annotation(Placement(transformation(extent = {{58,30},{78,50}},origin = {0,0},rotation = 0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(
    shapeType="modelica://Drone/Images/9.stl",                                                                            length = 1.025e-3,width = 1.025e-3,height = 1.025e-3,extra = 1) annotation(Placement(transformation(extent = {{82.0,10.0},{102.0,30.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(bodyCylinder.frame_a,fixedRotation.frame_a) annotation(Line(points = {{40,-10},{10,-10},{10,40},{20,40}},color = {95,95,95}));
    connect(fixedRotation.frame_b,fixedRotation2.frame_a) annotation(Line(points = {{40,40},{58,40}},color = {95,95,95}));
    connect(fixedRotation2.frame_b,fixedShape.frame_a) annotation(Line(points = {{78,40},{80,40},{80,20},{82,20}},color = {95,95,95}));
end BasicChassis;

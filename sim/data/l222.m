% 用宽度为12添加两条直线道路，两端使用道路中心点。在第一条笔直的道路两侧加护栏，并添加两辆车在路上
scenario = drivingScenario("SampleTime",0.5);
roadcenters = [700 0 0; 100 0 0];
sr1 = road(scenario,roadcenters);
barrier(scenario,sr1)
barrier(scenario,sr1,'RoadEdge','left')
roadcenters = [400 400 0; 0 0 0];
road(scenario,roadcenters,12);
v1 = vehicle(scenario,"ClassID",1,"Position",[0 0 0],"Yaw",45);
vehicle(scenario,"ClassID",1,"Position",[400 400 0],"Yaw",45);
plot(scenario)
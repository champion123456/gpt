% 在s形道路上划分三车道,车道线为一条白虚线，一条黄实线，并在路上生成两辆车
scenario = drivingScenario('StopTime',3);
roadcenters = [-35 20 0; -20 -20 0; 0 0 0; 20 20 0; 35 -20 0];
lm = [laneMarking('Solid','Color','w'); ...
    laneMarking('Dashed','Color','w'); ...
    laneMarking('Solid','Color','y'); ...
    laneMarking('Solid','Color','w')];
ls = lanespec(3,'Marking',lm);
road(scenario,roadcenters,'Lanes',ls);
v1 = vehicle(scenario,"ClassID",1,"Position",[-35 20 0]);
v2 = vehicle(scenario,"ClassID",1,"Position",[35 -20 0]);
plot(scenario)
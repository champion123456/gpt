% 生成一条一百米的路，路上有俩人
scenario = drivingScenario;
r=100;
roadCenters = [0 0; r 0];
road(scenario,roadCenters,'Lanes',lanespec(1));
a = actor(scenario,'ClassID',4,'Length',0.24,'Width',0.45,'Height',1.7);
a.Position = [unifrnd(0,r) 2 0];
b = actor(scenario,'ClassID',4,'Length',0.24,'Width',0.45,'Height',1.7);
b.Position = [unifrnd(0,r) -2 0];


% 生成一段54m的路和两辆车
scenario = drivingScenario;
roadCenters = [0 0; 54 0];
road(scenario, roadCenters, 'Lanes', lanespec(2));

v1 = vehicle(scenario, 'ClassID', 1);
v2 = vehicle(scenario, 'ClassID', 1);

% 调整第二辆车的初始位置
v2.Position = [10 2 0]; % 根据需要调整位置坐标
% 展示场景
plot(scenario,'RoadCenters','on');
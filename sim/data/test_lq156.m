% 生成一个长60m的环形路口和一辆车
scenario = drivingScenario;
roadCenters = [-10 -10
                10 -10
                10  10
               -10  10
               -10 -10];
road(scenario, roadCenters, 'lanes', lanespec(2));
% 定义具有每个出口两条车道的环形交叉口。
road(scenario, [-42   0; -15   0],'lanes', lanespec([2 2]));
% 添加一辆车
v = vehicle(scenario,'ClassID',1);
% 根据需要调整位置坐标
v.Position = [-30 -5 0];
% 展示场景
plot(scenario,'RoadCenters','on');
% results from RD calculations from runSyntheticExp.py with rRD as argument
% in main
RD =[1	0.904515056	0.78750923	0.612285175	0.445511225	0.154250852	0.034493535	0.009290135	0.0333494	0.116675336	0.439051186];
% results from RD calculations from runSyntheticExp.py with rND as argument
% in main
ND = [1	0.83386858	0.668981224	0.473577353	0.262483372	0.180440216	0.268986561	0.446569552	0.677643356	0.836407552	0.96739292];
% results from RD calculations from runSyntheticExp.py with rKL as argument
% in main
KL =[1	0.598919355	0.382994925	0.176479792	0.07692079	0.035710427	0.07602358	0.205086106	0.356464439	0.605287804	0.894524371];
X = [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 0.98];
% Plot the data
plot(X,RD,X,ND,X,KL);
legend('RD','ND','KL');
xlabel('mixing proportions');
ylabel('fairness measure values');

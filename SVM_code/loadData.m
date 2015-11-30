function [data1,data2,data3,data4,data5,data6] = loadData()
load('../data/original_FungHoiKi.mat');
data1 = featureExtract(data);
data1 = [data1 label];

load('../data/original_GengXu.mat');
data2 = featureExtract(data);
data2 = [data2 label];

load('../data/original_WangJianXun.mat');
data3 = featureExtract(data);
data3 = [data3 label];

load('../data/original_LuCheukTing.mat');
data4 = featureExtract(data);
data4 = [data4 label];

load('../data/original_SiuManChun.mat');
data5 = featureExtract(data);
data5 = [data5 label];

load('../data/original_LokKwongWai.mat');
data6 = featureExtract(data);
data6 = [data6 label];
end
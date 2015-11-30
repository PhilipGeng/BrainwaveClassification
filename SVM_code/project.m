clear all; close all;
[data1,data2,data3,data4,data5,data6] = loadData();
right = 0;%counter
total = 0;%counter
    [traindata,testdata] = randomSplit(data2,0.8);
    
    traindata = traindata;
    testdata = testdata;

    shape = size(testdata);
    numofcol = shape(2);
    numofrow = shape(1);

    svmmodel = svmtrain(traindata(:,1:numofcol-1),traindata(:,numofcol));

    predlabel = [];
    for i = 1:1:numofrow
        total = total + 1;%counter
        predlabel = svmclassify(svmmodel,testdata(i,1:numofcol-1));
        if(testdata(i,numofcol)==predlabel) %if the same
            right = right + 1;%counter
        end
    end
total
correct_rate = right/total
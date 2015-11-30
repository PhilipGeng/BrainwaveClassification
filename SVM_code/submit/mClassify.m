function label = mClassify( svmtruct, data )
%MCLASSIFY Summary of this function goes here
%   Detailed explanation goes here
    data = mNormalize(data);
    label = svmclassify(svmtruct, data);

end


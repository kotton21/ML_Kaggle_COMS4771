function [ indexed_data, master ] = index_data( data )
%index_data takes a table input and indexes the data such that 
% 'indexed_data' is a numeric matrix whose values represent row
% numbers in 'master'

% Example: [indexed_train,master_train] = index_data(data(2:end,1:end));
%   returns the indexed training dataset for ease of use, and the master
%   array representing the original values of the training dataset.

    [M,N] = size(data);
    master = [];
    for column=1:N
        %column
        [C,IA,IC] = unique(data(:,column));
        indexed_data(:,column) = IC + size(master,1);
        master = vertcat(master, table2cell(C));
    end
end


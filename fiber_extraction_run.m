clc
clear all
close all

folder = 'C:\Users\User\Documents\33';
fileList = dir(fullfile(folder, '*RH_UNC.dat'));

healthy_list = [];
disease_list = [];

for i = 1:5
    filename = fullfile(folder, fileList(i).name);
    file_info = read_fiber(filename);
    healthy_list(i) = file_info.FiberNr;
    healthy_average = mean(healthy_list);
    healthy_std = std(healthy_list);
    healthy_median = median(healthy_list);
    disp(['Number of streamlines for healthy individual ', fileList(i).name, ': ', num2str(file_info.FiberNr)]);
end

for i = 6:length(fileList)
    filename = fullfile(folder, fileList(i).name);
    file_info = read_fiber(filename);
    disease_list(i-5) = file_info.FiberNr;
    disease_average = mean(disease_list);
    disease_std = std(disease_list);
    disease_median = median(disease_list);
    disp(['Number of streamlines for disease individual ', fileList(i).name, ': ', num2str(file_info.FiberNr)])
end

disp(['Average number of streamlines for healthy group: ', num2str(healthy_average)])
disp(['Median of streamlines for healthy group: ', num2str(healthy_median)])
disp(['Standard deviation of streamlines for healthy group: ', num2str(healthy_std)])
disp(['Average number of streamlines for disease group: ', num2str(disease_average)])
disp(['Median of streamlines for disease group: ', num2str(disease_median)])
disp(['Standard deviation of streamlines for disease group: ', num2str(disease_std)])
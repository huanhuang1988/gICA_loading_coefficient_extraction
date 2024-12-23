clc;
clear;
close all;

% Define the path to the NIfTI file
niiFilePath = '**_ica_subject_loadings.nii';

% Extract information about the NIfTI file
niiInfo = niftiinfo(niiFilePath);

% Display general information about the NIfTI file
disp('NIfTI File Information:');
disp(niiInfo);

% Extract the image data from the NIfTI file
niiData = niftiread(niiFilePath);

% Display some basic information about the extracted data
disp('Data dimensions:');
disp(size(niiData));

% Reshape the data into a 188x20 matrix
% The data is currently in [188 1 20] shape, so we need to permute and reshape
reshapedData = reshape(niiData, 188, 20);

% Display the size of the reshaped data to confirm
disp(['Reshaped data size: ', mat2str(size(reshapedData))]);

% Save the reshaped data to a .mat file
outputFilePath = '**_ica_subject_loadings.mat';
save(outputFilePath, 'reshapedData');

% Define the CSV output file path
csvOutputFilePath = '**_ica_subject_loadings.csv';
% Save the reshaped data to a CSV file using dlmwrite
dlmwrite(csvOutputFilePath, reshapedData);

disp(['Reshaped data saved to ', outputFilePath]);
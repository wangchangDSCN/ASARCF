% This is the demo script for ASRCF

clear;
clc;
close all;
setup_path();

% get seq information
%base_path  = './seq';
base_path = 'F:\data_seq';
video_path = [base_path '\' 'Lemming'];

[seq, ground_truth] = load_video_info(video_path,'Lemming');
seq.startFrame = 1;
seq.endFrame = seq.len;
seq.ground_truth=ground_truth;

% Run ASRCF- main function
results = run_ASRCFNN(seq, video_path);

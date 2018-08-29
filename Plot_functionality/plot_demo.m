
%% Arbitrary arrays (Must have same length as time)
time = [1:10]
theta = time.*time
phi = 100./time


% The values along the y-axis have to be in at "Tuple"

% A =plot_function(time,{time, theta, phi,[theta; phi]});

%% Inputs for the plot-function
% The values along the y-axis have to be in at "Tuple"

phi; % The values can be arrays with the same length as time
[ theta; phi]; % or a List of arrays for multiple lines in the same plot
yValues = { phi,   theta,   [theta; phi]} % If you want multiple curves in the same graph, send them in as a list
            
        
        
        
% Same, but this one is optional        
yLabels = {"Theta"; "Phi"; "Both"};
plotLegends = { "Time",
            "Speed", 
            ["Speed", "Velocity"] % Can also be lists if there are multiple curves 
            }

        

% A =plot_function(time, yValues, yLabels, plotLegends);

A =plot_function(time, yValues);
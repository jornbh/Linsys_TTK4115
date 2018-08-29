%% Just press f5 to run everything, and read the section that has something you need

% Press (ctrl+enter) to run the section your cursor is currently in ( Marked in yellow)
clear all
close all
%% Initialize some arrays, that can be used
X1 = [1:100]; 
Y1 = sin(X1./10); 

% The samples have different length
X2 = [1:0.5:100];
Y2= 1.-(1./X2);




%% Basic plot 




%   All code you write betweeen hold on and hold off 
%   will apply to the same plot
hold on  

% (Optional) Add a title 
title("Basic plot"); 


plot(X1, Y1); % Plot the function
hold off

%% Legends and labels

figure; % Calling figure => Plot/write in a new window
hold on
title("Set Legends and labels with the commands they display");

plot( X1, Y1);

% Set desctiptions on the axis
xlabel(" xlabel('text')");
ylabel("ylabel('text')");

% Legend must come after you call plot()
% GIves a name to the plotted lines
%   
legend(["legend('text')"]); 
hold off



%% Ploting values against each other

figure
hold on 
title("Ploting values against each other (1)");
%Methon 1:
    %Give the inputs in pairs
    % X1 and X2 can have different lengths as long as the length is the
    % same for between X1 and Y1 (and so on)
plot(X1, Y1, X2, Y2);
legend(["It is fine to have more plots that legends"]);
hold off



figure;
hold on 

title("Ploting values against each other (2)");
%Method 2:
    % GIve the X-values first and then a list of all Y-values 
    %(Separate with ; )
plot( X1, [Y1;Y1.*2] ); 
legend(["It is also fine to have", "More legends than plots", "Will not show up"]);

hold off




%% SUBPLOTS

figure;
hold on
title("Subplots");


% Subplot(n, m, i)
    %   Divides the window into a grid of n * m plots
    %   i is the position of the plot (left to right, top to bottom)  

    
subplot(2, 1, 1);
plot(X1, Y1);

% They work just like normal between hold on and hold off
subplot(2,1, 2); 
hold on
plot(X2, Y2);
legend("Subplot 2");
xlabel("X"); 
ylabel("Y"); 

legend("Title is not working");
hold off
hold off



%% Colours and styles
figure
hold on 
title("Colours and styles");
plot(X1, Y1, "r", X2, Y2, "b--", X1, Y1.*(-1) , "pk");
% Add a string after X and Y to change colour and style
% The first letter is colour
    % The colours are:
        % blue      b
        % black     k	
        % red       r	
        % green     g	
        % yellow	y	
        % cyan      c	
        % magenta	m	
        % white     w
    
% The next letters are for style:
    % Line-types
        % '-'       Whole line(Default)
        % '--'      Dasked line
        % ':'       Dotted line
        % '-.'      Dasshed and dotted line
    % Marking data-points (Just some of them)
        % 'o'   circle
        % 'x'   cross
        % '*'   asterisk
        % 'p'   star (pentagram)

 
    
 

legend(["Add a string after X1 and Y1 to give colour or style", "string = b--","Read comments for more"]);


hold off;

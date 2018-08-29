function  returnValue = plot_function(time,  variableList, varargin )
    %% Extract variable arguments => (variableList, nameList, legendList) are all valid
    if nargin >= 3
        nameList = varargin{1};
    else
        nameList = {};
    end;
    
    if nargin >= 4
        legendList = varargin{2};
    else
        legendList = {};
    end
    
    
    % Number of plots = number of elements in the "Tuple"
    nPlots = size(variableList,2);


    
    
    hold on
    
    for i = 1:nPlots
        %% Extract the arguments
        yAxis = variableList{i};
        
        

        if i <=size(nameList, 1)
            disp("Correct input\n")
            disp(nameList)
            yLabel = nameList{i};
            disp(yLabel);
        else
            disp("Wrong input\n")
            yLabel = '';
        end;
        
        
        if i <=size(legendList, 1)
            plotLegend = legendList{i};
        else
            plotLegend = "off"; % If legend is called whith the argument 'off', the legend is removed
        end;        
        
        
        
        %% Plot the variable
        s =subplot(nPlots, 1, i);
        colours = { 'ko-','ro-', 'bo-','mo-','go-', 'co-','yo-'};
        hold on
        for i = 1:size(yAxis,1)
            plot(s, time, yAxis(i,:), colours{1+mod(i,8)})
        end;
        hold off
        
        xlabel("Time[s]");   
%         set(get(gca,'YLabel'),'Rotation',0);       
%         set(get(gca,'YLabel'),'Position', [0, 0]);
                % I can't figure out
                %         how position and rotation works ...
        ylabel(yLabel);
        legend(plotLegend);
        
    end;
    
    hold off
    returnValue = true;
    

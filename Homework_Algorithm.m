%Homework Algorithm by Krista Grossmann
clear
clc
Yes=1;
No=0;
Today=-1;
Yesterday=-2;
Tomorrow=2;
Overmorrow=3;
Is_There_Homework = menu('Was homework assigned in within the last month?'...
    , 'Yes', 'No');
if Is_There_Homework == 1
    Completion = menu('Has all of it been submitted?','Yes', 'No');
    if Completion == 1
        Verify = menu('Are you sure?', 'Yes', 'No');
        if Verify == 1
            disp('Congrats, you have no homework!');
        else
            Due_Date = menu('When is the soonest any of it is due?', 'Today', 'Tomorrow', 'Overmorrow',...
           'Yesterday');
            if Due_Date == -2
                Quantity = input('How much homework was it?');
                Decision1= fprintf('You should work on %d homework first, come back later.', Quantity);
            elseif Due_Date == -1
                Quantity = input('How much homework is it?');
                Decision2 = fprintf('You should work on %d homework first, when its done for today, come back.', Quantity);
            elseif Due_Date == 2
                disp("At the moment you're ahead. Work on the easy stuff first.");
            else
                disp("It is up to you, but the more you get done now, the more you can do later.");
            end
        end
    else
        Due_Date = menu('What is the soonest any of it is due?', 'Today', 'Tomorrow', 'Overmorrow',...
           'Yesterday');
            if Due_Date == -2
                Quantity = input('How much homework was it?');
                Decision1= fprintf('You should work on %d homework first, come back later.', Quantity);
            elseif Due_Date == -1
                Quantity = input('How much homework is it?');
                Decision2 = fprintf('You should work on %d homework first, when its done for today, come back.', Quantity);
            elseif Due_Date == 2
                disp("At the moment you're ahead. Work on the easy stuff first.");
            else
                disp("It is up to you, but the more you get done now, the more you can do later.");
            end
    end
else 
    disp("Why are you doing this? There isn't homework");
end

function nd = days(mo, da, leap)
%days determines the number of days in a year
% Inputs:
%   mo - an integer representing the month of the year where mo<=12
%   da - an integer representing day in the month
%   leap - if leap year exists enter 1, otherwise leap == 0
% Outputs:
%   nd - a scalar of how many days have elapsed
m = [31 28 31 30 31 30 31 31 30 31 30 31];
if mo>12
    error('Month input must be less than 12');
elseif mo<=0 || da<= 0 
    error('Month and day inputs must be nonzero.');   
elseif mo==2 && da>29
    error('There are only 28-29 days in February, use a real date.');
elseif leap==1
    if mo>2
        nd=sum(m(1:(mo-1)));
        nd=nd+da;
        nd=nd+1;
    else
        nd=sum(m(1:(mo-1)));
        nd=nd+da;
    end
else
    if leap~=1 && leap~=0
        error('leap must be 0 if not leap-year or 1 if leap-year');
    else
        if mo==1
            nd=da;
        else
            nd=sum(m(1:(mo-1)));
            nd=nd+da;
        end
    end
end
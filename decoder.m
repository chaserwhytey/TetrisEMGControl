if emg_inputs(1,i) > 5 && ~high1
    t0 = clock;   
    high1 = 1;
end

if emg_inputs(1,i) < 5 && etime(clock, t0) < 1 && high1
    rightarrow = 1;
    high1 = 0;
else
    rightarrow = 0;
end

if emg_inputs(2,i) > 5 && ~high2
    high2 = 1;
    t1 = clock;
end

if emg_inputs(2,i) < 5 && etime(clock, t0) < 1 && high2
    leftarrow = 1;
    high2 = 0;
else
    leftarrow = 0;
end

if emg_inputs(1,i) < 5 && etime(clock, t0) > 1 && high1
    uparrow = 1;
    high1 = 0;
else
    uparrow = 0;
end

if emg_inputs(2,i) < 5 && etime(clock, t0) > 1 && high2
    downarrow = 1;
    high1 = 0;
else
    downarrow = 0;
end

if ~high1
    t0 = clock;
end
if ~high2
    t1 = clock;
end
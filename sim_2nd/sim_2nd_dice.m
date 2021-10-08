count = 0;
onecheck = ones(1,600000);
round = 100000;
for i = 1:round
    dice = randi([1 6],1,600000);
    check = sum(dice==onecheck);
    if check == 100000;
        count = count + 1;
    end
end
A=count/round;
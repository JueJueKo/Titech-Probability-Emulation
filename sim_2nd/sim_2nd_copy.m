count = 0;
for i = 1:30000
    dice = randi([0 1],1,1000000);
    check = sum(dice);
    if check == 500000
        count = count + 1;
    end
end
A=count/30000;
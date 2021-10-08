clear;clc;

ropenumax = 500;
expta = zeros(ropenumax,1);
round = 10000;

for ropenum = 1:ropenumax

head = [1:ropenum].';
count = 0;

for j = 1:round
    tail = randperm(ropenum).';
    state = [head,tail];
    state = randomize(state);
    ite = 0;
    sum1 = sum(state(:,1));
    while ite < ropenum
        ite=ite+1;
        if state(ite,1)~=0
            state= findloop(state,ite);
            count = count + 1;
        end
    end
end
expta(ropenum) = count / round;
end
ropenum = [1:ropenumax];
expta = expta.';
bar(ropenum,expta);



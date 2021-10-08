ropenum = 50;
head = [1:ropenum].';
round = 1000000;
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

expta = count / round


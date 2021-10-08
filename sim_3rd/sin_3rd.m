head = [1:50].';
round = 1000000;
count = 0;

for j = 1:round
    tail = randperm(50).';
    state = [head,tail];
    ite = 0;
    sum1 = sum(state(:,1));
    while ite < 50
        ite=ite+1;
        if state(ite,1)~=0
            state= findloop(state,ite);
            count = count + 1;
        end
    end
end

expta = count / round
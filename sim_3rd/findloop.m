function state = findloop(instate,ite)
   
    startp = instate(ite,1);
    instate(ite,1) = 0;
    cindex = instate(ite,2);
    shift = 2;
    while startp~=cindex
        instate(ite,shift)=0;
        [ite,shift] = find(instate == cindex);
        instate(ite,shift)=0;
        shift = 3-shift;
        cindex = instate(ite,shift);
    end
    instate(ite,shift) = 0;
    state = instate;
end
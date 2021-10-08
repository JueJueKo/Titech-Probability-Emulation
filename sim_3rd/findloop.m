function state = findloop(instate,ite)

    instate(ite,1) = 0;
    startp = ite;
    cindex = instate(ite,2);
    while ite~=cindex
        instate(cindex,1)=0;
        cindex = instate(cindex,2);
    end

    state = instate;
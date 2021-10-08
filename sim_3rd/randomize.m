function state = randomize(instate)

    row = size(instate,1);
    col = size(instate,2);
    round = col * row;
    for i = 1:round
        row1 = randi(row);
       row2 = randi(row);
        col1 = randi(col);
       col2 = randi(col);
      temp = instate(row1,col1);
      instate(row1,col1) = instate(row2,col2);
      instate(row2,col2) = temp;
    end

    state = instate;

end


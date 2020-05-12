function [ X,Y ] = queen_move( table, pos )

    %Начинаем с обычных ходов, по аналогии x --- потенциальные ходы без атак, а y --- ходы с атаками%
    i =1;
    while table(pos(1)-i,pos(2)-i) == 0
        X = [X,[pos(1)-i,pos(2)-i]];
        i=i+1;
    end
    y = square_check(table, [pos(1)-i,pos(2)-i]);
    for k = 1:size(table,1)
        if [pos(1)-i-1,pos(2)-i-1] == y (k,:)
            Y = [Y ,[pos(1)-i-1,pos(2)-i-1]];
        end
    end
    i =1;
    while table(pos(1)+i,pos(2)-i) == 0
        X = [X,[pos(1)+i,pos(2)-i]];
        i=i+1;
    end
    y = square_check(table, [pos(1)+i,pos(2)-i]);
    for k = 1:size(table,1)
        if [pos(1)+i+1,pos(2)-i-1] == y (k,:)
            Y = [Y ,[pos(1)+i+1,pos(2)-i-1]];
        end
    end
    i =1;
    while table(pos(1)+i,pos(2)+i) == 0
        X = [X,[pos(1)+i,pos(2)+i]];
        i=i+1;
    end
     y = square_check(table, [pos(1)+i,pos(2)+i]);
    for k = 1:size(table,1)
        if [pos(1)+i+1,pos(2)+i+1] == y (k,:)
            Y = [Y, [pos(1)+i-1,pos(2)+i+1]];
        end
    end
    i =1;
    while table(pos(1)-i,pos(2)+i) == 0
        X = [X,[pos(1)-i,pos(2)+i]];
        i=i+1;
    end
       y = square_check(table, [pos(1)+i,pos(2)+i]);
    for k = 1:size(table,1)
        if [pos(1)-i-1,pos(2)+i+1] == y (k,:)
            Y = [Y [pos(1)-i-1,pos(2)+i+1]];
        end
    end
    i = 1;
    X(1,:)=[];
    
    
end


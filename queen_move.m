function [ X,Y ] = queen_move( table, pos )


X = [0, 0]; 
Y = [0, 0];
is = table(pos(1),pos(2))
    %Начинаем с обычных ходов, по аналогии x --- потенциальные ходы без атак, а y --- ходы с атаками%
    i =1;
    while pos(1)-i < 9 && pos(1)-i > 0 && pos(2)-i < 9 && pos(2)-i > 0 &&  table(pos(1)-i,pos(2)-i) == 0
        X = [X;[pos(1)-i,pos(2)-i]];
        i=i+1;
    end
    if pos(1)-i < 9 && pos(1)-i > 0 && pos(2)-i < 9 && pos(2)-i > 0
        table_1=table;
        table_1(pos(1),pos(2))=0;
        table_1(pos(1)-i+1,pos(2)-i+1) = is;
        [x,y] = square_check(table_1, [pos(1)-i+1,pos(2)-i+1]);
        for k = 1:size(y,1)
            if [pos(1)-i,pos(2)-i] == y (k,:)
                Y = [Y ;[pos(1)-i,pos(2)-i]];
            end
        end
    end
    i =1;
    while  pos(1)+i < 9 && pos(1)+i > 0 && pos(2)-i < 9 && pos(2)-i > 0 && table(pos(1)+i,pos(2)-i) == 0
        X = [X;[pos(1)+i,pos(2)-i]];
        i=i+1;
    end
    if pos(1)+i < 9 && pos(1)+i > 0 && pos(2)-i < 9 && pos(2)-i > 0
        table_1=table;
        table_1(pos(1),pos(2))=0;
        table_1(pos(1)+i-1,pos(2)-i+1) = is;
        [x,y] = square_check(table_1, [pos(1)+i-1,pos(2)-i+1]);
        for k = 1:size(y,1)
            if [pos(1)+i,pos(2)-i] == y (k,:)
                Y = [Y ;[pos(1)+i,pos(2)-i]];
            end
        end
    end
    i =1;
    while pos(1)+i < 9 && pos(1)+i > 0 && pos(2)+i < 9 && pos(2)+i > 0 && table(pos(1)+i,pos(2)+i) == 0
        X = [X;[pos(1)+i,pos(2)+i]];
        i=i+1;
    end
    if pos(1)+i < 9 && pos(1)+i > 0 && pos(2)+i < 9 && pos(2)+i > 0
        table_1=table;
        table_1(pos(1),pos(2))=0;
        table_1(pos(1)+i-1,pos(2)+i-1) = is;
        [x,y] = square_check(table_1, [pos(1)+i-1,pos(2)+i-1]);
        for k = 1:size(y,1)
            if [pos(1)+i,pos(2)+i] == y (k,:)
                Y = [Y; [pos(1)+i,pos(2)+i]];
            end
        end
    end
    i =1;
    while pos(1)-i < 9 && pos(1)-i > 0 && pos(2)+i < 9 && pos(2)+i > 0 && table(pos(1)-i,pos(2)+i) == 0
        X = [X;[pos(1)-i,pos(2)+i]];
        i=i+1;
    end
    if pos(1)-i < 9 && pos(1)-i > 0 && pos(2)+i < 9 && pos(2)+i > 0
        table_1=table;
        table_1(pos(1),pos(2))=0;
        table_1(pos(1)-i+1,pos(2)+i-1) = is;
        [x,y] = square_check(table_1, [pos(1)-i+1,pos(2)+i-1]);
        for k = 1:size(y,1)
            if [pos(1)-i,pos(2)+i] == y (k,:)
                Y = [Y ;[pos(1)-i,pos(2)+i]];
            end
        end
    end
    i = 1;
    X(1,:)=[];
    Y(1,:)=[];
end


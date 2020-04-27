function [x, y] = square_check(table, pos) %x --- потециальные ходы, y --- потенциальые атаки%
                                           

x = [0, 0]; %это контрольный ноль (это костыль)%
y = [0, 0];
team = table (pos(1), pos(2));
if team == 1
opposite_team = 2;
else opposite_team = 1;
end



    %Часть с x%
if pos(1)~=1 && pos(1)~=8
if pos(2) ==1 
    if table (pos(1)-1, pos(2)+1) == 0 
        x = [x; [pos(1)-1, pos(2)+1]];
    end
    if table (pos(1)+1, pos(2)+1) == 0 
        x = [x; [pos(1)+1, pos(2)+1]];
    end
end

if pos(2) ==8
    if table (pos(1)-1, pos(2)-1) == 0 
        x = [x; [pos(1)-1, pos(2)-1]];
    end
    if table (pos(1)+1, pos(2)-1) == 0 
        x = [x; [pos(1)+1, pos(2)-1]];
    end
end
if pos(2)~=1 && pos(2)~=8
    if table (pos(1)-1, pos(2)-1) == 0 
        x = [x; [pos(1)-1, pos(2)-1]];
    end
    if table (pos(1)+1, pos(2)-1) == 0 
        x = [x; [pos(1)+1, pos(2)-1]];
    end
    if table (pos(1)-1, pos(2)-1) == 0 
        x = [x; [pos(1)-1, pos(2)+1]];
    end
    if table (pos(1)+1, pos(2)-1) == 0 
        x = [x; [pos(1)+1, pos(2)+1]];
    end
end    
end

if pos(1)==1
    if pos(2) ==1 
     if table (pos(1)+1, pos(2)+1) == 0 
        x = [x; [pos(1)+1, pos(2)+1]];
     end
    end

    if pos(2) ==8
        if table (pos(1)+1, pos(2)-1) == 0 
            x = [x; [pos(1)+1, pos(2)-1]];
        end
    end
end

if pos(1)==8
    if pos(2) ==1 
     if table (pos(1)-1, pos(2)+1) == 0 
        x = [x; [pos(1)-1, pos(2)+1]];
     end
    end

    if pos(2) ==8
        if table (pos(1)-1, pos(2)-1) == 0 
            x = [x; [pos(1)-1, pos(2)-1]];
        end
    end
end

x(1,:)=[];

%Часть с y%
if pos(1)~=1 && pos(1)~=8
if pos(2) ==1 
    if (table (pos(1)-1, pos(2)+1) == opposite_team) && (pos (1)~=2) && (pos (2)~=7)
        if (table (pos(1)-2, pos(2)+2) == 0)
            y =[y;  [pos(1)-1, pos(2)+1]];
        end 
    end
    if (table (pos(1)+1, pos(2)+1) == opposite_team) && (pos (1)~=7)&& (pos (2)~=7)
        if (table (pos(1)+2, pos(2)+2) == 0)
            y = [y; [pos(1)+1, pos(2)+1]];
        end
    end
end 

if pos(2) ==8
    if (table (pos(1)-1, pos(2)-1) == opposite_team) && (pos (1)~=2) && (pos (2)~=2)
        if (table (pos(1)-2, pos(2)-2) == 0) 
            y = [y; [pos(1)-1, pos(2)-1]];
        end
    end
    if (table (pos(1)+1, pos(2)-1) == opposite_team) && (pos (1)~=7)&& (pos (2)~=2)
        if (table (pos(1)+2, pos(2)-2) == 0)
            y = [y; [pos(1)+1, pos(2)-1]];
        end
    end
end
if pos(2)~=1 && pos(2)~=8
    if (table (pos(1)-1, pos(2)-1) == opposite_team)&& (pos (1)~=2)&& (pos (2)~=2)
        if (table (pos(1)-2, pos(2)-2) == 0) 
            y = [y; [pos(1)-1, pos(2)-1]];
        end
    end
    if (table (pos(1)+1, pos(2)-1) == opposite_team) && (pos (1)~=7) && (pos (2)~=2)
        if(table (pos(1)+2, pos(2)-2) == 0)
            y = [y; [pos(1)+1, pos(2)-1]];
        end
    end
    if (table (pos(1)-1, pos(2)-1) == opposite_team) && (pos (1)~=2)&& (pos (2)~=7)
        if (table (pos(1)-2, pos(2)+2) == 0)
            y = [y; [pos(1)-1, pos(2)+1]];
        end
    end
    if (table (pos(1)+1, pos(2)-1) == opposite_team) && (pos (1)~=7)&& (pos (2)~=7)
        if (table (pos(1)+2, pos(2)+2) == 0)
            y = [y; [pos(1)+1, pos(2)+1]];
        end
    end
end    
end

if pos(1)==1
    if pos(2) ==1 
     if (table (pos(1)+1, pos(2)+1) == opposite_team) &&(table (pos(1)+2, pos(2)+2) == 0) 
        y = [y; [pos(1)+1, pos(2)+1]];
     end
    end

    if pos(2) ==8
        if (table (pos(1)+1, pos(2)-1) == opposite_team) &&(table (pos(1)+2, pos(2)-2) == 0) 
            y = [y; [pos(1)+1, pos(2)-1]];
        end
    end
end

if pos(1)==8
    if pos(2) ==1 
     if (table (pos(1)-1, pos(2)+1) == opposite_team) && (table (pos(1)-2, pos(2)+2) == 0)
        y = [y; [pos(1)-1, pos(2)+1]];
     end
    end

    if pos(2) ==8
        if (table (pos(1)-1, pos(2)-1) == opposite_team) && (table (pos(1)-2, pos(2)-2) == 0) 
            y = [y; [pos(1)-1, pos(2)-1]];
        end
    end
end
    
y(1,:)=[];
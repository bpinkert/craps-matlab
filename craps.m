% Name: Ben Pinkert
% Date: 11-19-15
% Purpose: Craps game

% clear command and workspace
clc
clear

% initialize variables
dice1 = 0;
dice2 = 0;
game_over = 0;
total = 0;
roll_number = 1;
you_win = 0;

% loop de loop
while game_over == 0
    dice1 = randi(6);
    dice2 = randi(6);
    total = dice1 + dice2;
    
    fprintf('Roll # %d   total = %d\n', roll_number, total)
    
    switch roll_number 
        case 1 
            if (total == 7 || total == 11)
                you_win = 1;
                game_over = 1;
            elseif (total == 2 || total == 3 || total == 12)
                you_win = 0;
                game_over = 1;
            else 
                make_this = total;
                roll_number = roll_number + 1;
            end
        otherwise
            if (total == 7 || total == 11)
                you_win = 0;
                game_over = 1;
            elseif make_this == total
                you_win = 1;
                game_over = 1;
            else
                roll_number = roll_number + 1;
            end
    end
end
if (you_win == 1)
    fprintf('YOU WIN!!!!\n');
else
    fprintf('YOU LOSE!!!\n');
end

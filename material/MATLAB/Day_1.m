%% Day - 1
%% Variable declaration

a = 1             % MATLAB automatically defines variables as double
b = 4.323
c = [1,2,3,4,5.5]   % A row vector (list) of double. Dimension 1 x 5 (row, column)
d = [1;2.3;3;4;5]   % A column vector (list) of double. Dimension 5 x 1 (row, column)

e = 'a'             % Character
f = 'string'        % A vector of characters

g = true
e = false
%% Print variables

% Print using disp
disp(a);
disp(b);
disp(c);
disp(d);

% Using fprintf (%d denotes a decimal, %f denotes a float, %c denotes a charater and %s a string)
fprintf('a = %d, b = %f, d = %c and e = %s', a, b, e, f);
%% Conditional statements

if g
    disp('g is true!');
end

if e
    disp('e is true');
else
    disp('e is false');
end

if a==1
    disp('a is one');
end

if b ~= 1
    disp('b is not one');
end

switch a
    case 1
        disp('a is one');
    case 0
        disp('a is zero');
    otherwise
        disp('a is not one or zero');
end
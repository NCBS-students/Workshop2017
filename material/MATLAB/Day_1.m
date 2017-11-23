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
%% Find max of a list (solution - 1; code for algorithm in pdf)

number_list = [841238 619645 209407 435618 832714 887185 164080 939827 179879 517613];
max = 0

for curr_num = number_list
    if curr_num>max
        max = curr_num;
    end
end

fprintf('Current number is %d', max);
%% A better max finding solution
% The above method does not work for negative numbers. Below one will work for 
% all real numbers.

number_list = [-630 -260 -298 -538 -176 -596 -23 -693 -791 -271];
max = number_list(1);

for curr_num = number_list
    if curr_num>max
        max = curr_num;
    end
end

fprintf('Current number is %d', max);
%% Is the given number n a prime number?
% Brute force way of solving it.

number = 43.
divisors = 2:number-1;
% assume prime
prime = true;

for curr_divisor = divisors
    if mod(number, curr_divisor) == 0
        prime = false;
        break;    
    end
end

if prime
    fprintf('%d is prime', number);
else
    fprintf('%d is not prime', number);
end
%% Find the first 100 prime numbers

prime_numbers = [];        % Starting with an empty vector
curr_number = 2;    % Starting number

while(length(prime_numbers) <= 100)    % Keep running until number of primes is 100
    % Copy the above code (careful with the variable names)
    divisors = 2:curr_number-1;
    
    % assume prime
    prime = true;
    
    for curr_divisor = divisors
        if mod(curr_number, curr_divisor) == 0
            prime = false;
            break;
        end
    end
    
    if prime
        prime_numbers = [prime_numbers, curr_number];
    end
    
    curr_number = curr_number + 1;    
end

disp(prime_numbers);
%% 
% There are smarter ways of doing this. Try it out.
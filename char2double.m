% FUNCTION CODE STARTS AT LINE 23
% @author Vishruti Ranjan (for EE3731C CA2)
%
% This function char2double.m convert a char array to a double array. More specifically,
% Character 'a' or 'A' should be mapped to 1
% Character 'b' or 'B' should be mapped to 2
% ...
% Character 'z' or 'Z' should be mapped to 26
%
% All other characters and punctuations should be mapped to 27.
%
% Example:
% 	double_array = char2double('abc') gives [1 2 3]
% 	double_array = char2double('ABC') gives [1 2 3]
%   double_array = char2double('A YZ') gives [1 27 25 26]
%
% Input:
%   char_array = 1 x N character array
%
% Output:
%   double_array = 1 x N double array

function double_array = char2double(char_array)
    double_array = double(lower(char_array));
    for n = 1 : length(double_array)
        if (double_array(n) < 97 || double_array(n) > 122)
            double_array(n) = 27;
            continue;
        end
        double_array(n) = double_array(n) - 96;
    end
end

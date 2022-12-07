% FUNCTION CODE STARTS AT LINE 22
% @author Vishruti Ranjan (for EE3731C CA2)
%
% This function double2char.m convert a double array to a character array. More specifically,
% 1 should be mapped to 'a'
% 2 should be mapped to 'b'
% ...
% 26 should be mapped to 'z'
%
% 27 should be mapped to char(32), which corresponds to white space
%
% Example:
%   char_array = double2char([1 2 3]) gives 'abc'
%   char_array = double2char([1 27 26 1) gives 'a za'
%
% Input:
%	double_array = 1 x N double array
%
% Output:
%   char_array = 1 x N character array

function char_array = double2char(double_array)
    for n = 1 : length(double_array)
        if (double_array(n) == 27)
            double_array(n) = 32;
            continue;
        end
        double_array(n) = double_array(n) + 96;
    end
    char_array = char(double_array);
end
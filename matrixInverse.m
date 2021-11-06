## Copyright (C) 2021 ekechi
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} matrixInverse (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ekechi <ekechi@LAPTOP-BMJCOFP2>
## Created: 2021-10-28

function retval = matrixInverse (matrix)
P=round(det(matrix)*inv(matrix));
a=det(matrix);
num=[1:26];
res = mod(a*num, 26);
res = round(res.* 100) ./ 100;
b=find(res==1); 
key=mod(b*P,26);

retval = key;
endfunction
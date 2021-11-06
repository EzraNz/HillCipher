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
## @deftypefn {} {@var{retval} =} matrixToPhrase (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ekechi <ekechi@LAPTOP-BMJCOFP2>
## Created: 2021-10-28

function retval = matrixToPhrase (encodedMatrix, letterMap)
  encodedText = "";
  count = 0;
  
  for number = reshape(encodedMatrix, 1, [])
    for k = keys(letterMap)
      thekey = k{1};
      letterMap(thekey);
      number;
      if (letterMap(thekey) == number)
        encodedText = strcat(encodedText, thekey);
      endif
    endfor
  endfor
  
  retval = encodedText;
endfunction
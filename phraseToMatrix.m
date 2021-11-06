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
## @deftypefn {} {@var{retval} =} phraseToMatrix (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ekechi <ekechi@LAPTOP-BMJCOFP2>
## Created: 2021-10-28

function retval = phraseToMatrix (phraseToParse, letterMap)
  phraseToParse(phraseToParse == " " ) = "";
  tempText = "";
  phrase = [];
  
  for letter = phraseToParse
    if (isKey(letterMap, letter))
      phrase = [phrase; letterMap(letter)];
    endif
  endfor
    
  count = 0;
  phraseMatrix = [];
  tempMatrix = [];
  
  lengthOfPhrase = length(phraseToParse);
  
  while (mod(lengthOfPhrase, 3) != 0)
    phrase = [phrase; 23];
    ++lengthOfPhrase;
  endwhile
  
  for i = 1:length(phrase)
    if (mod(count++, 3) == 0)
      phraseMatrix = [phraseMatrix tempMatrix];
      tempMatrix = [];
    endif
    tempMatrix = [tempMatrix; phrase(i)];
  endfor
  phraseMatrix = [phraseMatrix tempMatrix];
  
  retval = phraseMatrix;
endfunction
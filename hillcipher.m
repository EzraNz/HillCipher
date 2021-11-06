  ## Variables
  A = [3, 10, 20; 20, 9, 17; 9, 4, 17];
  invA = [11, 22, 14; 7, 9, 21; 17, 0, 3]; ## Inverse of A
  i = 1;
  
  letterMapKeys = cell(1,26);
  letterMapValues = cell(1,26);   
  
  for letter = "a":"z"
    letterMapKeys{i} = toupper(letter);
    letterMapValues{i} = i-1;
    ++i;
    endfor
   letterMap = containers.Map(letterMapKeys, letterMapValues);
  
  
  ## Question One
  questionOneKeys = {"A", "B", "C", "D"};
  questionOneValues = {[0;0], [0;0], [0;0], [0;0]};
  
  questionOneMap = containers.Map(questionOneKeys, questionOneValues);
  
  matrixOneQ1 = [11,22,14;7,9,21;17,0,3];
  matrixTwoQ1 = [3,10,20;20,9,17;9,4,17];
  
  questionOneMap('A') = mod(17+24, 26);
  questionOneMap('B') = mod(20*5, 26);
  questionOneMap('C') = mod((7*[4;12;21])-(3*[14;5;16]),26);
  questionOneMap('D') = mod(matrixOneQ1*matrixTwoQ1, 26);
  
  fprintf('QUESTION ONE \n')
  for k = keys(questionOneMap)
    thekey = k{1};
    disp(['The result for 1.' thekey ' is ' ]);
    disp(questionOneMap(thekey))
    fprintf('\n')
   end
   
   fprintf('\n')
   
   ## Question Two
   questionTwoPhrase = "BUY TEN SHARES TOMORROW";
   
   phraseMatrixQ2 = phraseToMatrix(questionTwoPhrase, letterMap);
   encodedMatrixQ2 = mod(A*phraseMatrixQ2, 26); 
   encodedTextQ2 = matrixToPhrase(encodedMatrixQ2, letterMap);
   
   fprintf('QUESTION TWO \n')
   disp(['The original text is ' questionTwoPhrase]);
   fprintf('\n')
   disp(['The encoded text is ' encodedTextQ2]);
   
   fprintf('\n')
   
   
   ## Question Three
   questionThreePhrase = "KSKBHXKDYRVTKRZTQE";
   
   phraseMatrixQ3 = phraseToMatrix(questionThreePhrase, letterMap);
   decodedMatrixQ3 = mod(invA*phraseMatrixQ3, 26);
   decodeTextQ3 = matrixToPhrase(decodedMatrixQ3, letterMap);
   
   fprintf('QUESTION THREE \n')
   disp(['The original text is ' questionThreePhrase]);
   fprintf('\n')
   disp(['The decoded text is ' decodeTextQ3]);
   
   fprintf('\n')
   
   
   ## Question FOUR    
   Q4A = [11, 20, 20; 2, 1, 24; 9, 3, 3];
   Q4B = [2, 5, 0; 22, 9, 4; 17, 21, 8];
   Q4C = [3, 1, 24; 20, 11, 25; 12, 4, 19];
   
   fprintf('QUESTION FOUR \n')   
   if (mod(det(Q4A), 13) != 0 && mod(det(Q4A), 2) != 0)
     disp(['The matrix in 4A is invertible']);
     fprintf('\n')
   else
     disp(['The matrix in 4A is not invertible' ]);
     fprintf('\n')
   endif
   
   if (mod(det(Q4B), 13) != 0 && mod(det(Q4B), 2) != 0)
     disp(['The matrix in 4B is invertible']);
     fprintf('\n')
   else
     disp(['The matrix in 4B is not invertible' ]);
     fprintf('\n')
   endif
   
   if (mod(det(Q4C), 13) != 0 && mod(det(Q4C), 2) != 0)
     disp(['The matrix in 4C is invertible']);
     fprintf('\n')
   else
     disp(['The matrix in 4C is not invertible' ]);
     fprintf('\n')
   endif

   
   ## Question FIVE
   B = [4, 9, 15; 15, 17, 6; 24, 0, 17];
   invB = matrixInverse(B);
   
   questionFivePhraseA = "MARY HAD A LITTLE LAMB";
   questionFivePhraseD = "FVRMTGJTJJRMULSIRGBEMRNVFRC";
   
   phraseMatrixQ5A = phraseToMatrix(questionFivePhraseA, letterMap);
   encodedMatrixQ5 = mod(B*phraseMatrixQ5A, 26); 
   encodedTextQ5 = matrixToPhrase(encodedMatrixQ5, letterMap);
  
   phraseMatrixQ5D = phraseToMatrix(questionFivePhraseD, letterMap);
   decodedMatrixQ5 = mod(invB*phraseMatrixQ5D, 26);
   decodeTextQ5 = matrixToPhrase(decodedMatrixQ5, letterMap);
   
   detB = det(B);
   detBmod13 = num2str(mod(detB, 13));
   detBmod2 = num2str(mod(detB, 2));

   fprintf('QUESTION FIVE \n')
   
   fprintf('5A \n')
   disp(['The original text is ' questionFivePhraseA]);
   fprintf('\n')
   disp(['The encoded text is ' encodedTextQ5]);
   fprintf('\n')
   
   fprintf('5B \n')
   disp(['The determinant of B mod 13 is ' detBmod13 ' and the determinant of B mod 2 is ' detBmod2 '.']);
   disp(['Thus, since the result of the determinant of B mod 13 and the result of determinant of B mod 2 are not zero, the matrix is invertible.']);
   fprintf('\n')
   
   fprintf('5C \n')
   disp(['B inverse modulo 26 is ']);
   disp(invB);
   fprintf('\n')
   
   
   fprintf('5D \n')
   disp(['The original text is ' questionFivePhraseD]);
   fprintf('\n')
   disp(['The decoded text is ' decodeTextQ5]);
   
   fprintf('\n')
   
   
   ## Question SIX
   C = [11, 20, 20; 2, 1, 24; 9, 3, 3];
   invC = matrixInverse(C);
   
   questionSixPhraseA = "RED SKY AT NIGHT";
   questionSixPhraseD = "IWGEJLFWRBUEUOWBHPZMLMXNXUBOEUAHG";
   
   phraseMatrixQ6A = phraseToMatrix(questionSixPhraseA, letterMap);
   encodedMatrixQ6 = mod(C*phraseMatrixQ6A, 26); 
   encodedTextQ6 = matrixToPhrase(encodedMatrixQ6, letterMap);
  
   phraseMatrixQ6D = phraseToMatrix(questionSixPhraseD, letterMap);
   decodedMatrixQ6 = mod(invC*phraseMatrixQ6D, 26);
   decodeTextQ6 = matrixToPhrase(decodedMatrixQ6, letterMap);
   
   detC = det(C);
   detCmod13 = num2str(mod(detC, 13));
   detCmod2 = num2str(mod(detC, 2));
 
   
   fprintf('QUESTION SIX \n')
   
   fprintf('6A \n')
   disp(['The original text is ' questionSixPhraseA]);
   fprintf('\n')
   disp(['The encoded text is ' encodedTextQ6]);
   fprintf('\n')
   
   fprintf('6B \n')
   disp(['The determinant of C mod 13 is ' detCmod13 ' and the determinant of C mod 2 is ' detCmod2 '.']);
   disp(['Thus, since the result of the determinant of C mod 13 and the result of determinant of C mod 2 are not zero, the matrix is invertible.']);
   fprintf('\n')
   
   fprintf('6C \n')
   disp(['C inverse modulo 26 is ']);
   disp(invC);
   fprintf('\n')
   
   fprintf('6D \n')
   disp(['The original text is ' questionSixPhraseD]);
   fprintf('\n')
   disp(['The decoded text is ' decodeTextQ6]);
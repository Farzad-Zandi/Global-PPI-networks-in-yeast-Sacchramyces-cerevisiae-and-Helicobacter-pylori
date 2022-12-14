clear
clc
load Matine_Data
num1 = numel(N_protein_a);
result_1 = [];
result_11 = [];
result_2 = [];
result_22 = [];
lambda = 11;
tic
 for i = 1 : num1
     result1 = PAAC(P_protein_a{i},lambda);
     result11 = PAAC(P_protein_b{i},lambda);
     result_1 = [result_1;result1];
     result1 = [];
     result_11 = [result_11;result11];
     result11 = [];
 end
  for i = 1 : num1
     result2 = PAAC(N_protein_a{i},lambda);
     result22 = PAAC(N_protein_b{i},lambda);
     result_2 = [result_2;result2];
     result2 = [];
     result_22 = [result_22;result22];
     result22 = [];
  end
Pa = result_1;
Pb = result_11;
Na = result_2;
Nb = result_22;
toc
save AAC Pa Pb Na Nb
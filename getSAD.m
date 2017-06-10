% function to calculate Sum of Absolute Difference
function resSAD = getSAD(input1, input2)
  diff = input1 - input2;
  absol = abs(diff);
  resSAD = sum(absol(:));
end

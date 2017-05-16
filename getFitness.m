% target and solution must be has a same size
% return in floating number
function fitness = getFitness(solution, target)
  restor = mean(solution);
  fitness = abs(restor-target);  
end

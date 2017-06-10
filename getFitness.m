% target and solution must be has a same size
% return in floating number
% @TODO: Nearly to fit, the fitness value nearly to 0, it is not gud
% @TODO: Try using SAD -> Sum of Absolute Difference / Sum of Square Difference
% @TODO: Fitness = 1 / Fitness + 1 ( +1 to prevent 1 / 0)

function fitness = getFitness(solution, target)
  restor = mean(solution);
  fitness = abs(restor-target);
  % make most fit value to huge value and otherwise
  %fitness = 1 / (tmp + 1);
end

function r = avgFit(pop, target)
  pop_size = size(pop,1);
  s = zeros(pop_size,1);
  for i=1:pop_size
    s(i) = getFitness(target, pop(i,:))
    pop_size
  end

  r = sum(s) / pop_size;
end

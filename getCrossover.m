function xover = getCrossover(population)
  row = size(population,1);
  dev = row / 2; % divide population into 2 class;
  pop1 = population(1:dev, :); % class 1
  pop2 = population(dev+1:row, :); % class 2
  pop1x = pop1; % pop1 clone for xover
  pop2x = pop2; % pop2 clone for xover

  % Do crossover
  pop1x(:, 6:9) = pop2(:, 1:4);
  pop2x(:, 1:4) = pop1(:, 6:9);

  xover = [pop1x; pop2x]; % return xover result;
end

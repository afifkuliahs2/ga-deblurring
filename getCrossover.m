function xover = getCrossover(population)
  row = size(population,1);
  dev = row / 2; % divide population into 2 class;
  pop1 = population(1:dev, :); % class 1
  pop2 = population(dev+1:row, :); % class 2
  pop1x = pop1; % pop1 clone for xover
  pop2x = pop2; % pop2 clone for xover

  % Do masking
  for i=5:9
    pop1x(:,i) = bitand(pop1x(:,i),240);
  end

  for j=1:5
    pop2x(:,j) = bitand(pop2x(:,j),15);
  end

  % Do crossover
  pop1x(:, 5:9) = pop2(:, 1:5);
  pop2x(:, 1:5) = pop1(:, 5:9);

  xover = [pop1x; pop2x]; % return xover result;
end

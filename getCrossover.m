function xover = getCrossover(population)
  row = size(population,1);
  dev = row / 2; % divide population into 2 class;
  pop1 = population(1:dev, :); % class 1
  pop2 = population(dev+1:row, :); % class 2
  pop1x = pop1; % pop1 clone for xover
  pop2x = pop2; % pop2 clone for xover

  % Do masking
  % pop1
  % for k=1:4
  %   pop1x(:,k) = bitand(pop1x(:,k),15);
  % end

  for i=5:9
    pop1x(:,i) = bitand(pop1x(:,i),240);
  end

  % pop2
  for j=1:5
    pop2x(:,j) = bitand(pop2x(:,j),15);
  end

  % for l=5:9
  %   pop2x(:,l) = bitand(pop2x(:,l),240);
  % end

  % Do crossover
  % pop1(:,1:4) = pop1x(:,1:4); % bitand 15
  % pop1(:,5:9) = pop2x(:,5:9); % bitand 240 and xover with pop2x
  %
  % pop2(:,1:4) = pop2x(:,1:4); % bitand 15
  % pop2(:,5:9) = pop1x(:,5:9); % bitand 240 and xover with pop1x

  pop1x(:, 5:9) = pop2(:, 1:5);
  pop2x(:, 1:5) = pop1(:, 5:9);

  xover = [pop1; pop2]; % return xover result;
end

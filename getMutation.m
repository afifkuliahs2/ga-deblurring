function mut = getMutation(population)
  row = size(population,1);
  for i=1:row
    randomGen = randperm(9,1); % gen random selection
    population(i, randomGen) = round(rand(1)*255); % do mutation at selected gen with random value (0 - 255)
  end
  mut = population; % return mutation population
end

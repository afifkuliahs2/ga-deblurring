% @TODO: Try to to do with mutation rate

function mut = getMutation(population)
  row = size(population,1);
  for i=1:row
    randomGen = randperm(9,1); % gen random selection
    randomBin = randperm(8,1); % gen random bit position
    genDec = population(i, randomGen); % get decimal number on random gen
    genBit = de2bi(genDec,8); % conver random gen to binary
    genBit(1,randomBin) = getBit(genBit(1,randomBin)); % do mutation in binary level
    population(i, randomGen) = bi2de(genBit);
  end
  mut = population; % return mutation population
end

function individu = getRoulette(fitPop)
  popLength = size(fitPop,2); % get population size
  totalFit = sum(fitPop); % sum fitness value of Population
  randomPick = (totalFit - 0)*rand(1,1) + 0 % do roulette
  partialFitSum = 0;
  for i=1:popLength
    partialFitSum = partialFitSum + sum(fitPop(1,i));
    if partialFitSum >= randomPick
      partialFitSum
      individu = i;
      break
    end
  end
end

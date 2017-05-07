% initPop = initPop / 255; % convert rgb value to floating point

% Set Total Poplation
popSize = 20;

% read image
im = imread('cameraman3.tiff'); % original image
[x,y] = size(im);
imb = meanBlur(im); % blurred image
% imb = im2double(imb);

% image restoration holder
resImg = zeros(x,y);

% ==========================+ %
% Do Genetic Algorithm each Kernel %
for i=1:3:x-2
  for j=1:3:y-2
    i
    j
    pop = generateIndividu(popSize, 9); % Generate Initial Population
    % pop = pop ./ 255;
    fitness = zeros(1,popSize); % fitness value holder
    degraded = imb(i+1,j+1); % Get the first kernel

    epoc = 0;
    while epoc < 300
      % calculate fitness for every chromosome for the first time (for initial population)
      for f=1:popSize
        fitness(1,f) = getFitness(pop(f,:),degraded);
      end

      % Do roulette wheel selection
      for r=1:popSize
        selected = getRoulette(fitness); % get individu
        pop(r,:) = pop(selected,:); % update population based on selection (as parent)
      end

      % Do crossover on selected parent
      pop = getCrossover(pop); % update population after crossover

      % Do Mutation
      pop = getMutation(pop); % update population after mutation

      epoc = epoc + 1;
    end

    % best = find(fitness == min(fitness(:))); % get best fitness postion
    [~,best] = min(fitness);
    bestIndividu = pop(best,:); % get best chromosome

    resImg(i,j:j+2) = bestIndividu(:,1:3);
    resImg(i+1,j:j+2) = bestIndividu(:,4:6);
    resImg(i+2,j:j+2) = bestIndividu(:,7:9);

  end
end

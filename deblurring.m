% Generate Initial Population %
initPop = generateIndividu(50, 9);
% initPop = initPop / 255; % convert rgb value to floating point

% read image
im = imread('cameraman2.tiff'); % original image
[x,y] = size(im);
imb = meanBlur(im); % blurred image
imb = im2double(imb);

% image restoration holder
resImg = zeros(x,y);

% ==========================+ %
% Do Genetic Algorithm each Kernel %
for i=1:x-2
  for j=1:y-2
    fitness = zeros(1,50); % fitness value holder
    degraded = imb(i+1,j+1); % Get the first kernel
    % calculate fitness for every chromosome
    for k=1:50
      fitness(1,k) = getFitness(initPop(k,:),degraded);
    end

    selectPop = []; % holder for new population after selection
    % Do roulette wheel selection
    for l=1:50
      selection = getRoulette(fitness);
      if isempty(selectPop)
        selectPop
    end
    % Do crossover

    % Do Mutation

  end
end

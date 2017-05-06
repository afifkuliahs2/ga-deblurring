% Generate Population
% Gene value based on rgb value
function individu = generateIndividu(jml_individu, jml_gen)
  individu = randi([0 255], jml_individu, jml_gen);
end

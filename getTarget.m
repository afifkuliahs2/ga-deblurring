function target = getTarget(img)
  [x,y] = size(img);
  tmp = [];
  row = []; % to store 3x3 array to 1x9 array as target's chromosome
  for i=1:x-2
    for j=1:y-2
      window = [img(i:i+2,j:j+2)];
      row = [window(1,:) window(2,:) window(3,:)]
      if isempty(tmp)
        tmp = [row];
      else
        tmp = [tmp;row];
      end
    end
  end
  target = tmp;
end

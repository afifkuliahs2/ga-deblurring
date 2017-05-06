function result = meanBlur(img)
  %im = imread(img);
  im = im2double(img);
  [x,y] = size(im);
  % tmp = zeros(x,y);
  for i=1:x-2
    for j=1:y-2
      window = [im(i:i+2,j:j+2)];
      im(i+1,j+1) = mean2(window);
    end
  end
  result = im2uint8(im);
end

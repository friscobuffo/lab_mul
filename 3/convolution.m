img = imread('Lena.bmp');
filter = fspecial('average');
filtered_img = imfilter(img, filter);
figure;
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(filtered_img);
non_uniform_filter = [ [ 0 0.25 0 ] [ 0.1 0 0.4 ] [ 0 0.25 0] ];
filtered_img2 = imfilter(img, non_uniform_filter);
subplot(1,3,3);
imshow(filtered_img2);

gaussian = fspecial('gaussian',3,sqrt(1.5));
figure;
subplot(1,3,1);
bar3(gaussian);
subplot(1,3,2);
imshow(filtered_img);
subplot(1,3,3);
filtered_img3 = imfilter(img, gaussian);
imshow(filtered_img3);

gaussian = fspecial('gaussian', 5,sqrt(1.5));
figure;
subplot(1,3,1);
bar3(gaussian);
subplot(1,3,2);
imshow(filtered_img);
subplot(1,3,3);
filtered_img3 = imfilter(img, gaussian);
imshow(filtered_img3);

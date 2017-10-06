%h(h);
image = imread('object.png');
hsv = rgb2hsv(image);

h = hsv(:,:,1);
s = hsv(:,:,2);
h(h>mean2(h)) = 0.5;
s(h>mean2(h)) = 0;
s(h>mean2(h)) = 1;
% modify h and s...
HSV = rgb2hsv(A);
H = HSV(:,:,1); %Hue
figure,imshow(H);colorbar;



H( H > mean2(H) ) = 1;
HSV(:,:,1) = H;

C = hsv2rgb(HSV);
figure,imshow(C);title('Hue Modified');



HSV = rgb2hsv(A);
S = HSV(:,:,2); %Saturation
figure,imshow(S);colorbar;


HSV = rgb2hsv(A);
H = HSV(:,:,1); %Hue
S = HSV(:,:,2); %Saturation

H( H > mean2(H) ) = 0.42;
S( H < mean2(H) )=0;
S( H >= mean2(H) )=1;

HSV(:,:,2) = S;
HSV(:,:,1) = H;


C = hsv2rgb(HSV);
figure,imshow(C);title('Saturation Modified - Background');
%hsv(:,:,1) = h;
%hsv(:,:,2) = s;

rgb = hsv2rgb(hsv);
imshow(hsv);

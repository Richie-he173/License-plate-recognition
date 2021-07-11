function Digit = LoadDigit()

letter = LoadLetter();
digit(:,:,1)=imresize(imread('model/0.bmp'),[40,20],'bilinear');
digit(:,:,2)=imresize(imbinarize(rgb2gray(imread('model/1.bmp'))),[40,20],'bilinear');
digit(:,:,3)=imresize(imbinarize(rgb2gray(imread('model/2.bmp'))),[40,20],'bilinear');
digit(:,:,4)=imresize(imbinarize(rgb2gray(imread('model/3.bmp'))),[40,20],'bilinear');
digit(:,:,5)=imresize(imbinarize(rgb2gray(imread('model/4.bmp'))),[40,20],'bilinear');
digit(:,:,6)=imresize(imbinarize(rgb2gray(imread('model/5.bmp'))),[40,20],'bilinear');
digit(:,:,7)=imresize(imbinarize(rgb2gray(imread('model/6.bmp'))),[40,20],'bilinear');
digit(:,:,8)=imresize(imbinarize(rgb2gray(imread('model/7.bmp'))),[40,20],'bilinear');
digit(:,:,9)=imresize(imbinarize(rgb2gray(imread('model/8.bmp'))),[40,20],'bilinear');
digit(:,:,10)=imresize(imbinarize(imread('model/9.bmp')),[40,20],'bilinear');


Digit = cat(3,digit,letter);

end
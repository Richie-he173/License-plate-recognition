function letter   = LoadLetter()

letter(:,:,1)=imresize(imbinarize(rgb2gray(imread('model/A.bmp'))),[40,20],'bilinear');
letter(:,:,2)=imresize(imbinarize(rgb2gray(imread('model/B.bmp'))),[40,20],'bilinear');
letter(:,:,3)=imresize(imbinarize(rgb2gray(imread('model/C.bmp'))),[40,20],'bilinear');
letter(:,:,4)=imresize(imbinarize(rgb2gray(imread('model/D.bmp'))),[40,20],'bilinear');
letter(:,:,5)=imresize(imbinarize(rgb2gray(imread('model/E.bmp'))),[40,20],'bilinear');
letter(:,:,6)=imresize(imbinarize(rgb2gray(imread('model/F.bmp'))),[40,20],'bilinear');
letter(:,:,7)=imresize(imbinarize(rgb2gray(imread('model/G.bmp'))),[40,20],'bilinear');
letter(:,:,8)=imresize(imbinarize(rgb2gray(imread('model/H.bmp'))),[40,20],'bilinear');
letter(:,:,9)=imresize(imbinarize(rgb2gray(imread('model/1.bmp'))),[40,20],'bilinear');
letter(:,:,10)=imresize(imbinarize(rgb2gray(imread('model/J.bmp'))),[40,20],'bilinear');
letter(:,:,11)=imresize(imbinarize(rgb2gray(imread('model/K.bmp'))),[40,20],'bilinear');
letter(:,:,12)=imresize(imbinarize(rgb2gray(imread('model/L.bmp'))),[40,20],'bilinear');
letter(:,:,13)=imresize(imbinarize(rgb2gray(imread('model/M.bmp'))),[40,20],'bilinear');
letter(:,:,14)=imresize(imbinarize(rgb2gray(imread('model/N.bmp'))),[40,20],'bilinear');
letter(:,:,15)=imresize(imread('model/0.bmp'),[40,20],'bilinear');
letter(:,:,16)=imresize(imbinarize(rgb2gray(imread('model/P.bmp'))),[40,20],'bilinear');
letter(:,:,17)=imresize(imbinarize(rgb2gray(imread('model/Q.bmp'))),[40,20],'bilinear');
letter(:,:,18)=imresize(imbinarize(rgb2gray(imread('model/R.bmp'))),[40,20],'bilinear');
letter(:,:,19)=imresize(imbinarize(imread('model/S.bmp')),[40,20],'bilinear');
letter(:,:,20)=imresize(imread('model/T.bmp'),[40,20],'bilinear');
letter(:,:,21)=imresize(imbinarize(rgb2gray(imread('model/U.bmp'))),[40,20],'bilinear');
letter(:,:,22)=imresize(imbinarize(rgb2gray(imread('model/V.bmp'))),[40,20],'bilinear');
letter(:,:,23)=imresize(imbinarize(rgb2gray(imread('model/W.bmp'))),[40,20],'bilinear');
letter(:,:,24)=imresize(imbinarize(rgb2gray(imread('model/X.bmp'))),[40,20],'bilinear');
letter(:,:,25)=imresize(imbinarize(rgb2gray(imread('model/Y.bmp'))),[40,20],'bilinear');
letter(:,:,26)=imresize(imbinarize(rgb2gray(imread('model/Z.bmp'))),[40,20],'bilinear');


end
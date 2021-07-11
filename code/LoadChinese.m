function Chinese  = LoadChinese()

Chinese(:,:,1) = imresize(imread('model/Ïæ.bmp'),[40,20],'bilinear');  % Ïæ
Chinese(:,:,2) = imresize(imbinarize(rgb2gray(imread('model/¶õ.bmp'))),[40,20],'bilinear');  % ¶õ
Chinese(:,:,3) = imresize(imbinarize(rgb2gray(imread('model/½ò.bmp'))),[40,20],'bilinear');  % ½ò
Chinese(:,:,4) = imresize(imbinarize(rgb2gray(imread('model/¾©.bmp'))),[40,20],'bilinear');  % ¾©
Chinese(:,:,5) = imresize(imbinarize(rgb2gray(imread('model/Â³.bmp'))),[40,20],'bilinear');  % Â³
Chinese(:,:,6) = imresize(imbinarize(rgb2gray(imread('model/ÔÁ.bmp'))),[40,20],'bilinear');  % ÔÁ
Chinese(:,:,7) = imresize(imread('model/Õã.bmp'),[40,20],'bilinear');  % Õã
Chinese(:,:,8) = imresize(imbinarize(rgb2gray(imread('model/ºÚ.bmp'))),[40,20],'bilinear');  % ºÚ
Chinese(:,:,9) = imresize(imbinarize(rgb2gray(imread('model/ÁÉ.bmp'))),[40,20],'bilinear');  % ÁÉ
Chinese(:,:,10) = imresize(imbinarize(rgb2gray(imread('model/ÉÂ.bmp'))),[40,20],'bilinear');  % ÉÂ
Chinese(:,:,11) = imresize(imbinarize(rgb2gray(imread('model/Ô¥.bmp'))),[40,20],'bilinear');  % Ô¥

end


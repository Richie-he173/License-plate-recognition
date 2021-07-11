clear
close all
clc

InputImage=imread('photo/normal1.jpg');
plate = primary_location(InputImage);
b=rgb2gray(plate); 
d=imbinarize(b); %车牌二值化
imwrite(d,'binarize.jpg')
d=remove_border(d); %去边框
imwrite(d,'remove.jpg')
figure,imshow(d)
title('Remove top and bottom border and rivet image')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h=fspecial('average',3); %平滑处理
d=imbinarize(round(filter2(h,d)));%使用指定的滤波器h对h进行d即均值滤波
%膨胀或腐蚀
se=[1 0;0 1];
[m,n]=size(d);%返回信息矩阵
%0.365和0.235都是经验值
if bwarea(d)/m/n>=0.365
    d=imerode(d,se);
elseif bwarea(d)/m/n<=0.235
    d=imdilate(d,se);
end
%再去除字符之外的多余部分
d=remove_extra(d);
%分割出第一至七个字符
[word1,d]=char_seg(d); %左边框
[word1,d]=char_seg(d); %第一个字符
[word2,d]=char_seg(d);
[word3,d]=char_seg(d); %车牌第二个字符和第三个字符之间的点
[word3,d]=char_seg(d); %第三个字符
[word4,d]=char_seg(d);
[word5,d]=char_seg(d);
[word6,d]=char_seg(d);
[word7,d]=char_seg(d);
%将每个字符大小归一化，与模板大小匹配,通用尺寸[40, 20]
word1=imresize(word1,[40 20]);
word2=imresize(word2,[40 20]);
word3=imresize(word3,[40 20]);
word4=imresize(word4,[40 20]);
word5=imresize(word5,[40 20]);
word6=imresize(word6,[40 20]);
word7=imresize(word7,[40 20]);
%%%%%%%%%%%加载模板库
Chinese = LoadChinese();
Letter = LoadLetter();
Digit = LoadDigit();
%识别
recog1 = identityChinese(Chinese, word1); recognition(1)=recog1;
recog2 = identityLetter(Letter, word2);  recognition(2)=recog2;
recog3 = identityDigitLetter(Digit, word3);  recognition(3)=recog3;
recog4 = identityDigitLetter(Digit, word4);  recognition(4)=recog4;
recog5 = identityDigitLetter(Digit, word5);  recognition(5)=recog5;
recog6 = identityDigitLetter(Digit, word6);  recognition(6)=recog6;
recog7 = identityDigitLetter(Digit, word7);  recognition(7)=recog7;
%输出结果
msgbox({'识别结果';recognition});

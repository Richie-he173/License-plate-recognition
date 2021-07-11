function OutputImage=remove_border(InputImage)

projection_h = sum(InputImage,1);
projection_v = sum(InputImage,2);
for i=1:size(projection_v,1)    
    if projection_v(i,1) >= 1        
        new.rowa = i;        
        break;    
    end
end
for i=1:size(projection_v,1)    
    j = size(projection_v,1) - i+1;    
    if projection_v(j,1) >= 1        
        new.rowb = j;        
        break;    
    end
end
for i=1:size(projection_h ,2)    
    if projection_h(1,i) >= 1        
        new.cola = i;        
        break;    
    end
end
for i=1:size(projection_h ,2)    
    j = size(projection_h ,2)-i+1;    
    if projection_h(1,j) >= 1        
        new.colb = j;        
        break;    
    end
end
Image = InputImage(new.rowa:new.rowb, new.cola:new.colb);
diff_row = diff(Image,1,2);  % 前一行减后一行
diff_row_sum = sum(abs(diff_row), 2);  
[rows, columns] = size(Image);
trows1 = ceil(rows*(1/3));
j = trows1;
plate.rowa=1;
for i=1:trows1    
    if diff_row_sum(j,1)<10        
        plate.rowa = j;        
        break;    
    end
    j = trows1-i;
end
plate.rowb=size(diff_row_sum,1) ;
for i=2*trows1:size(diff_row_sum,1)    
    if diff_row_sum(i,1)<10        
        plate.rowb = i;        
        break;    
    end
end
OutputImage = Image(plate.rowa:plate.rowb, :);

end
image=im2double(imread('/home/student/Desktop/pro.png'));

layer = ['image(:,:,1) image(:,:,2) image(:,:,3)']


key = im2double(imread('key.png'))

key = [key(:,:,1) key(:,:,2) key(:,:,3)]

layer = [key(1)*layer(1) key(2)*layer(2) key(3)*layer(3)]
final(:,:,1)=layer(1)
final(:,:,2)=layer(2)
final(:,:,3)=layer(3)
final=final/100;
figure (1);
imshow(image)
figure (2)
imshow(final/100)
imwrite(final,'/home/student/final.jpg')
[peaksnr,snr]=psnr(double(image),double(final))
DestinationDir='/home/student/Desktop/major pro';
imwrite(final,strcat(DestinationDir,'EncrytedImage.png'));
save(strcat(DestinationDir,'Encrypted.mat'),'final');

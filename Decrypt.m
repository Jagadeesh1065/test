load('/home/student/final.jpg');
image = final * 100;
%layer1=image(:,:,1);
%layer2=image(:,:,2);
%layer3=image(:,:,3);
layer = ['image(:,:,1) image(:,:,2) image(:,:,3)']
key = im2double(imread('key.png'));
%key1=key(:,:,1);
%key2=key(:,:,2);
%key3=key(:,:,3);
key = [key(:,:,1) key(:,:,2) key(:,:,3)]
layer = [inv(key(1)*layer(1)) inv(key(2)*layer(2)) inv(key(3)*layer(3))]
final(:,:,1) = layer(1)
final(:,:,2) = layer(2)
final(:,:,3) = layer(3)
figure
imshow(final);
DestinationDir='/home/student/Desktop';
imwrite(final,strcat(DestinationDir,'DecryptedImage.png'));
save(strcat(DestinationDir,'DecryptedImage.png'),final);

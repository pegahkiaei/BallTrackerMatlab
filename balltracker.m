%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   FINAL CODE   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&%

a=[1 2;3 4];


vid=videoinput('winvideo',1);
set(vid,'TriggerRepeat',Inf);
vid_src = getselectedsource(vid);
set(vid_src,'Tag','motion detection setup');
strel=strel('disk',10);

%%%%%%%%%%%%%%%%%%%%%%%%se=serial('COM3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%fopen(se)


ww=[1 2];
sizeww=size(ww);
j=1;
centerF=0;
start(vid)

tic
%/////////////////////2ta ax avaliye gerefete mishavad////////////
while(centerF<2)
	pause(2)		
	captureima=getsnapshot(vid);

	image(captureima);
	imwrite(captureima,'captureima.jpg');

	recapture=imread('captureima.jpg');
	

	gray=rgb2gray(recapture);	
	compiliment=imcomplement(gray);
	adjust=imadjust(compiliment);
	close=imclose(adjust,strel);
	open=imopen(close,strel);
	filter = ones(5,5) / 25;
	fil = imfilter(open,filter);
	tafrig=imsubtract(fil,210);
	fil2 = imfilter(tafrig,filter);
	extendedmax= imextendedmax(fil2,40);
	compiliment2=imcomplement(extendedmax);	
		
		lbg=bwlabel(compiliment2);
		compiliment3=imcomplement(lbg);
		lbg2 = bwconncomp(compiliment2);

%%//////////////////////////////////////////////

if(lbg2.NumObjects~=1)
		msgbox1=msgbox('Out Of Range');

	while(lbg2.NumObjects~=1)
		
	e=msgbox('EROR!1');

	captureima=getsnapshot(vid);

	image(captureima);
	imwrite(captureima,'captureima.jpg');

	recapture=imread('captureima.jpg');
	
	gray=rgb2gray(recapture);	
	compiliment=imcomplement(gray);
	adjust=imadjust(compiliment);
	close=imclose(adjust,strel);
	open=imopen(close,strel);
	filter = ones(5,5) / 25;
	fil = imfilter(open,filter);
	tafrig=imsubtract(fil,210);
	fil2 = imfilter(tafrig,filter);
	extendedmax= imextendedmax(fil2,40);
	compiliment2=imcomplement(extendedmax);	
		
	lbg=bwlabel(compiliment2);
	compiliment3=imcomplement(lbg);
	lbg2 = bwconncomp(compiliment2);

if(lbg2.NumObjects==1)
		M=regionprops(compiliment3,'Centroid');
		MK=cat(1,M.Centroid);
		imshow(lbg)
		hold on
		plot(MK(:,1),MK(:,2),'*b')
		hold off
		sizeMK=size(MK);

end
end
end

		M=regionprops(compiliment3,'Centroid');
		MK=cat(1,M.Centroid);
		imshow(lbg)
		hold on
		plot(MK(:,1),MK(:,2),'*b')
		hold off
		sizeMK=size(MK);

centerF=centerF+1;

	x1=MK(:,1);
	y1=MK(:,2);
	a(j,1)=x1;
	a(j,2)=y1;
	j=j+1;

%///end e while		
end


if(a(2,1)>a(1,1))&(a(2,2)==a(1,2))
z=1
h=msgbox('1');
end


if(a(1,1)>a(2,1))&(a(2,2)==a(1,2))
z=2
h=msgbox('2');
end;

if(a(2,2)>a(1,2))&(a(2,1)==a(1,1))
z=3
h=msgbox('3');
end

if(a(1,2)>a(2,2))&(a(2,1)==a(1,1))
z=4
h=msgbox('4');
end

if(a(2,1)>a(1,1))&(a(2,2)>a(1,2))
z=5
h=msgbox('5');
end

if(a(2,1)>a(1,1))&(a(1,2)>a(2,2))
z=6
h=msgbox('6');
end

if(a(1,1)>a(2,1))&(a(1,2)>a(2,2))
z=7
h=msgbox('7');
end

if(a(1,1)>a(2,1))&(a(2,2)>a(1,2))
z=8
h=msgbox('8');
end


if(a(2,1)==a(1,1))&(a(2,2)==a(1,2))
z=9
h=msgbox('9');
end
toc

%///////////////////////////////////////////////////////////////////////////part 2 //////////////////////////////////////////////////////////////////////////////


%///////////replace////////
display('a ghable ax 3')
a
a(1,1)=a(2,1);
a(1,2)=a(2,2);
display('ghabl ax 3')

%%///////////////////axe3-akhar///////////////////////////

while (centerF<6)
display('bad ax 3')

pause(2)		
	captureima=getsnapshot(vid);

	image(captureima);
	imwrite(captureima,'captureima.jpg');

	recapture=imread('captureima.jpg');
	

	gray=rgb2gray(recapture);	
	compiliment=imcomplement(gray);
	adjust=imadjust(compiliment);
	close=imclose(adjust,strel);
	open=imopen(close,strel);
	filter = ones(5,5) / 25;
	fil = imfilter(open,filter);
	tafrig=imsubtract(fil,210);
	fil2 = imfilter(tafrig,filter);
	extendedmax= imextendedmax(fil2,40);
	compiliment2=imcomplement(extendedmax);	
		
		lbg=bwlabel(compiliment2);
		compiliment3=imcomplement(lbg);
		lbg2 = bwconncomp(compiliment2);

%%//////////////////////////////////////////////

if(lbg2.NumObjects~=1)
		msgbox1=msgbox('Out Of Range');

	while(lbg2.NumObjects~=1)
		
	e=msgbox('EROR!2');

	captureima=getsnapshot(vid);

	image(captureima);
	imwrite(captureima,'captureima.jpg');

	recapture=imread('captureima.jpg');
	
	gray=rgb2gray(recapture);	
	compiliment=imcomplement(gray);
	adjust=imadjust(compiliment);
	close=imclose(adjust,strel);
	open=imopen(close,strel);
	filter = ones(5,5) / 25;
	fil = imfilter(open,filter);
	tafrig=imsubtract(fil,210);
	fil2 = imfilter(tafrig,filter);
	extendedmax= imextendedmax(fil2,40);
	compiliment2=imcomplement(extendedmax);	
		
	lbg=bwlabel(compiliment2);
	compiliment3=imcomplement(lbg);
	lbg2 = bwconncomp(compiliment2);

if(lbg2.NumObjects==1)
		M=regionprops(compiliment3,'Centroid');
		MK=cat(1,M.Centroid);
		imshow(lbg)
		hold on
		plot(MK(:,1),MK(:,2),'*b')
		hold off
		sizeMK=size(MK);

end
end
end

		M=regionprops(compiliment3,'Centroid');
		MK=cat(1,M.Centroid);
		imshow(lbg)
		hold on
		plot(MK(:,1),MK(:,2),'*b')
		hold off
		sizeMK=size(MK);

centerF=centerF+1;

	x1=MK(:,1);
	y1=MK(:,2);
	a(2,1)=x1;
	a(2,2)=y1;

	
	

%%///////detectt move////

if(a(2,1)>a(1,1))&(a(2,2)==a(1,2))
z=1
h=msgbox('1,right');
end


if(a(1,1)>a(2,1))&(a(2,2)==a(1,2))
z=2
h=msgbox('2,left');
end;

if(a(2,2)>a(1,2))&(a(2,1)==a(1,1))
z=3
h=msgbox('3,down');
end

if(a(1,2)>a(2,2))&(a(2,1)==a(1,1))
z=4
h=msgbox('4,up');
end

if(a(2,1)>a(1,1))&(a(2,2)>a(1,2))
z=5
h=msgbox('5,right-down');
end

if(a(2,1)>a(1,1))&(a(1,2)>a(2,2))
z=6
h=msgbox('6,up-right');
end

if(a(1,1)>a(2,1))&(a(1,2)>a(2,2))
z=7
h=msgbox('7,up-left');
end

if(a(1,1)>a(2,1))&(a(2,2)>a(1,2))
z=8
h=msgbox('8,down-left');
end


if(a(2,1)==a(1,1))&(a(2,2)==a(1,2))
z=9
h=msgbox('9,No Move');
end

%///////////////port////////////
%%%fwrite(se,z)

%%%%///////////Replace/////////////


a(1,1)=a(2,1);
a(1,2)=a(2,2);

%%//////////// fin/////////////////%%
%%while
end

%///////////////230 ///////////////////////////// hhhhhhhoooooooooooooooooooooooooooooooraaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

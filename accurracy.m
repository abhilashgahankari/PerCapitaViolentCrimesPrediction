x=readmatrix('crimedata_ga.csv');
actual={};
predict={};
mat=zeros(3);
a=1;
b=1;
match=0;
miss=1;
fis=readfis('trial');
for i=2:size(x,1)
	out=evalfis(fis,x(i,1:13));
	val=x(i,14);
	if out>0.65
		predict=[predict,'high'];
		b=3;
	elseif (out < 0.66 && out >= 0.33)
		predict=[predict,'medium'];
		b=2;
	else
		predict=[predict,'low'];
		b=1;
	end
	if val>0.65
		actual=[actual,'high'];
		a=3;
	elseif (val < 0.66 && val >= 0.33)
		actual=[actual,'medium'];
		a=2;
	else
		actual=[actual,'low'];
		a=1;
	end
	mat(a,b)=mat(a,b)+1;
end
for i=1:3
	for j=1:3
		if i~=j
			miss= miss + mat(i,j);
		else
			match = match + mat(i,j);
		end
	end
end
confusionchart(actual,predict);	%needs Statistics and Machine Learning Toolbox or Deep Learning Toolbox
disp(mat);
accurracy = (match/(miss+match))*100;
disp(accurracy);

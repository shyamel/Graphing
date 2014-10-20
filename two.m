
data = load('auto-mpg.data');
sorted_data = sortrows(data, 1);

X = sorted_data(:, 2:8);
low_threshold = X(1:131,1:7);
medium_threshold = X(132:262, 1:7);
high_threshold = X(263:392, 1:7);

for i = 1:7
	for j = 1:7
		subplot(7,7,(j -1)*7 + i);
		if( i == j) # same attribute being compared against each other
			hist(X(:,i));
		else
			hold on;
			x = low_threshold(:, i);
			y = low_threshold(:,j);
			plot(x, y, 'gx', 'MarkerSize', 3);
			x = medium_threshold(:, i);
			y = medium_threshold(:,j);
			plot(x, y, 'rx', 'MarkerSize', 3);
			x = high_threshold(:, i);
			y = high_threshold(:,j);
			plot(x, y, 'bx', 'MarkerSize', 3);
			hold off;
			
		endif
	endfor
endfor
		
		






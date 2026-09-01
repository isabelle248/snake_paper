% Data for the bars
values = [0.279869, 0.106589, 0.28271, 0.110648];

% Create bar graph
figure;
bar(values);

% Add labels to each bar
labels = {'Aquatic-Aquatic', 'Aquatic-Terrestrial', 'Terrestrial-Aquatic', 'Terrestrial-Terrestrial'};
set(gca, 'XTickLabel', labels);

% Optional: add title and axis labels
title('Farthest Distance by Locomotion Strategy and Environment');
xlabel('Locomotion Strategy and Environment');
ylabel('Distance Traveled (m)');
function read_point_list = read_points(input_image, n)

if nargin < 2
    n = inf;
    read_point_list = zeros(2, 0);
else
    read_point_list = zeros(2, n);
end

imshow(input_image);
x_old = 0;
y_old = 0;
k = 0;
hold on;

hold off;
if k < size(read_point_list, 2)
    read_point_list = read_point_list(:, 1:k);
end

end

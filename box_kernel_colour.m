function output_kernel = box_kernel_colour(size, depth)

if nargin < 2
    depth = 1;
end

box_kernel = ones(size, size, depth);
for idx = 1:depth
    slice_sum = sum(sum(box_kernel(:, :, idx)));
    box_kernel(:,:,idx) = box_kernel(:, :, idx) ./ slice_sum;
end

output_kernel = box_kernel;
end


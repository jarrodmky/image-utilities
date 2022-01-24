function output_kernel = box_kernel_colour(size)

if nargin < 2
    depth = 1;
end

output_kernel_comp = ones(25);
output_kernel_comp = output_kernel_comp / (sum(output_kernel_comp(:)));
output_kernel = cat(3, output_kernel_comp, output_kernel_comp, output_kernel_comp);

end


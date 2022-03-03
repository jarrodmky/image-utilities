function output_image = conv2_3(lhs, rhs)
lhs_size = size(lhs);
rhs_size = size(rhs);
assert(lhs_size(3) == rhs_size(3) && rhs_size(3) == 3);
conv_r = conv2(lhs(:, :, 1), rhs(:, :, 1));
conv_g = conv2(lhs(:, :, 2), rhs(:, :, 2));
conv_b = conv2(lhs(:, :, 3), rhs(:, :, 3));
output_image = cat(3, conv_r, conv_g, conv_b);
end
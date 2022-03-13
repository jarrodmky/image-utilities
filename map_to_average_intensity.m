function output_image = map_to_average_intensity(srgb_image_stack)

exposure_count = size(srgb_image_stack, 4);
assert(exposure_count > 0);

exposures = rgb2lab(srgb_image_stack(:, :, :, 1));
for idx = 2:exposure_count
    exposures(:,:,:,idx) = rgb2lab(srgb_image_stack(:, :, :, idx));
end

lab_mean = mean(exposures, 4);

L = squeeze(exposures(:, :, 1, :));
L_max = max(L, [], 3);

lab_image = 100*(lab_mean(:, :, 1) ./ L_max);
lab_image(:, :, 2) = lab_mean(:, :, 2);
lab_image(:, :, 3) = lab_mean(:, :, 3);
output_image = lab2rgb(lab_image);

end


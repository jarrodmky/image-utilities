function image_stack = jpeg_files_to_image_stack(file_names_vector)

exposure_count = length(file_names_vector);
assert(exposure_count > 0)

image_stack = im2double(imread(file_names_vector(1)));
for idx = 2:exposure_count
    image_stack(:,:,:,idx) =  im2double(imread(file_names_vector(idx)));
end

end


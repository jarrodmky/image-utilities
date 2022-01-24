function image = linear_image_from_jpeg(input_filepath)
    %read_image_d = double(imread(input_filepath)) ./ 255;
    %image = arrayfun(@sRGB_to_linear, read_image_d);
    image = double(imread(input_filepath)) ./ 255;
end
function output_image = map_hdr_image(file_names_vector)

%montage(file_names_vector);
HDR_image = makehdr(file_names_vector);
output_image = tonemap(HDR_image);
end

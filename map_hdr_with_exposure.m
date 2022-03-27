function output_image = map_hdr_with_exposure(file_names_vector)

%montage(file_names_vector);
exposure_times = get_exposure_time(file_names_vector);
f_numbers = get_f_number(file_names_vector);
exposure_values = log2((f_numbers.^2) ./ exposure_times);

%disp("EVs = ");
%disp(exposure_values);

min_ev = min(exposure_values);
relative_exposure_values = exposure_values ./ min_ev;

%disp("rel. EVs = ");
%disp(relative_exposure_values);

HDR_image = makehdr(file_names_vector,'RelativeExposure',relative_exposure_values);
output_image = tonemap(HDR_image);
end

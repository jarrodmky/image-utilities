function f_numbers = get_f_number(file_names)

    camera_settings = get_camera_settings(file_names);
    assert(isfield(camera_settings, "FNumber"), "Cannot find f-number information!");
    f_numbers = [camera_settings.FNumber];
end

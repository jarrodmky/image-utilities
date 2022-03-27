function exposure_times = get_exposure_time(file_names)

    camera_settings = get_camera_settings(file_names);
    assert(isfield(camera_settings, "ExposureTime"), "Cannot find exposure information!");
    exposure_times = [camera_settings.ExposureTime];
end

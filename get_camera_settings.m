function camera_settings_array = get_camera_settings(file_names)

    camera_settings_array = arrayfun(@get_camera_settings_componentwise, file_names);
end

function camera_settings = get_camera_settings_componentwise(file_name)

    camera_settings = struct([]);
    img_imfo = imfinfo(file_name);
    if isfield(img_imfo, "DigitalCamera")

        camera_settings = img_imfo.DigitalCamera;
        return;
    end
    error("Cannot find camera information!");
end

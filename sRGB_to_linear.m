function output_linear_intensity = sRGB_to_linear(input_sRGB_intensity)
    if input_sRGB_intensity > 0.04045
        base = (input_sRGB_intensity + 0.055) / 1.055;
        output_linear_intensity = power(base, 2.4);
    else
        output_linear_intensity = input_sRGB_intensity / 12.92;
    end
end
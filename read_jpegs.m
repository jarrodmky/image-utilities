function jpeg_files = read_jpegs(input_directory)
    [~, list] = system( strcat("dir ", input_directory," /B /S *.jpg"));
    result = textscan( list, '%s', 'delimiter', '\n' );
    jpeg_files = convertCharsToStrings(result{1});
end
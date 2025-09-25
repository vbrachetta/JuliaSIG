# Source (adapted from): https://docs.julialang.org/en/v1/stdlib/DelimitedFiles
# Accessed 3 Feb 2025

using DelimitedFiles

x = [1; 2; 3; 4];
y = [1.1; 2.2; 3.3; 4.4];

open("dlm_file.txt", "w") do io
    writedlm(io, [x y], ',')
end;

readdlm("dlm_file.txt", ',', Float64)

rm("dlm_file.txt")

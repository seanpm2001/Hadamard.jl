using Hadamard, Compat
using Compat.Test, Compat.LinearAlgebra

H8 = [   1     1     1     1     1     1     1     1
         1     1     1     1    -1    -1    -1    -1
         1     1    -1    -1    -1    -1     1     1
         1     1    -1    -1     1     1    -1    -1
         1    -1    -1     1     1    -1    -1     1
         1    -1    -1     1    -1     1     1    -1
         1    -1     1    -1    -1     1    -1     1
         1    -1     1    -1     1    -1     1    -1  ]

H8n = [  1     1     1     1     1     1     1     1
         1    -1     1    -1     1    -1     1    -1
         1     1    -1    -1     1     1    -1    -1
         1    -1    -1     1     1    -1    -1     1
         1     1     1     1    -1    -1    -1    -1
         1    -1     1    -1    -1     1    -1     1
         1     1    -1    -1    -1    -1     1     1
         1    -1    -1     1    -1     1     1    -1  ]

H8d = [  1     1     1     1     1     1     1     1
         1     1     1     1    -1    -1    -1    -1
         1     1    -1    -1     1     1    -1    -1
         1     1    -1    -1    -1    -1     1     1
         1    -1     1    -1     1    -1     1    -1
         1    -1     1    -1    -1     1    -1     1
         1    -1    -1     1     1    -1    -1     1
         1    -1    -1     1    -1     1     1    -1  ]


I8 = Matrix{Float64}(I,8,8)
iI8 = Matrix{Int8}(I,8,8)

@test ifwht(I8,1) == H8
@test ifwht(I8,2)' == H8
@test ifwht_natural(I8,1) == H8n
@test ifwht_natural(I8,2)' == H8n
@test ifwht_dyadic(I8,1) == H8d
@test ifwht_dyadic(I8,2)' == H8d

@test ifwht(iI8,1) == H8
@test ifwht(iI8,2)' == H8
@test ifwht_natural(iI8,1) == H8n
@test ifwht_natural(iI8,2)' == H8n
@test ifwht_dyadic(iI8,1) == H8d
@test ifwht_dyadic(iI8,2)' == H8d

H32 = [  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 1 1 1 1
 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1
 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1
 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 1 1 1 1 -1 -1 -1 -1
 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1
 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1
 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1
 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1
 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1
 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1
 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1
 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1 1 1 -1 -1
 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1
 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1
 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1
 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1
 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 -1 1
 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1
 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1
 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1
 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1
 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1
 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1
 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1
 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1
 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1
 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1
 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1 1 -1 1 -1
 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1
 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 ]

 I32 = Matrix{Float64}(I,32,32)
 iI32 = Matrix{Int8}(I,32,32)

@test ifwht(I32,1) == H32
@test ifwht(I32,2)' == H32

@test ifwht(iI32,1) == H32
@test ifwht(iI32,2)' == H32

X = reshape(sin.([1:1024*32;]), 1024,32);
norminf(A) = maximum(abs, A)

# non-lazy transpose for 0.7:
transp(x::AbstractMatrix) = permutedims(x, (2,1))

for f in (:fwht, :fwht_natural, :fwht_dyadic)
    fi = Symbol(string("i", f))
    @eval begin
        @test norminf(X - $fi($f(X))) < 1e-14
        @test norminf(X - $fi($f(X,1),1)) < 1e-14
        @test norminf(X - $fi($f(X,2),2)) < 1e-14
        @test norminf($f($f(X,1),2) - $f(X)) < 1e-14
        @test norminf(transp($f(transp(X),1)) - $f(X,2)) < 1e-14
    end
end

@test hadamard(8) == H8n
@test ifwht_natural(I32, 1) == hadamard(32)
@test ifwht_natural(Matrix{Float64}(I,2,2), 1) == hadamard(2)

print("Checking unitarity of hadamard(n): ")
sizes = Int[]
for i = 4:4:1200
    H = try
        Matrix{Int}(hadamard(i))
    catch
        Int[]
    end
    if !isempty(H)
        print(i, ", ")
        @test norminf(H'*H - size(H,1)*I) == 0
        push!(sizes, i)
    end
end
@test sizes == [4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76, 80, 84, 88, 92, 96, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 144, 148, 152, 156, 160, 164, 168, 172, 176, 180, 184, 188, 192, 196, 200, 204, 208, 212, 216, 220, 224, 228, 232, 236, 240, 244, 248, 252, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 428, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 528, 544, 560, 576, 592, 608, 624, 640, 656, 672, 688, 704, 720, 736, 752, 768, 784, 800, 816, 832, 848, 856, 864, 880, 896, 912, 928, 944, 960, 976, 992, 1008, 1024, 1040, 1056, 1088, 1104, 1120, 1152, 1184, 1200]
println(".\nSuccess!")

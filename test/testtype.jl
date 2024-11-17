@testset "Test type" begin
    t = MyExample.MyType(1.0,2.0) 
    w = some(t)
    @test isapprox(w, 2.540302, atol=1e-6)
end
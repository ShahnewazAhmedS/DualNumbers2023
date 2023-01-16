module DualNumbers

export Dual
"""
	Dual: A dual number defintion inside a package
"""
struct Dual{T}
	real::T
	dual::T
end

Base.:+(x::Dual) = Dual(x.real, x.dual)
Base.:-(x::Dual) = Dual(-x.real, -x.dual)

Base.:+(x::Dual, y::Dual) = Dual(x.real+y.real, x.dual+y.dual)
Base.:-(x::Dual, y::Dual) = x + -y

# Scalar multiplication
Base.:*(a::Number, x::Dual) = Dual(a * x.real, a * x.dual)
Base.:*(x::Dual, a::Number) = Dual(x.real * a, x.dual * a)

# Multiplication


end # module DualNumbers


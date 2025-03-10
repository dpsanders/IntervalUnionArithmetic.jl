module IntervalUnionArithmetic

using Reexport

@reexport using IntervalArithmetic

import Base: getindex, ∪, intersect, \, in, isequal
import Base: +, -, *, /, min, max, ^, log, <, >, exp, sin, cos, tan, sqrt
import IntervalArithmetic: hull, bisect, intersect, ⊆, ⊂

abstract type IntervalUnion{T} <: AbstractInterval{T} end

export
    IntervalUnion, IntervalU, intervalU, remove_empties, condense, closeGaps!,
    iscondensed, condense_weak, iscondensed_weak, env, hull, complement, left, right, bisect,
    intersect, setdiff, \, ⊆, ⊂, isequal, in


global MAXINTS = [100]

include("interval_unions.jl")
include("arithmetic.jl")
include("utilities.jl")
include("set_operations.jl")

end # module

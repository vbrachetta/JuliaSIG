# 04_types_and_methods.jl
# Demonstrates documenting a simple struct and multiple methods.

"""
    Point(x, y)

A simple 2D point with cartesian coordinates `x` and `y`.

# Fields
- `x`: x-coordinate
- `y`: y-coordinate
"""
struct Point
    x
    y
end

"""
    distance

Compute Euclidean distances between points.

This function has multiple methods:
- `distance(p::Point)`: distance from the origin
- `distance(p::Point, q::Point)`: distance between two points
"""
function distance end

"""
    distance(p::Point)

Return the distance of point `p` from the origin `(0, 0)`.

# Arguments
- `p::Point`: A 2D point.

# Examples
```jldoctest
julia> p = Point(3, 4)
Point(3, 4)

julia> distance(p)
5.0
```
"""
distance(p::Point) = sqrt(p.x^2 + p.y^2)

"""
    distance(p::Point, q::Point)

Return the distance between points p and q.

# Arguments
- `p::Point`: First point.
- `q::Point`: Second point.

# Examples
```jldoctest
julia> p = Point(0, 0); q = Point(0, 3);

julia> distance(p, q)
3.0
```
"""
distance(p::Point, q::Point) = sqrt((p.x - q.x)^2 + (p.y - q.y)^2)


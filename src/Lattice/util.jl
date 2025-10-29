function getidx(Latt::AbstractLattice, x::Real, y::Real; forceerr::Bool = false)
    idx = findfirst(i -> (x,y) == coordinate(Latt, i), 1:size(Latt))
    (idx == nothing && forceerr) && error("Index not found!")
    return idx
end

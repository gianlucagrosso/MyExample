
function some(t)
    z = t.x *t.y 
    return z + cos(t.x)
end

function another(t , z)
    return mean([t.x, t.y, z])
end
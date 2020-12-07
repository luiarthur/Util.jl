tonamedtuple(d::Dict) = NamedTuple{Tuple(keys(d))}(values(d))

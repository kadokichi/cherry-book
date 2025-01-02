Units = { m: 1.0, ft: 3.28, in: 39.37 }
def convert_length(length, from: :m, to: :m)
  (length / Units[from] * Units[to]).round(2)
end

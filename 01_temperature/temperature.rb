def ftoc temp_F
  temp_C = (temp_F - 32) * 5 / 9
end

def ctof temp_C
  temp_F = temp_C.to_f * 9 / 5 + 32
end

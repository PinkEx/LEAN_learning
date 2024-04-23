-- 1 + 2 + ... + 100
def main: IO Unit := do
  let mut sum := 0
  for i in List.range 101 do
    sum := sum + i
  IO.println sum

-- CMD/PS: lean --run calc_sum.lean
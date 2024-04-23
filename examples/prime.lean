inductive Prime : ℕ → Prop
  | prime_2   : Prime 2
  | prime_odd : ∀ {n}, n >= 3 → (∀ m, m > 1 ∧ m < n → ¬(n % m = 0)) → Prime n

#check Prime.prime_odd

partial def is_prime (n : Nat) : Bool :=
  if n < 2 then false
  else if n = 2 then true
  else if n % 2 = 0 then false
  else
    let upper_bound := Float.sqrt n.toFloat
    let rec loop (i : Nat) : Bool :=
      if i.toFloat > upper_bound then true
      else if n % i = 0 then false
      else loop (i + 2)
    loop 3

#check is_prime 35
#reduce is_prime 35
#eval is_prime 35
#check fun (x: Nat) => x + 5
#check λ (x: Nat) => x + 5
#check fun x => x + 5
#check λ x => x + 5

#eval (λ x => x + 5) 7

#eval (fun x y => if not y then x + 1 else x + 2) 3 false

def N2S (n : Nat) : String := toString n
def S2B (s: String) : Bool := s.length > 1

#check λ x => S2B (N2S x)
#eval (λ x => S2B (N2S x)) 2
#eval (λ x => S2B (N2S x)) 23
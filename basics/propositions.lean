#eval Lean.versionString

-- proposition in Chinese = 命题
#check And
#check Not

def Implies (a: Prop) (b: Prop) := a → b -- which is identifier in lean3
#check Implies

variable (p q r : Prop)
#check And p q
#check Or (And p q) r
#check Implies (And p q) (And q p)

#check p → q → p ∧ q
#check ¬p → p ↔ False
#check p ∨ q → q ∨ p

#check p ∧ q → r
#check p → q → r -- the curried form (if p, then if q, then r)
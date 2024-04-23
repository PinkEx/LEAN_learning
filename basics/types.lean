/-
One way in which Lean's dependent type theory extends simple type theory is that types themselves ---
entities like Nat and Bool --- are first-class citizens, which is to say that they themselves are objects.
For that to be the case, each of them also has to have a type.
-/

#check Nat → Nat
#check Nat -> Nat

#check Nat × Nat
#check Prod Nat Nat

#check Nat → Nat → Nat
#check (Nat → Nat) → Nat

#check (Nat × Nat) → Nat
#check (Nat → Nat) → Nat

#check Nat.succ
#check (0, 1)
#check Nat.add

#check Nat.succ 2
#check Nat.add 3
#check Nat.add 5 2
#check (5, 9).fst
#check (5, 9).snd

#eval Nat.succ 2
#eval Nat.add 5 2
#eval (5, 9).fst
#eval (5, 9).snd

#check Prop
#check Type
#check Type 1
#check Type 2

#check trivial
#check True

-- universe u
def F (α : Type u) : Type u := α × α
#check F
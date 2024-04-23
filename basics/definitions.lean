def double (x : Nat) : Nat := x + x
def square (x : Nat) : Nat := x * x

def doTwice (f : Nat → Nat) (x : Nat) : Nat := f (f x)
#eval doTwice double 3 -- (3 + 3) + (3 + 3)

def compose (α β γ : Type) (g : β → γ) (f : α → β) (x : α) : γ := g (f x)
#eval compose Nat Nat Nat double square 3 -- (3 * 3) + (3 * 3)

-- local definition
def foo := let a := Nat; fun x : a => x + 2
#check foo
#eval foo 1
-- #check a DOES NOT WORK!
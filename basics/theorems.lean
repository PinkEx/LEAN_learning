axiom and_commutative (p q : Prop) : (p ∧ q) → (q ∧ p)
#check and_commutative

variable (p q : Prop)
#check and_commutative p q

axiom modus_ponens (p q : Prop) : ((p → q) ∧ p) → q -- 肯定前件式

theorem add_commutative
: x + 1 = 1 + x
:= by admit


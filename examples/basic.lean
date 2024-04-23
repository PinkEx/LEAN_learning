-- version display
#eval Lean.versionString

-- expression
#eval (2 + 3 * 5) / (6 - 1)

-- function
-- unary function
def addOne (x: Int): Int := x + 1
#eval addOne 2

-- binary function
def add (x: Int) (y: Int) := x + y
#eval add 3 4

-- same types can be merged
def addMerge (x y: Int) := x + y
#eval addMerge 3 4

-- check function
#check add

-- simpler
def addOneSimpler := add 1
#check addOneSimpler
#eval addOneSimpler 2

-- lambda exp
def addLambda := fun (x y: Int) => x + y
#check addLambda
#eval addLambda 3 4

-- another way (\r can generate symbol →, -> is also okay)
def addAnother: Int → Int → Int := fun x y => x + y
#check addAnother
#eval addAnother 3 4

-- types!

-- 3: Int
-- -2: Int

-- 0: Nat
-- 1: Nat

-- 3.14: Float
-- 3.00: Float

-- 'c': Char

-- "Hello": String

-- true: Bool
-- false: Bool

-- (): Unit

-- fun (x: Int) => x + 1: Int → Int

-- struct
structure P where
  x: Float
  y: Float
deriving Repr
#check P

def O: P := P.mk 0.0 0.0 -- P.mk is a constructor
def OAnother: P := {x:= 0.0, y:= 0.0}
#eval O.x

-- inductive type
def myNot (b: Bool):=
  match b with
  | Bool.true => Bool.false
  | Bool.false => Bool.true
#check myNot
#eval myNot Bool.true
#eval myNot (1 > 2)

def myNotAnother: Bool → Bool
  | Bool.true => Bool.false
  | Bool.false => Bool.true
#check myNotAnother

inductive Shape where
  | rect (a b : Float) : Shape
  | circ (r : Float)   : Shape
  | tria (a h: Float)  : Shape
deriving Repr
#check Shape

def area (s : Shape):=
  match s with
  | Shape.rect a b => a * b
  | Shape.circ r => 3.14 * r * r
  | Shape.tria a h => 0.5 * a * h

#eval area (Shape.rect 2 3)
#eval area (Shape.circ 1)
#eval area (Shape.tria 3 4)

-- recursively inductive
-- Nat definition
-- inductive Nat where
--   | zero            : Nat
--   | succ (n: Nat)   : Nat

#check Nat
#check Nat.zero
#check Nat.succ
#eval Nat.succ (Nat.succ 1)

partial def checkCollatz (n : Nat) :=
  if n <= 1 then ()
  else if Nat.mod n 2 == 0 then
    checkCollatz (Nat.div n 2)
  else
    checkCollatz (3 * n + 1)

#eval checkCollatz 233

#eval List.range 10
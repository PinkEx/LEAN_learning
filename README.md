# LEAN_learning

| sort | Prop (Sort 0) | Type (Sort 1) | Type 1 (Sort 2) | Type 2 (Sort 3)        | …    |
| ---- | ------------- | ------------- | --------------- | ---------------------- | ---- |
| type | True          | Bool          | Nat -> Type     | Type -> Type 1         | …    |
| term | trivial       | true          | fun n => Fin n  | fun (_ : Type) => Type | …    |

纵轴的关系：

`check_type(true) = Bool`

`check_type(Bool) = Type`

横轴的关系：

`check_type(Prop) = Type`

`check_type(Type) = Type 1`

…

这是两个不同方向的层次关系。
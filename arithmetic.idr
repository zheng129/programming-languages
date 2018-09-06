{-arithmetic.idr-}

{- the following is pre-defined
data Nat    = Z   | S Nat           -- Natural numbers
                                    -- (zero and successor)

plus : Nat -> Nat -> Nat
plus Z y = y
plus (S n)  y = S (plus n y)

similarly mult
-}


data Exp = First | Onemore Exp | Add Exp Exp | Mult Exp  Exp

mng : Exp -> Nat
mng First = S Z
mng (Onemore n) = S (mng n)
mng (Add e1 e2) = plus (mng e1) (mng e2)
mng (Mult e1 e2) = mult (mng e1) (mng e2)

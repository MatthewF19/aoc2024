⍝ part 1
in ← ⊃⎕NGET 'aoc2024/day5/input.txt' 1
rules ← ⍎¨⊃1↑('BREAK'∘≢¨⊆⊢)in
lists ← ⍎¨⊃1↓('BREAK'∘≢¨⊆⊢)in
t ← ⊃,/2 1∘⍴¨rules

isPair ← {∨/∨/(⍸⍺⍷,1↑t)∘.=(⍸⍵⍷,1↓t)}
check ← {l←⍵ ⋄ ∧/2 {(~((⍺ isPair ⍵) ∨ (⍵ isPair ⍺))) ∨ ((⍺ isPair ⍵)∧((l⍳⍺) < (l⍳⍵))) ∨ ((⍵ isPair ⍺)∧((l⍳⍵) < (l⍳⍺)))}/⍵}
{+/∊{1↑⍵↓⍨⌊2÷⍨≢⍵}¨⍵/⍨check¨⍵} lists


⍝ part 2
fix ← {(~check ⍺ ⍵)∧(check ⍵ ⍺)} {⌽@(1(⌽∨⊢)0<\⍤,2⍺⍺/⊢)⍣≡⍵
{+/∊{1↑⍵↓⍨⌊2÷⍨≢⍵}¨fix¨⍵/⍨~check¨⍵} lists

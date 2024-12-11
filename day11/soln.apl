a ← 41078 18 7 0 4785508 535256 8154 447
⎕PP ← 25

fstSnd ← {⍎¨((⊂(2÷⍨≢)↑⊢),(⊂(2÷⍨≢)↓⊢))⍕⍵}
f ← {
    ⍵=0: 1
    (0=2|≢)⍕⍵: fstSnd ⍵
    ⍵×2024 
}
fs ← ∊f¨

⍝ part 1
≢fs⍣25⊢a

⍝ part 2 (works in theory but takes sooo long)
≢fs⍣75⊢a

in ← ↑⊃⎕NGET 'aoc2024/day4/input-test.txt' 1

⍝ part 1
row ← ↓in
col ← ↓⍉in
rrow ← ⌽¨row
rcol ← ⌽¨col
ldiag ← {⍵⊂⍤⊢⌸⍥,⍨+/↑⍳⍴⍵}in
rdiag ← ⌽{⍵⊂⍤⊢⌸⍥,⍨+/↑⍳⍴⍵}⌽in
rldiag ← ⌽¨ldiag
rrdiag ← ⌽¨rdiag
possible ← (⊂row),(⊂col),(⊂rrow),(⊂rcol),(⊂ldiag),(⊂rdiag),(⊂rldiag),(⊂rrdiag)

+/+/¨+/¨¨'XMAS'∘⍷¨¨possible

⍝ part 2
triples ← ⍉⊖1↓⊖1↓⍉⊖1↓⊖1↓{⊂⍵}⌺3 3⊢in
triplist ← ,triples
tripll ← ,¨triplist

≢('M.M.A.S.S|M.S.A.M.S|S.M.A.S.M|S.S.A.M.M' ⎕S '&') tripll

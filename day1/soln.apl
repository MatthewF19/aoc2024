⍝ part 1
a ← ⊃⎕NGET 'aoc2024/day1/input.txt' 1
nums ← ⍎¨↑(' '(≠⊆⊢)⊢)¨a
col1 ← 1⌷⍤1⊢ nums
col2 ← 2⌷⍤1⊢ nums

col1 +.(|-)⍥(⊂∘⍋⌷⊢) col2

⍝ part 2
+/+/ (⊃×1∘↓)⍤1⊢ col1 ,⍤2⊢ col1 ∘.= col2

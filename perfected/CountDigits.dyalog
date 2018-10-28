 r←CountDigits csv;txt;fields
⍝ Frequency count of digits 0-9 in csv text

 txt←csv~'-'                      ⍝ ignore minus signs
 fields←(~txt∊',',⎕UCS 13 10)⊆txt ⍝ split on , CR or LF
 fields←(⊃¨1⊃¨⎕VFI¨fields)/fields ⍝ valid numbers only
 r←¯1+{≢⍵}⌸⎕D,(∊1↓¨fields)∩⎕D     ⍝ drop 1st digit of each number

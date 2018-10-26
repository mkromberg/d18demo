 r←CountDigits csv;txt
⍝ frequency count of digits 0-9 in csv text

 txt←csv~'-'
 fields←(~txt∊',',⎕UCS 13 10)⊆txt
 fields←(~0∊¨fields∊¨⊂⎕D,'.')/fields
 r←¯1+{≢⍵}⌸⎕D,(∊1↓¨fields)~'.-' ⍝ drop 1st digit of each number

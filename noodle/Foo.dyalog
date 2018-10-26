 Foo;return;txt;fields;url
⍝ frequency count of digits 0-9 in csv text

 url←'http://samplecsvs.s3.amazonaws.com/SacramentocrimeJanuary2006.csv'
 return←#.HttpCommand.Get url
 txt←return.Data~'-'
 fields←(~txt∊',',⎕UCS 13 10)⊆txt
 fields←(~0∊¨fields∊¨⊂⎕D,'.')/fields
 ⎕←⎕D,⍪¯1+{≢⍵}⌸⎕D,(∊1↓¨fields)~'.-' ⍝ drop 1st digit of each number

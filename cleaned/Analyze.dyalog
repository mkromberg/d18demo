 r←Analyze url;return
⍝ Retrieve named file and call CountDigits on contents

 :If 0=(return←#.HttpCommand.Get url).rc
 :AndIf 200=return.HttpStatus
     r←CountDigits return.Data
 :Else
     ('HttpGet failed: ',⍕return.(rc HttpStatus HttpMessage))⎕SIGNAL 22
 :EndIf

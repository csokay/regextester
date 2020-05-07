C_BOOLEAN:C305($found)
C_TEXT:C284($match)
C_LONGINT:C283($i;$position;$length;$start)
C_COLLECTION:C1488($results)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		$results:=New collection:C1472
		$start:=1
		
		Repeat 
			$found:=Match regex:C1019(Form:C1466.Regex;Form:C1466.Input;$start;$position;$length)
			
			If ($found)
				$match:=Substring:C12(Form:C1466.Input;$position;$length)
				
				$results.push(New object:C1471("match";$match))
				
				$start:=$position+$length
				
				
				
			End if 
			
		Until (Not:C34($found))
		Form:C1466.Results:=$results
		
		
End case 

set objshell = createobject("wscript.shell") 
Set objParametros = WScript.Arguments
id = objParametros.Item(0)
objshell.run "escrip.cmd "  & id & ""  ,vbhide  

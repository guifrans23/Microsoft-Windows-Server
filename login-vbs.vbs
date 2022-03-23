'Script de Logon - www.professorramos.com - Aulas de Windows 2003, 2008, 2008 R2 e 2012 Grátis !!!

'============================================================================
'Impedindo exibição de error para o usuário
On error Resume Next
Err.clear 0

'============================================================================
'Mapeando Unidades de Disco, grupo Vendas

Set WshNetwork = Wscript.CreateObject("Wscript.Network")
WshNetwork.MapNetworkDrive "E:","\\srvguuifrans\Estoque","true"
WshNetwork.MapNetworkDrive "P:","\\srvguuifrans\Pedidos","true"
WshNetwork.MapNetworkDrive "Q:","\\srvguuifrans\Promocao","true"
WshNetwork.MapNetworkDrive "V:","\\srvguuifrans\Vendas","true"
WshNetwork.MapNetworkDrive "W:","\\srvguuifrans\PublicaVila","true"

'============================================================================
'Mapeando Impressora 

Set WshNetwork = Wscript.CreateObject("Wscript.Network")
WshNetwork.AddWindowsPrinterConnection "\\srvguuifrans\EPSON-V4", "EPSON-V4"
WshNetwork.AddWindowsPrinterConnection "\\srvguuifrans\HPLASERJET", "HPLASERJET"
WshNetwork.SetDefaultPrinter "\\srvguuifrans\EPSON-V4", "EPSON-V4"

'============================================================================
'CRIA ATALHO DO COMPARTILHAMENTO NO DESKTOP

strAppPath = "P:\"
Set wshShell = CreateObject("WScript.Shell")
objDesktop = wshShell.SpecialFolders("Desktop")
set oShellLink = WshShell.CreateShortcut(objDesktop & "\PublicaVila.lnk")
oShellLink.TargetPath = strAppPath
oShellLink.WindowStyle = "4"
oShellLink.Description = "PublicaVila"
oShellLink.Save 

strAppPath = "V:\"
Set wshShell = CreateObject("WScript.Shell")
objDesktop = wshShell.SpecialFolders("Desktop")
set oShellLink = WshShell.CreateShortcut(objDesktop & "\Vendas.lnk")
oShellLink.TargetPath = strAppPath
oShellLink.WindowStyle = "4"
oShellLink.Description = "Vendas"
oShellLink.Save 

'ENVIA O COMANDO PARA APERTAR A TECLA F5 PARA ATUALIZAR OS ICONES NO DESKTOP
WshShell.SendKeys "{F5}"

'============================================================================
'SINCRONIZA HORARIO ESTAÇÃO x SERVIDOR
Set wshShell = CreateObject("WScript.Shell")
wshShell.Run "NET TIME \\srvguuifrans /SET /Y", 0, True



'============================================================================
'Boas Vindas Ao Usuario

Set objUser = WScript.CreateObject("WScript.Network")
wuser=objUser.UserName
If Time <= "12:00:00" Then
MsgBox ("Bom Dia "+Wuser+", você acaba de ingressar na rede corporativa srvguuifrans, por favor respeite as políticas de segurança e bom trabalho!")
ElseIf Time >= "12:00:01" And Time <= "18:00:00" Then
MsgBox ("Boa Tarde "+Wuser+", você acaba de ingressar na rede corporativa srvguuifrans, por favor respeite as políticas de segurança e bom trabalho!")
Else
MsgBox ("Boa Noite "+wuser+", você acaba de ingressar na rede corporativa da srvguuifrans, por favor respeite as políticas de segurança e bom trabalho!")
End If

Wscript.Quit

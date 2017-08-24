FROM rcvr

LABEL Description="Ruby Programming Language for Windows" Vendor="Ruby" Version="2.2.4-x64"

RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -Method Get -Uri http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.2.4-x64.exe -OutFile c:\rubyinstaller-2.2.4-x64.exe ; \
	Start-Process c:\rubyinstaller-2.2.4-x64.exe -ArgumentList '/verysilent' -Wait ; \
	Remove-Item c:\rubyinstaller-2.2.4-x64.exe -Force

WORKDIR /Ruby22-x64/bin

CMD [ "C:/Ruby22-x64/bin/ruby.exe --version" ]

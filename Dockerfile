FROM microsoft/nanoserver
LABEL maintainer="Adrian Lucrèce Céleste <adrianlucrececeleste@airmail.cc>"


RUN powershell Invoke-WebRequest -Uri https://github.com/gohugoio/hugo/releases/download/v0.54.0/hugo_0.54.0_Windows-64bit.zip -Outfile hugo.zip
RUN powershell Expand-Archive C:\\hugo.zip -DestinationPath C:\\hugo

WORKDIR C:\\workspace
CMD [ "--help" ]
ENTRYPOINT [ "C:\\hugo\\hugo.exe" ]
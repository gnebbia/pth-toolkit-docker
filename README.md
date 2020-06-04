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

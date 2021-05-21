# NFS network file system
access network file by local mount.


## server side

### install server
```bash
sudo apt install nfs-kernel-server
```


### mount point

#### make a dir
```bash
mkdir /srv/nfs4/d
```

#### mount dir
```bash
# mount data disk to d
sudo mount --bind /mnt/dxxxx /srv/nfs4/d
```
>> make persistence need config `fstab`
```bash
/mnt/dxxxx  /srv/nfs4/d none    bind    0   0
```

### export system file

#### open config file.
```bash
sudo vim /etc/exports
```

#### append text to file
```
/srv/nfs4       192.168.66.0/24(rw,sync,no_subtree_check,crossmnt,fsid=0)
/srv/nfs4/d     192.168.66.0/24(rw,sync,no_subtree_check)
```

#### save and exit
type `:x` and press `enter`

#### share
```bash
sudo exportfs -ra
```

>> check it use `sudo exportfs -v`

### firewall config

```bash
sudo ufw allow from 129.168.66.0/24 to any port nfs
sudo ufw status
```

## client side

### install client
```bash
sudo apt install nfs-common
```

### amke mount point

#### make a dir local
```bash
sudo mkdir -p /srv/d
```

#### mount point from server side
```bash
sudo mount -t nfs -o vers=4 192.168.66.11:/d /srv/d
```
>> make persistence need config `fstab`
```bash
192.168.66.11:/d    /srv/d  nfs defaults,timeo=900,retrans=5,_netdev 0 0
```


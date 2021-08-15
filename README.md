# deploy-guideline
Example config for IX42.

## Requirements

- 1 Core CPU (Min) / 2-4 Cores CPU (Recommended)
- 512M RAM with 512M Swap (Min) / 1-2G RAM (Recommended)
- Linux with Docker support. (Archlinux Recommended)

## ZeroTier
ZeroTier, by default, assigns a pretty 'random' interface name for each network ID. To modify this, you need `/var/lib/zerotier-one/devicemap` in this format: 

`networkID=<your desired interface name>`.

## VXLAN

``` bash
ip link add vx-ix type vxlan id 100 dev [INET_IF] dstport 4789
ip link set vx-ix up
brctl addif br-ix vx-ix
```

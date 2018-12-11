---
title: "Bitesize: socket.getsockname"
date: 2018-08-23T17:30:00+01:00
description: "Quickly get the hosts local IP address"
categories: ["development"]
tags: ["python"]
draft: false
author: "Florian Einfalt"
---

Whilst looking at some old code of mine, I discovered a quick way to
programmatically retrieve a hosts local IP address, the
`socket.getsockname()` function.

<!--more-->

To get the local IP address, create a UDP socket (see `socket.SOCK_DGRAM`
below), connect to an arbitrary server (this can be local or remote, such
as `google.com`) and run the `getsockname()` function on the socket.

This returns a tuple and the first item in that tuple is the hosts local
IP address. Easy.

{{< highlight python3 >}}
import socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.connect(('google.com', 80))
ip, _ = sock.getsockname()
sock.close()
print(ip)

# 192.168.1.2
{{< /highlight >}}

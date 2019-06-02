---
title: "Accessing my home server with Secure ShellFish (beta)"
date: 2019-06-02T16:45:00Z
description: "Accessing my home server with Secure ShellFish (beta)"
categories: ["workflow"]
tags: ["workflow"]
draft: false
author: "Florian Einfalt"
---
Ever since setting up my Mac mini home server as a companion to my existing Synology NAS, I have been looking to streamline my workflow for accessing the data on my NAS when working on iOS. My goal was to make file access as straight forward and secure as possible: security in this context means not exposing any services to the public internet and to incorporate strong authentication protocols. Ease of use requires the workflow to include modern iOS features such as drag and drop and support for the iOS Files app. When I heard about [Secure ShellFish](https://secureshellfish.app), a new app by Working Copy developer [Anders Borum](https://twitter.com/palmin), which is currently in Beta, I had to become part of the TestFlight to see whether it could simplify my workflow. (Spoiler alert: It did.)
<!--more-->

Secure ShellFish is an iOS app that enables connections between your iOS device and any local or remote server through SSH/SFTP. SSH/SFTP is an old, boring and therefore really solid and reliable protocol for remote shells and file transfer. It’s a protocol that I personally already use in my various workflows through apps like Panic’s Prompt or Blink, mostly to perform administrative tasks on my various servers and VPSs, so it is already setup and ready to go on most devices including the Mac mini server at home.

SSH/SFTP supports key-based authentication which means that it is considerably more secure than standard username/password-based authentication and Anders’ implementation in Secure ShellFish has been able to import existing RSA SSH keys for the last couple beta releases. These keys also conveniently sync between iOS devices using iCloud.

Beyond managing SSH keys, the only thing you will have to use the Secure ShellFish app itself for, is configuring connections to your server(s). This is dead simple – for me, as simple as typing a hostname, selecting my SSH key and tapping the “Connect” button. Optionally, you can define a root directory on the server you’d like to start browsing from and, in the Pro version which will be an In-App Purchase when the app is released, Secure ShellFish will also support Offline Files for when you are not connected to your server but still want to access important files.

Secure ShellFish implements modern iOS APIs and acts as a File Provider, exposing all it’s file management features to the iOS Files app. This means that all further interaction with your servers is done in the familiar environment of the Files app thus enabling drag and drop and the ability to easily share files between multiple File Providers (such as iCloud Drive, Dropbox and Google Drive). One feature I specifically appreciate is the little hourglass icon that is displayed when the app is loading content through a slow connection, this so much more useful that the blank white screen usually displayed by other File Providers in the Files app.

Secure ShellFish uses iOS notifications to let the user know about issues with connections which is super helpful when on spotty cellular or Wifi connections and is something that is usually handled poorly by other apps implementing the File Provider API.

So how has Secure ShellFish changed my workflow in regards to accessing files on my home server on iOS? The answer is: *significantly*.

I was already accessing my home network through an OpenVPN service that is running on my Mac mini, but now I am able to switch off all other file transfer protocols (SMB, WebDAV) on both the Mac as well as the Synology NAS and solely rely on the tried and tested SSH/SFTP protocol with strong authentication for both administrative and file transfer tasks. Not only does this reduce the potential exposure to vulnerabilities but it also simplifies all interaction with the server to a single protocol and authentication method. In fact, the NAS does not expose any services other than NFS (so the Mac mini can read and write files on it) which is locked down to only allow connections from the Mac mini itself.

On the iOS client-side, I have been able to get rid of apps like FileBrowser, FileExplorer and Synology’s “DS file” app which I used in a round-robin fashion with different password-authentication-based protocols (SMB, WebDAV) until now and was able to unify all file transfers to use Secure ShellFish, which, even though it is still in Beta, already seems more reliable and performant than these apps I now consider legacy. This has enabled me to create more efficient workflows that reduce the cognitive load as a result of relying on a single, well-working solution not three, in my opinion, only semi-reliable solutions.

I feel like the last two paragraphs almost seem too short and simplistic to really account for the change Secure ShellFish has enabled me to make. But it is really as simple as that: for me, the killer feature in Secure ShellFish is that it enables *simplification* where other apps complicate things. As a result, there is not a lot more to say than to list all the protocols and apps I got rid of and won’t have to worry about going forward.

It is applications like Secure ShellFish and Working Copy that are focused and well-engineered whilst embracing modern iOS concepts and APIs that make iOS a platform and eco-system worthy of continued exploration and investment.

*Thanks to Anders Borum for providing access to the Secure ShellFish beta!*
---
title: "A mere-mortal's guide to security and privacy online – Part 3: Encrypted file transfers"
date: 2019-02-19T12:45:00+01:00
description: "Part 3: Encrypted file transfers"
categories: ["security"]
tags: ["security"]
draft: false
author: "Florian Einfalt"
---
Now that we have discussed securing access to vital online services in parts [1](https://florianeinfalt.de/posts/sec-1-password-managers/) and [2](https://florianeinfalt.de/posts/sec-2-multi-factor-auth/) of this series, I will turn to another common activity that does not have a straight forward security and privacy story: file transfers.

Most of us need to send files that contain confidential information. These could be invoice scans that we need to send to our accountant, property or legal documents that we exchange with our lawyer or market research and sales data that we would like to share with our business partners. But how can you ensure the confidentiality of these important documents in transit and how can we minimise the risk of them being stolen whilst stored on a third party service’s servers? Let’s dive in.
<!--more-->

As with many categories of services, there is a multitude of offerings in the space of file sharing applications: WeTransfer, Hightail, Google Drive, Dropbox to name all but a few. In this post I’ll focus on solutions that are aimed at one-time file sharing use-cases as described above and will omit more complex collaboration and synchronisation services such as Google Drive or Dropbox.

What are the key features you should look for in a secure file sharing service?

- Encryption in transit: for web-based services, this means that the connection to the server should be established via HTTPS to ensure the connection is private so that even if your connection was being eavesdropped (for example because you are sending files from a coffee shop Wifi), the attacker would not be able to read the documents being sent.
- Encryption at rest: once your files have been securely transferred to the file sharing service in question, you want to make sure that the files are *stored* encrypted as well. In the best case scenario, this encryption happens client-side (i.e. on your device) so that the company providing the file sharing service cannot read your data on their servers either.
- Expiring links: commonly, file sharing services will generate a link for uploaded data that you can share with the intended recipient of your files. Ideally, this link should be “expiring”, which means it should only be valid for a short amount of time, usually a few hours to a day. After that period the link would become invalid and a security-conscious provider would also delete your data from their servers. If you want to share the files again, you will have to re-upload them and the a completely new link will have to be generated. 
- Deletion: as with expiring links, there should be an automatism that deletes your files from the company’s servers – either when it is successfully being downloaded or after a certain amount of time has passed without any activity. This protects the privacy of your files and minimises the risk of theft. In general, you should always have full control over your files and that includes the right to delete them at a moments notice. Any service that doesn’t offer this functionality should be suspect and is not to be trusted.

So we have the criteria that we want to judge services against, but how do you get to know about the technical intricacies of the individual services? This is slightly tricky and will to a certain extent depend on information published by service providers and therefore your trust in these individual companies.

My personal recommendation is Mozilla’s [Firefox Send](https://send.firefox.com). Mozilla is a well-regarded company known for the Firefox web browser and a long-time contributor to open-source with an impressive track record on security and privacy related features. Mozilla is not a Venture-Capital-backed business that needs to grow at any cost and therefore has no incentive to alter its stance on privacy any time soon.

Send is a free, stand-alone service that you can use with any browser (Firefox is not required) that fulfils all the requirements set out in the list above. It’s easy to use and has been reliable in my tests, the only slight limitation being a soft size limit of 1GB per file. Give it a go and increase the privacy and security of your personal or business file sharing.

This concludes the mini-series on security for now. In the next article, I’ll be looking at a more privacy-related subject: online ads, trackers and how to block them.
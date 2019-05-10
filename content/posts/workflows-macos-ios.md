---
title: "Moving workflows from macOS to iOS"
date: 2019-03-19T16:00:00+01:00
description: "How Shortcuts, Pythonista and other tools enable professional iOS-based workflows"
categories: ["workflow"]
tags: ["workflow"]
draft: false
author: "Florian Einfalt"
---
At the beginning of 2019 I embarked on a little experiment. I had been an avid and happy user of Mac OS X (now macOS) since the early 2000s when I bought my first white plastic iBook and made the switch from Windows. Inspired by the articles of Federico Viticci on [Macstories](http://macstories.net), I set out to explore how much of my entrenched Mac-based workflows for photography, development, business and writing this blog could be converted to iOS on the 10.5-inch iPad Pro. 
<!--more-->

## Photography

Having studied photography at university, I always had fairly elaborate imaging workflows using Adobe Lightroom, Adobe Photoshop that relies on a tight integration with my Synology NAS for backup and archiving. Since Adobe moved to aggressively pushing their Creative Cloud subscription and replaced Lightroom Classic with their simplified Lightroom CC product, I was aiming to substitute these with a mixture of iCloud Photo Library, [Darkroom](http://darkroom.co/), which recently saw an iPad-optimised release, [Affinity Photo](https://affinity.serif.com/en-gb/photo/ipad/) and some Python scripting in [Pythonista](https://omz-software.com/pythonista/). This is the area in which I have put the most efforts, but conversely is also the one with the most potential for improvement.

My workflow generally starts with importing RAW files from my [Fuji X100F](http://www.fujifilm.com/products/digital_cameras/x/fujifilm_x100f/) and creating a “project” (or album) in iCloud Photo Library. In my legacy workflow with Lightroom this was a manual import process that I have now replaced with a Shortcut that grabs the last import from Photos and creates an album with the appropriate date and name ready to be retouched in Darkroom, Affinity Photo and [Filmborn](https://www.filmborn.com/). So far, so great.

### Backups & Sync

The real issue here is the backup/archiving story and how to sync edits between devices. Prior to my switch to an iOS-based workflow, I had [Arq](https://www.arqbackup.com/) backup my Mac’s home folder to both [Backblaze B2](https://www.backblaze.com/b2/cloud-storage.html) and my NAS. Additionally, I created a periodic bootable full disk clone with [SuperDuper](https://shirt-pocket.com/SuperDuper/SuperDuperDescription.html) which means that I would eventually have three separate backups of my RAW files and the Lightroom library catalogue containing the edits. Syncing edits between devices was not an issue in those days because I would only ever work on photos on my Macbook Pro. So this is an area in which I would have hoped to gain a little more flexibility: imagine creating a rough edit on the go using the iPad/iPhone and making more detailed edits on the Mac at home, all in one application and workflow.

Of course, iCloud Photo Library will upload all my RAW files to iCloud and thus create a “kind-of” backup, but it not really a solid backup in my book: I cannot check the integrity of my images in the way I would like to (using checksums) and whilst the service has been super reliable for me recently, there is a lingering fear that *something* is going to go wrong at *some point* and I’ll be stuck with my precious digital negatives hanging in the balance. As a result, I created another Shortcut that uploads a project’s RAW files to my NAS via a Pythonista script that uses WebDAV to connect to my Synology. This works whenever I am on my home Wifi or connected to the VPN I host on my Mac mini when I’m out and about. On my NAS, I run a [Synology CloudSync](https://www.synology.com/en-us/dsm/feature/cloud_sync) job that uploads all files to Backblaze B2 and verifies the integrity of the backup using checksums. Whilst this sounds like a setup that is quite involved, it is automated to a degree that makes it painless to operate and I am very comfortable with the level of redundancy and the number of backups it provides.

I will admit that what I came up with lacks finesse in many aspects but I am also hopeful that these shortcomings can be resolved as the eco-system develops and opens up with further releases of iOS and the apps I use most frequently for photo editing.

### Editing

Photo editing and retouching has been a revelation on iPad. Assuming you are not creating gigantic multi-element composites with thousands of layers but mainly develop RAW files and do light retouching on them, the iPad with its great ecosystem of apps and the amazing Apple Pencil is currently the best and most flexible platform to do that work on – hands down.

I commonly start by developing RAW files in Darkroom which works really well as a Lightroom replacement that directly integrates with the iOS Photo Library. I visually migrated all my Lightroom presets to Darkroom filters (the actual adjustments do not correspond directly) which has enabled me to cut Lightroom and its custom library format out of my new, iOS-based workflow completely. Darkroom is fast and fluid and supports batch editing such as copying and pasting adjustments between images.

When a photo needs actual retouching, I will duplicate said file and open it in Affinity Photo. Affinity Photo is a very capable and comparably cheap piece of software given its powerful feature set. I have been working with the Mac app and its iOS counter-part since mid-2018 and have not launched Adobe Photoshop since then. For some final colour treatment and a classic film look I will often apply one of the many excellent Filmborn filters and save the result back to the iOS Photo Library.

Once I have a collection of edited full-res JPEGs saved in my library, I can delete the RAW files since these are already backed up on my NAS. At present and depending on the applications used, this is almost certainly going to incur some data loss and represents the weakest point of the workflow. As there is currently no way to save edits made in Darkroom separately to the actual image file (I remember Adobe Camera RAW saving small .xmp side-car files with RAW files), I have to bake the colour corrections into the JPEGs – something that I am keen to change down the line. Affinity Photo creates its own version of the file in a variety of popular file formats which matches Adobe Photoshop’s behaviour in my legacy workflow. Filmborn’s changes are entirely revert-able in Photos because the application integrates with iOS’ editing APIs, a mechanism that would enable edit sharing for applications like Darkroom as well.

All in all, I am fairly happy with the workflow although I wish iOS file management was good enough to not require elaborate Pythonista scripts to facilitate backups. It would be a great pro-level feature if Darkroom had the ability to export edits to a separate file and sync any changes between devices. Of course this is not something that was available to me when I was using Lightroom Classic but in theory the Lightroom Library could have been accessed from multiple computers and Lightroom CC seems to offer proprietary library-in-the-cloud functionality.

## Development

I am a freelance software developer in my day job, so it should come as no surprise that I have several workflows that involve `ssh`, `git`, `python` and various other frameworks. I was conscious that these techniques would be the hardest to replicate on touch-based iOS devices without a shell.

Yet, using [Working Copy](https://workingcopyapp.com/), [Pythonista](https://omz-software.com/pythonista/), [Blink](https://www.blink.sh), `tmux` and `vim`, I made an attempt to emulate most of the procedures I commonly execute on a Mac on iOS, albeit the Mac would still play the role as the SSH host that I would connect to from my iPad. This works well for short sessions and quick fixes from the coffee shop but otherwise brings many frustrations with it, especially when the Wifi signal is less than ideal.

As of writing this post, I have not shifted significant portions of my development workflow to iOS. There are still too many obvious down-sides in iOS for these purposes such as no direct file system access and no native shell which slow me down to a point where I just feel unproductive. One can hope that at least some of this will be addressed by Apple in forthcoming OS updates although I would be very surprised to see a first-party terminal application on iOS any time soon. I will give it another go then.

## Business

As a small business owner and co-founder of a recently founded software start-up, I also have what feels like a gazillion administrative tasks: dealing with accounting, invoices, bank statements, payments, documents, presentations, bookings, the list goes on. File handling and automation were relatively simple on macOS due to the Finder and the many scripting languages supported alongside Apple’s tools such as Automator. With the introduction of Shortcuts as a catalyst, I started to convert these tasks to iOS so could do admin on the go using my iPad or iPhone.

### Bookings

My first extended test of the then-new Shortcuts app was in the autumn of 2018 when I wanted to create a Shortcut for adding client bookings in my freelance business to my work calendar. The result of this effort is a Shortcut that will allow me to select the client from a list of contacts that are tagged appropriately, define the start and end date and specify the relevant weekdays the booking is for. This data is then combined into a paragraph of text that is passed to [Fantastical's](https://flexibits.com/fantastical-iphone) natural-language-processing engine which automatically creates the relevant recurring events in my work calendar for me.

### Documents

A lot of the admin work in my small businesses revolves around incoming documents in various formats and naming conventions that I need to catalogue and file away in my business’ folder structure on Dropbox. These could be PDFs or images received via email or simply copies of entire emails. In order to support this wide variety of inputs, I created a share sheet extension using Shortcuts that accepts all sorts of files and either converts them to PDF on the fly or uses the file as is. Then it applies a set naming convention based on the current date, the supplier and the good/services purchased and stores the file in a folder on Dropbox that is determined by user selection from a menu. All of this sounds simple and is not too difficult to implement for an experienced Shortcuts user but it has elevated my document filing workflow to a new level and has introduced consistency that was much harder to maintain in my legacy workflow. I no longer need to convert, rename and move files manually it is all done through the Shortcut which is available across my iOS devices.

### Scans

I also use a similar workflow to deal with physical documents that I receive through the mail and need to file on Dropbox. Since starting my first business I have used [Scanner Pro by Readdle](https://readdle.com/scannerpro) to create and upload document scans. Scanner Pro uploads straight to iCloud Drive from where a custom Shortcut picks up and takes some user input such as the business to scan will be filed for, the document date, the sender and a subject line. The scan is then filed in the right place automatically and I have the option to copy the scan to a shared location as well as send an email notification to my accountant should I wish to share the document with them.

These changes along with mobile versions of my accounting software [Xero](https://www.xero.com) have completely transformed when and where I can work on my businesses' administrative tasks: I can deal with them while waiting for the bus or quickly in between meetings and be sure that everything will be filed away in its proper place when I get back to my home office.

## Blog

Lastly, I had started this blog half-way through 2018 and had created a publishing workflow based on the [Hugo](https://gohugo.io) static site generator. Hugo is a Go application which is only a `brew install` command away in a shell on macOS but is simply not available on iOS. So I needed to build an iOS-compatible alternative using components that did not cost anything and were independent of my Mac. Challenge accepted.

### Writing

In the absence of a shell on iOS (yes, I am using iSH on my iPad Pro, but Hugo is still crashing on it) to run `hugo` and `hugo new` commands in, my new solution had to be able to create new posts and render my static site.

Since I store my blog on [GitHub](https://gihub.com), it was a no-brainer to use [Working Copy](https://workingcopyapp.com) for version control. Working Copy is just the best mobile Git client I have used to date and supports GitHub, Bitbucket and GitLab repositories with SSH authentication, just like `git` on the Mac.

Thanks to custom templates and file provider integration I can quickly and easily create a new blog post in [Textastic](https://www.textasticapp.com), jot down my initial thoughts and then continue writing and refining the post in the zen-like environment that is [iA Writer](https://ia.net/writer), my favourite app for longer form writing. I tend to keep more code-heavy posts with many or more extensive examples in Textastic due to the superior syntax highlighting, SSH integration and the upload/download facilities it provides.

Whilst I am still waiting for an iOS version of my desktop text editor of choice, [Visual Studio Code](https://code.visualstudio.com), I am happy with what Textastic provides and have completely switched to iA Writer for Markdown editing on iOS and macOS.

### Publishing

On the Mac, rendering and publishing my blog was easy: run `hugo`, wait a few seconds and use `lftp` to upload all the files to my web server, job done. Not so on the iPad, though. To date I have not found a reliable way of running Hugo on iOS to render my Markdown files to HTML ready for upload to my web server, so I built a new system around the [Travis CI](https://travis-ci.org) continuous integration platform.

Travis CI is free for public GitHub repositories so I added a `.travis.yml` file to my repository which contains instructions for the continuous integration platform to run every time I push new content to GitHub and thereby trigger a webhook. It will download Hugo, render my Markdown to HTML and upload everything to my web server on every push, completely automatically. To be honest, this set up is probably better than my legacy workflow because it literally enables me to make amendments and fix typos from my iPhone on the go but it is also a little less immediate and with the rendering happening on Travis CI, I can only check the final result once it is published to my blog. I am currently exploring how to incorporate a “draft” mode that renders new content but does not publish it straight away using `git` branches and a draft subdomain. Stay tuned.

#### Update: 10th May 2019

After some good feedback on Twitter (thanks to [@dzamir](https://twitter.com/dzamir), [@yann_ck](https://twitter.com/yann_ck) and [@RobCArnold](https://twitter.com/RobCArnold)) and with the future of Travis CI rather unclear after its acquisition, I have updated my publishing workflow quite drastically. I now use [Netlify](https://netlify.com) to monitor my blog’s repository on GitHub for any new pushes. This in itself is nothing new, but Netlify supports different deployment strategies for different branches, such that I can work on a blog post on a “drafts” branch and preview everything on a live deployment separate from my blog’s production deployment. When I am happy with the result I can merge the post into the “master” branch using Working Copy, push to GitHub and Netlify will handle deployment to production. The added benefits with this workflow are optional email notifications for every deploy, the ability to easily roll back to previous deploys, the super simple handling of custom domains including SSL and the speed with which Netlify renders and deploys in general – best of all the basic plan is free and includes a generous 100 GB of bandwidth per month. The entire migration took about two hours from start to finish and I feel that this represents a significant improvement over my old publishing workflow. 

## Summary

I can say that over the last three months or so the iPad has moved into the position of my daily driver for most tasks outside of my day job in software development. The ease of use of iOS and the focused environment of a maximum of three open applications at a time on the iPad Pro have allowed me to be more focused on the task at hand and be more productive in more places than before. This is further emphasised by the incredible portability of the iPad compared to my 15" MacBook Pro (no surprise there) that allows me to treat the iPad as a device that I always carry with me, almost regardless of where I am.

Of course there are still some well-known frustrations with iOS (e.g. file system access) that many people have pointed out ever since the iPad debuted. For me, iOS 12 has reduced their impact to an extent that does no longer impede my personal productivity for most tasks – the one caveat being that you need to be willing to re-think some of the ways in which you design your workflows in order to adapt to the paradigms of iOS, touch-based user interfaces and their different sets of trade-offs as compared to traditional pointer-based operating systems.

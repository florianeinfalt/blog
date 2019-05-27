---
title: "Automating Hugo blog post creation using Shortcuts"
date: 2019-05-27T11:00:00Z
description: "Automating Hugo blog post creation using Shortcuts"
categories: ["workflow"]
tags: ["workflow"]
draft: false
author: "Florian Einfalt"
---
One of the true advantages of using the static site generator Hugo on macOS is the `hugo new` command which creates a new Markdown file that has all the relevant metadata fields pre-created so that you only have to add a little bit of information and you’re ready to start writing a new blog post. Today, I ventured to replicate this functionality with Siri Shortcuts, here’s how that went.
<!--more-->

The Shortcut is nothing fancy, just a series of prompts that ask what the post title and description are, what the intended publish date will be, what category the post fits in (you should obviously adjust these menu entries to suit your needs), guess-timates a filename based on the blog title and saves the resulting file in the location of your choice. My default for this would be the `drafts` branch of my blog repository in Working Copy. Once saved, the Shortcut will display the “Open In...” menu from which I can open iA Writer which supports open-in-place from Working Copy and start typing straight away.

In many ways this is more comfortable than `hugo new` because the shortcut manages all metadata-related entries for me based on a template defined in the Shortcut itself. I still have to define the save location manually (this is something `hugo new` does automatically for you) but it is a small trade-off especially if you take into account how rapid the process is from launching the Shortcut to writing.

If you find this useful, please [download the Shortcut](https://www.icloud.com/shortcuts/364019bf74c842ba86270dc6d16cc937) and let me know what you think.
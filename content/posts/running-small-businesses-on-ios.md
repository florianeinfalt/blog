---
title: "Running small businesses on iOS"
date: 2019-07-22T16:45:00Z
description: "Running small businesses on iOS"
categories: ["workflow"]
tags: ["workflow"]
draft: false
author: "Florian Einfalt"
---
As I have mentioned on previous workflow posts, I run two small businesses, a freelance business through which I offer Python development services and a start-up, flow.studio, which is a project management platform that specifically targets the fashion industry. Managing my time, invoicing as well as bookkeeping and taxes can be a time sink especially if you do not have specialist employees or partners to fall back on. I do work with an accountant who deals with my taxes, but all other admin is part of my daily workload.

Efficiency is crucial in this regard as the amount of time I spend on admin obviously comes off the time I can sell to my clients or make progress on our product. In this post, I will explain how I integrate different services for banking, bookkeeping, time management and how all of this is glued together with Shortcuts on iOS.
<!--more-->

# Business Banking with Tide

I live in London and thus my businesses are registered in the UK, which means that I have direct access to possibly the most vibrant market for financial services in the world. There is a vast number of start-ups offering online-only bank accounts for personal and business use such as Monzo (personal) and Tide (business). These “banks” typically allow setup of a bank account through an app in a few minutes so it is really quick and easy to get going when you are starting out. I used to bank with HSBC but setting up a business account for my start-up with four co-founders was such a bad experience that we aborted the attempt after over a month and instead went with Tide, completing set up from start to finish between breakfast and lunch.

What’s also significant: because these accounts are online-only, any administration such as customer support, adding or removing debit cards or managing direct debits and standing orders is done through the corresponding iOS app which is a breath of fresh air for anyone who is used to queueing in branch or being stuck in a telephone queue for hours waiting to speak to a bank’s customer agent.

The most important criteria though is the integration these services offer with accountancy software such as Xero or FreeAgent. No longer do you have to remember to periodically (often daily) authenticate and manually pull transactions into your bookkeeping system but transactions are pushed and will automatically be displayed for reconciliation using – in my case – Xero’s API, a big time saver. Authentication is handled once, during setup, and you are good to go. On top of all of this, Xero will also notify me about any new transactions using iOS push notifications so this has become a totally automated process.

The icing on the cake is that the Tide iOS app is capable of granting access to up to five businesses, so that checking account balances, making payments or ordering or freezing debit cards for both my companies is possible where ever I am. I don’t even need to log out and log in again.

# Bookkeeping with Xero

As with banking, there is a seemingly infinite number of options when it comes to accountancy software. For my businesses, I decided to use Xero, a pretty well established player in the UK that is compliant with digital taxation systems now made mandatory by HMRC. If you work with an accountant it makes sense to opt for a system that they are at least comfortable with. In my case, my accountant is the admin of my Xero instance and a true expert. This saves me a lot of time when it comes to intricate questions about bookkeeping but also how the software works in situations when a transaction is not a common case.

As mentioned above, I think it makes a tremendous difference to my workload how well my business account and my bookkeeping system integrate with each other. Reconciling transactions (matching account transactions with bills and invoices) that have been pushed into Xero by Tide is the most common thing I do on a regular basis. Thanks to Xero’s simple yet capable iOS app I can do this on the go and thanks to the fact that I can register multiple companies in the app, I can do this for both my businesses without hassle.

I scan incoming invoices with Scanner Pro and use an automated filing system based on Siri Shortcuts that will save the invoice as a PDF in the right folder in Dropbox. Since Xero’s iOS app integrates well with the iOS Files app, reconciling a transaction is as simple as assigning a supplier from my contacts database and uploading the relevant PDF from the Dropbox file provider.

Outgoing invoices are easily created and approved in the Xero app, ready to be sent to clients via configurable email templates. I send every to my own email address as well as my client’s – this way I know the email has been dispatched successfully using Xero’s built-in email system. Another nice side effect is that I can file the attached invoice PDF directly from the email client using a Siri Shortcut that saves the file in the correct folder on Dropbox so that I have an archive of all invoices sent at my finger tips at all times.

On top of this, Xero has a capable REST API that allows programmatic access to my bookkeeping data and uploads of files. More on this in a separate post.

# Time Management with Things and Fantastical

Juggling multiple clients, the administrative demands of two businesses with vastly different needs and making sure accounting and tax deadlines are adhered to can be a challenge at the best of times. I rely on some of the best citizens of the iOS eco system, Things and Fantastical with their powerful feature sets, to stay on top of it all.

Whenever I get a request from one of my clients, I have to check my availability in the time frame requested. Making a mistake on that can lead to an embarrassing double-booking and at least one less than happy client. In order to not fall victim to this situation, I decided to migrate from my manual “create-an-event-and-manually-copy-it-to-all-relevant-dates” process to an automated process of blocking availability in my calendar using a Siri Shortcut: “Add Booking” lives on my home screen and is a multi-step Shortcut to decide what exactly to add to my calendar.

In the first step, I select one of my clients from the iPad’s contact database, then I enter a start and end date and select the relevant week days I have agreed to do work for the client. After a confirmation prompt, all this information is being collated into a format that is compatible with Fantastical’s natural language interface and passed to Fantastical. This creates a recurring event on the selected week days between start and end date and puts it on my “Freelance” calendar once I tap the “Create” button, ensuring that a double-booking is much less likely than in my previous “system”.

I use Things as a companion application to Fantastical to manage my to-dos. I have devised a personalised, GTD-inspired workflow for my tasks which has been the single biggest differentiator in my productivity with the added benefit of dramatically reduced cognitive load as compared to the more manual, physical notes-based system I was using before.

I greatly rely on Things’ repeating task system that is perfect for managing recurring to-dos for various projects such as tax deadlines, reminders to send client invoices and weekly tasks such as backups of my main production machine. In addition, I go through Things every morning and organise any to-dos that I will have to complete that day. This gives me a decent idea about the workload I will have to anticipate and the time necessary to action all these items. As the day progresses, I might create new to-dos that either go straight into the “Today” view for completion later in the evening or they will be picked up during planning the following morning.

Being able to rely on a single system that holds all my personal and businesses  tasks but only shows what is relevant for a given context or at a given point in time, has been a revelation as it reduces the cognitive load commonly associated with systems that require you to hold and remember all tasks on a given day in your mind. At the end of the day, it allows me to concentrate on client work and running my business not managing my tasks...

# Tying it all together with Shortcuts

Ever since I started moving a lot of my workflows to the iPad and iOS, first Workflow and later Siri Shortcuts have been an integral part of the transition because they allowed me to work around the limitations inherent to iOS in a productive way. But especially when I look at Shortcuts through a business-focused lens, I can see how, despite its limitations, iOS + Shortcuts is now my preferred platform to get my business-related work done.

Reliably and reproducibly adding calendar events for freelance work with “Add Booking”, filing incoming and outgoing invoices using “Save incoming Invoice” and “Save outgoing Invoice” without having to think about naming convention and correct location in the folder structure, as well as scanning and filing physical documents and sharing these with my accountant with the help of “File and Share Scan” has been a tremendous time saver and convenience such that I complete most business administration tasks either on my commute or whenever I have five minutes at home.

In the past, I used fixed time slots to take care of administrative tasks because of the concentration usually required to do this type of work correctly – now I can get most common tasks done at pretty much any given point in time. Convenient, formalised and automated workflows have enabled me to not constantly “reinvent the wheel” every time I send or receive an invoice or confirm a booking.
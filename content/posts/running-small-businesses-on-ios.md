---
title: "Running small businesses on iOS"
date: 2019-07-22T16:45:00Z
description: "Running small businesses on iOS"
categories: ["workflow"]
tags: ["workflow"]
draft: false
author: "Florian Einfalt"
---
As I have mentioned on previous workflow posts, I run two small businesses, a freelance business through which I offer Python development services and a start-up, flow.studio, which is a project management platform that specifically targets the fashion industry. Managing my time, invoicing as well as finance can be a time sink especially if you do not have specialist employees or partners to fall back on. I do work with an accountant who deals with my taxes, but all other admin is part of my daily workload.

Efficiency is crucial in this regard as the amount of time I spend on admin obviously comes off the time I can sell to my clients or make progress on our product. In this post, I will explain how I integrate different services for banking, bookkeeping, time management and how all of this is glued together with Shortcuts on iOS.
<!--more-->

# Business Banking with Tide

I live in London and thus my businesses are registered in the UK, which means that I have direct access to possibly the most vibrant market for financial services in the world. There is a vast number of start-ups offering online-only bank accounts for personal and business use such as Monzo (personal) and Tide (business). These “banks” typically allow setup of a bank account through an app in a few minutes so it is really quick and easy to get going when you are starting out. I used to bank with HSBC but setting up a business account for my start-up with four co-founders was such a bad experience that we aborted the attempt after over a month and instead went with Tide, completing set up from start to finish between breakfast and lunch.

What’s also significant: because these accounts are online-only, any administration such as customer support, adding or removing debit cards or managing direct debits and standing orders is done through the corresponding iOS app which is a breath of fresh air for anyone who is used to queueing in branch or being stuck in a telephone queue for hours waiting to speak to a bank’s customer agent.

The most important criteria though is the integration these services offer with accountancy software such as Xero or FreeAgent. No longer do you have to remember to periodically (often daily) authenticate and manually pull transactions into your bookkeeping system but transactions are pushed and will automatically be displayed for reconciliation using – in my case – Xero’s API, a big time saver. Authentication is handled once, during setup, and you are good to go. On top of all of this, Xero will also notify me about any new transactions using iOS push notifications so this has become a totally automated process.

The icing on the cake is that the Tide iOS app is capable of granting access to up to five businesses, so that checking account balances, making payments or ordering or freezing debit cards for both my companies is possible where ever I am. I don’t even need to log out and log in again.

# Bookkeeping with Xero

As with banking, there is a seemingly infinite number of options when it comes to accountancy software. For my businesses I decided to use Xero, a pretty well established player in the UK that is compliant with digital taxation systems now made mandatory by HMRC. If you work with an accountant it makes sense to opt for a system that your accountant is at least comfortable with. In my case, my accountant is the admin of my Xero instance and a true expert. This saves me a lot of time when it comes to intricate questions about bookkeeping but also how the software works in situations when an transaction is not a common case.

As mentioned above, I think it makes a tremendous difference to my workload how well my business account and my bookkeeping system integrate. Reconciling  transactions (matching account transactions with bills and invoices) that have been pushed into Xero by Tide is the most common thing I do on a regular basis. Thanks to Xero’s simple yet capable iOS app I can do this on the go and thanks to the fact that I can register multiple companies in the app, I can do this for both my businesses without hassle.

I scan incoming invoices with Scanner Pro and use an automated filing system based on Siri Shortcuts that will save the invoice as a PDF in the right folder in Dropbox. Since Xero’s iOS app integrates well with the iOS Files app, reconciling a transaction is as simple as assigning a supplier from my contacts database and uploading the relevant PDF from the Dropbox file provider.

Outgoing invoices are easily created and approved in the Xero app, ready to be sent to clients via configurable email templates. I send every to my own email address as well as my client’s – this way I know the email has been dispatched successfully using Xero’s built-in system. Another nice side effect is that I can file the attached invoice PDF directly from the email using a Siri Shortcut that saves the file in the correct folder on Dropbox so that I have an archive of all invoices sent at my finger tips at all times.

# Time Management with Things and Fantastical

Juggling multiple clients, the administrative demands of two businesses with vastly different needs and making sure accounting and tax deadlines are adhered to can be a challenge at the best of times. I rely on some of the best citizens of the iOS eco system, Things and Fantastical with their powerful feature sets, to stay on top of it all.



# Tying it all together with Shortcuts
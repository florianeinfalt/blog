---
title: "A mere-mortal's guide to security and privacy online – Part 5: Instant messaging"
date: 2019-05-24T12:45:00+01:00
description: "Part 5: Instant messaging"
categories: [“privacy”]
tags: [“privacy”]
draft: false
author: "Florian Einfalt"
---
I‘m often being asked two questions when it comes to instant messaging (IM): „Why are you not on Facebook Messenger?“ and „Why are you not on WhatsApp?“ My usual answer is that I will never join a messaging service or social network that is owned in-part or fully by Facebook because their commercial incentives are 180 degrees opposed to what is good for me as their potential user. Usually, I will earn a „take off your tin-foil hat“ kind of stare and we move on, but rarely people will ask what to use instead and why, this post is for these people.

So in the second part of my series about online privacy, I will have a look at instant messengers, how to choose them wisely and why „It’s what my friends use.“ should not be the only deciding factor in a privacy-conscious choice.
<!--more-->

First let me clarify one thing: every end-to-end encrypted messaging service is better than unencrypted communications such as a old-school SMS. This includes [iMessage](https://en.wikipedia.org/wiki/IMessage), [Signal](https://en.wikipedia.org/wiki/Signal_(software)), [Threema](https://en.wikipedia.org/wiki/Threema), [Telegram](https://en.wikipedia.org/wiki/Telegram_(software)), [WhatsApp](https://en.wikipedia.org/wiki/WhatsApp) and [Facebook Messenger](https://en.wikipedia.org/wiki/Facebook_Messenger) to *varying degrees*.

End-to-end encryption means that the content of a message is encrypted on Bob‘s device using their secret private key and Alice‘s public key so that it can only be decrypted on Alice‘s device by the combination of Alice‘s secret private key and Bob‘s public key. Using this technology ensures that the message‘s contents cannot be read by your Internet Service Provider, messaging service or any other third party that might be involved in sending the message from Bob‘s device to Alice‘s device – only Bob and Alice themselves can read the message. (Don‘t worry all of this key-related business is handled by the messaging app – this is just a quick explanation of the broad concept.)

So why would I not recommend all the above messaging services if they use end-to-end encryption? There are a few answers to this question: a service‘s **default settings**, the **metadata** about the communications that is captured and stored by the service, whether a messaging protocol is **open-source** or not, the messaging provider‘s **business incentives**, and their **track record on privacy** in general.

## Default settings

Default settings are key because most normal non-geek users will not change an app’s settings at all. So if end-to-end encryption is not activated by default, the service is hardly a good choice for the privacy conscious. Unfortunately, this is the case for Facebook Messenger. For the chat to actually be private and hidden from Facebook and other third parties, both communicating parties must manually activate end-to-end encryption.

## Metadata

All communications on instant messaging services have two parts: the actual message or content and all the associated metadata, such as the sender‘s and recipient‘s profiles, maybe their phone numbers or other identifiable information the timestamp of their communication and so on. Depending on the messaging service this can vary widely. At the extremes, the metadata captured might be minimal and not stored with the service at all, such as in Signal‘s case or the metadata captured might be plentiful and intrusive, potentially including the user‘s location, device information etc. which is retained by the service forever and actively used to further their data harvesting and advertising business, such as in the case of WhatsApp.

What this means is that the content of your messages might be of secondary importance to a service that is a data harvester such as Google and Facebook and that all the other information that can be inferred from your messaging habits can be just as useful to their practises and, importantly, to their customers.

## Open-source

The open or closed nature of the messaging protocol‘s source code that is used by any service should dictate to some extent how trust-worthy the service can be as a whole. The best citizen in the instant messaging world when it comes to open-ness is clearly the [Signal protocol](https://en.wikipedia.org/wiki/Signal_Protocol). The protocol is 100% [open-source](https://en.wikipedia.org/wiki/Open-source_software) which means that anyone can inspect the code and security researchers can check for any vulnerabilities and thus can verify that the cryptographic foundations of the protocol are sound. Because of its open-source nature and cryptographic quality, Signal‘s protocol has been adopted by the likes of WhatsApp which means that at least when it comes to the quality of their popular messaging protocol, Facebook should be in  the clear.

Apple‘s iMessage is a closed source protocol that has been documented in white papers and has been penetration tested extensively in real-world circumstances. Still, the closed-source nature of the protocol represents a points deduction for iMessage as a service.

## Business incentives

The business incentives of the messaging service operator to me are the clearest indication beyond any technical considerations whether a service can be trusted or not. Questions I ask myself are: „What is the operator‘s business model?“, „Do they have an incentive to keep my personal data on their servers?“, „What are their revenue streams?“ and „Who is their customer?“.

Granted, these questions are not easily answered for the layman but at least for the big players in IM we can take an educated guess: For instance, Apple‘s business model is to sell expensive hardware (phones, tables and computers) with huge margins, they have no incentive to sell their user‘s data and use that fact as a competitive advantage in their marketing. Facebook‘s (and therefore WhatsApp‘s) business however is predicated on knowing the most about their users as possible in order to offer some of best advertising matching in the industry. Facebook products are not paid so their advertising business is their only stream of revenue such as that they are heavily incentivised to harvest and store as much user data (content and metadata) as they can.

Other operators like Threema generate revenue by selling their apps on iOS and Android and therefore are incentivised to think along the lines of: „What‘s good for our users is good for us.“

Lastly, open-source projects like Signal are a labour of love by their creators and require community funding to be kept alive. This can be achieved by corporate sponsorship and individual donations as has happened with so many open-source projects that have become crucial bits of infrastructure over time.

## Track record on privacy

An operator‘s track record on privacy is a delayed indicator of their trust-worthiness, but nonetheless can be highly instructive when it comes to making a choice of which service to use going forward. The rule of thumb here is that if a company keep popping up in the mainstream news for yet another breach or privacy-related infringement, it is probably not worth of your trust as a user. (I’m kooking at you, Facebook!)

## Choice

With instant messaging, the conventional wisdom still is: „I‘m gonna use the service that most of my friend‘s use.“ and mostly it is true, IM is pretty useless if you have no-one to message. However, privacy and data protection will only gain in importance and our private communication is some of the most valuable and precious data we have which is worthy of protection. Therefore the choice of IM service really matters and should not be made off the cuff.

My clear and unequivocal recommendation is Signal. There is virtually no negative to be found in the service and positives include a strong encryption protocol, a bare minimum metadata capture, audio and video telephony and wide availability on mobile platforms.

For iOS users, iMessage is recommended due to the low barrier of entry to secure messaging a battle-tested protocol and ease of use.

Threema is a fine app, but it might be hard to convince people to pay for their instant messaging.

As I said in the beginning, I will never recommend any use of any Facebook property based on their abysmal track record on privacy and their completely misaligned business incentives – they simply cannot be trusted with *any* data and so I cannot recommend the use of WhatsApp and Facebook Messenger at all.
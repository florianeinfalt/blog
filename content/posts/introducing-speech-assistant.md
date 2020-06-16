---
title: "Introducing: Aphasia Speech Assistant"
date: 2020-06-16T12:00:00+01:00
description: "A communications tool for Aphasia patients"
categories: ["swift", "personal"]
tags: ["swift", "personal"]
draft: true
author: "Florian Einfalt"
---

___________

_This article is available in [English](#introducing-speech-assistant) and [German](#darf-ich-vorstellen-speech-assistant)._

___________

# Introducing: Aphasia Speech Assistant

In December 2013, my Dad suffered a series of strokes and a brain haemorrhage. After a months-long recovery period, my family was introduced to our new reality: **Aphasia**. If, like me in 2014, you have no idea what that means, this is how [Wikipedia](https://en.wikipedia.org/wiki/Aphasia) summarises the condition in a couple of sentences:

> Aphasia is an inability to comprehend or formulate language because of damage to specific brain regions. The major causes are a cerebral vascular accident (stroke), or head trauma, but aphasia can also be the result of brain tumours, brain infections, or neurodegenerative diseases such as dementia.

Practically it meant that communication with my Dad was going to be limited to a few words he was able to pick up again in recovery, mostly: _"Yes," "no," "good," "not good," and "shit"_.

This however was and is not an accurate reflection of his capacity to follow arguments, have elaborate thoughts or understand complex contexts: if asked to, he will happily point out the 50 Ohms resistor from a pile of them by the colour code or laugh about jokes made in English [he is German native speaker although he spoke fluent English before his illness] — from an intellectual point of view he is, best we can tell, the same he ever was minus the speech.

Not only is it heartbreaking to see a beloved person struggle and getting increasingly frustrated with what we perceive to be one of the most basic of tasks. It also makes day-to-day life exhausting for everyone involved, most of all my Mum who sometimes spends 20–30 minutes asking "yes-or-no" questions just to figure out whom to call back.

In the years after the acute illness, my parents were introduced to various apps by their speech therapist that game-ify (re-)learning how to speak but, being in his late 60s, my Dad struggled to "get to the next level".

Earlier in the year my Mum told me that he found it more and more difficult to correctly choose between "yes" and "no," making simple daily communications even harder. Convinced that technology must be able to help, I decided to finally get started with Swift and iOS development and do something about it.

Rather than focusing on re-acquiring speech itself through training, my app would allow him to use iOS' speech synthesis features to combine configurable words and sentences and "speak" through his iPad. *I wanted to build a communications assistant, not another speech trainer.*

After about six weeks of work, I am excited to introduce the result of my project: **Aphasia Speech Assistant**.

![Icon](/Icon-256@Rounded.png)

Aphasia Speech Assistant is a simple text-to-speech application for iPad that is designed specifically for Aphasia patients.

It has eleven categories of daily life from "People" and "Activities" to "Times" and "Places". Every category contains any number of phrases, each associated with either an emoji symbol or an image for easier recognition. Tap on a phrase and the iPad will synthesise the phrase into speech whilst also displaying the symbol and phrase front and center as a visual cue.

I implemented modern iOS features such as drag & drop (to re-order phrases) and context menus (to surface edit and delete buttons) in an effort to keep the UI as simple as possible for the end-user but provide expected functionality for carers such as my Mum. This is crucial because Aphasia patients often suffer from a diminished capacity to deal with visual complexity. Every phrase can be configured with a custom value for speech synthesis speed which makes the spoken result more easily understandable for the patient.

At the time of writing, the app is available in German and English – the languages I have a reasonable grasp of – but I am looking to extend the list of supported languages with the help of native speakers, so [email](mailto:info@florianeinfalt.de) me if you want to contribute localisation in your language.

[Usage report]

I really hope that my project and the real-life changes it has enabled in my family do not stay limited to us. I believe that technology can inspire positive change and improve people's lives especially in less than ideal circumstances such as my Dad's. That is why I decided to release this app in the first place and why I want to get this app onto as many people's iPads as possible.

[Aphasia Speech Assistant]() is a free download on the App Store.
___________
    
# Darf ich vorstellen? Aphasie Speech Assistant

Im Dezember 2013, erlitt mein Vater eine Reihe von Schlaganfällen und eine Gehirnblutung. Nach montagelanger Rehabilitation wurde meine Familie mit unserer neuen Realität konfrontiert: **Aphasie**. Wenn du, wie wir Mitte 2014, keine Ahnung hast was dieser Begriff zu bedeuten hat, dann ist hier die Kurzzusammenfassung von [Wikipedia](https://de.wikipedia.org/wiki/Aphasie):

> Eine Aphasie [...] ist eine erworbene Störung der Sprache aufgrund einer Läsion (Schädigung) in der dominanten, meist der linken, Hemisphäre des Gehirns. [...] Aphasien treten nach verschiedenen Erkrankungen (Schlaganfall, Schädel-Hirn-Trauma, Gehirnblutung nach Venenthrombose, Tumoren, entzündlichen Erkrankungen, Intoxikation) nach abgeschlossenem Spracherwerb auf.

Praktisch betrachtet hatte die Erkrankung für uns den Effekt, dass die verbale Kommunikation mit unserem Vater auf ein paar Brocken die er in der Reha-Klinik wieder erlernen konnte limitiert wurde: _"Ja", "Nein", "Gut", "Nicht gut", "Scheiße"_.

Allerdings spiegelt dies in keinem Fall seine Fähigkeit wider Argumentationen zu folgen, sich seine eigene Meinung zu bilden oder komplexe Zusammenhänge zu verstehen: auf Nachfrage identifiziert er aus einem Berg von elektrischen Widerständen ohne Probleme den Widerstand mit 50 Ohm Impedanz und lacht herzlich über Witze auf Englisch [er ist deutscher Muttersprachler, sprach vor seiner Erkrankung aber fließend Englisch] — intellektuell betrachtet ist er, so gut wir dies beurteilen können, ganz der alte nur eben ohne sein Sprachvermögen.

Nun ist es das eine einem geliebten Menschen dabei zusehen zu müssen wie er sich  an einer der scheinbar einfachsten Aufgaben abarbeitet und von Tag zu Tag frustrierter mit seiner Situation zu sein scheint. Langfristig zeigt sich aber am deutlichsten die Erschöpfung für die engsten Mitmenschen und in der Hauptsache für meine Mutter die nicht selten erst nach 20-30 Minuten "Ja-Nein-Fragen" herausfindet wen sie denn nun zurückrufen soll.

In den Jahren nach der akuten Phase der Rehabilitation wurden meinen Eltern immer wieder Apps zum spielerischen (Wieder)erlernen des Sprachvermögens von Logopäden empfohlen. Doch da mein Vater zu diesem Zeitpunkt bereits Ende 60 war blieben seine Anstrengungen "das nächste Level zu erreichen" leider weitestgehend erfolglos.




Earlier in the year my Mum told me that he found it more and more difficult to correctly choose between "yes" and "no," making simple daily communications even harder. Convinced that technology must be able to help, I decided to finally get started with Swift and iOS development and do something about it.

Rather than focusing on re-acquiring speech itself through training, my app would allow him to use iOS' speech synthesis features to combine configurable words and sentences and "speak" through his iPad. *I wanted to build a communications assistant, not another speech trainer.*

After about six weeks of work, I am excited to introduce the result of my project: **Aphasia Speech Assistant**.

![Icon](/Icon-256@Rounded.png)

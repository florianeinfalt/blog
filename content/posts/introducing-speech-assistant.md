---
title: "Introducing: Aphasia Speech Assistant"
date: 2020-06-16T12:00:00+01:00
description: "A communications tool for Aphasia patients"
categories: ["swift", "personal"]
tags: ["swift", "personal"]
draft: false
author: "Florian Einfalt"
---

___________

_This article is available in [English](#introducing-aphasia-speech-assistant) and [German](#wo-worte-fehlen--der-aphasie-sprachassistent)._

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

I really hope that my project and the real-life changes it is starting to enable in my family do not stay limited to us. I believe that technology can inspire positive change and improve people's lives especially in less than ideal circumstances such as my Dad's. That is why I decided to release this app in the first place and why I want to get this app onto as many people's iPads as possible.

[Aphasia Speech Assistant]() is a free download on the App Store.
___________
    
# Wo Worte fehlen – Der Aphasie Sprachassistent

Im Dezember 2013 erlitt mein Vater eine Reihe von Schlaganfällen und eine Gehirnblutung. Nach vielen Monaten auf Reha wurde meine Familie mit unserer neuen Realität konfrontiert: „**Aphasie**“. All diejenigen, die - so wie ich 2014 - mit diesem Begriff nichts anfangen können, finden im Folgenden einen kurzen Auszug aus [Wikipedia](https://de.wikipedia.org/wiki/Aphasie), der dieses Krankheitsbild in Kürze auf den Punkt bringt:

> Eine Aphasie [...] ist eine erworbene Störung der Sprache aufgrund einer Läsion (Schädigung) in der dominanten, meist der linken, Hemisphäre des Gehirns. [...] Aphasien treten nach verschiedenen Erkrankungen (Schlaganfall, Schädel-Hirn-Trauma, Gehirnblutung nach Venenthrombose, Tumoren, entzündlichen Erkrankungen, Intoxikation) nach abgeschlossenem Spracherwerb auf.

Für meinen Vater bedeutete und bedeutet dies letztlich, dass seine Fähigkeit, sich mit Worten auszudrücken, seitdem auf einige wenige Sprachfetzen, die er sich während der Reha hart erarbeiten musste, beschränkt ist: _„Ja“, „Nein“, „Gut“, „Nicht gut“ und „Scheiße“_.

Diese verbale Einschränkung spiegelt jedoch in keiner Weise wider, dass er trotz allem nach wie vor in der Lage ist, komplexen Diskussionen zu folgen, sich eine differenzierte eigene Meinung zu bilden und komplizierte Zusammenhänge zu verstehen:

Wenn er konkret danach gefragt wird, erkennt er aus einem Berg von elektrischen Widerständen mühelos den korrekten Widerstand basierend auf der Farbkodierung und er lacht herzlich über Witze auf Englisch. (Seine Muttersprache ist Deutsch, allerdings hat er vor seiner Erkrankung fließend Englisch gesprochen.) - Auf intellektueller Ebene ist er also – soweit wir dies von außen beurteilen können – ganz der Alte, jedoch ohne sein Sprachvermögen.

Für uns als Familie war die Krankheit meines Vaters ein großer Einschnitt im Leben: Auf der einen Seite ist es schmerzlich, dabei zuzusehen, wie ein geliebter Mensch an den scheinbar einfachsten Aufgaben des Alltags verzweifelt und dabei immer frustrierter wird. Auf der anderen Seite zeigt sich spätestens über einen längeren Zeitraum hinweg die große Herausforderung, vor die die Situation gerade die engsten Mitmenschen stellt: Wo beispielsweise unter normalen Umständen ein kurzer Satz ausgereicht hätte, findet meine Mutter nicht selten erst nach 20 bis 30 Minuten „Ja-Nein-Fragen“ heraus, wen sie zurückrufen soll.

In den ersten Jahren der Krankheit wurden meinen Eltern von Logopäden diverse Apps zum spielerischen (Wieder-)Erlernen der Sprache als Trainingsmethode empfohlen. Auf Grund seines Alters - damals Ende 60 - blieb der Versuch meines Vaters, mit Hilfe dieser Programme größere Fortschritte zu erzielen, leider weitestgehend erfolglos.

Seit Beginn dieses Jahres fällt meiner Mutter vermehrt auf, dass es für meinen Vater immer schwieriger wird, seine Worte „Ja“ und „Nein“ situationsangepasst und inhaltlich korrekt zu verwenden, was die alltägliche Kommunikation natürlich weiter erschwert. Betroffen von dieser Entwicklung und überzeugt vom helfenden  Potential von Technologie machte ich mich an die Arbeit, um - nachdem ich mich mit Swift und iOS-Entwicklung beschäftigt hatte - eine kleine Alltagshilfe für meinen Vater zu programmieren.

Anstatt mich dabei jedoch - wie bei den oben genannten Apps - auf den Wiedererwerb von Sprache zu konzentrieren, sollte es meine App ermöglichen, „durch das iPad zu sprechen“, indem die Sprachsynthese-Funktionen in iOS zur Kombination von Worten und Sätzen genutzt werden. _Mein Ziel war also, statt eines weiteren Sprachtrainers einen Sprachassistenten für meinen Vater zu entwickeln und dadurch eine echte Unterstützung im Alltag und in der Kommunikation meiner Eltern zu schaffen._

Nach gut sechs Wochen Arbeit freue ich mich nun, das Ergebnis meines Projekts vorstellen zu können: Den **Aphasie Sprachassistenten**.

![Icon](/Icon-256@Rounded.png)

Der Aphasie Sprachassistent ist eine einfache, speziell für die Bedürfnisse von Aphasie-Patienten gestaltete Sprachsynthese-App für das iPad.

Die App ist in elf Kategorien des täglichen Lebens unterteilt, von „Personen“ und „Aktivitäten“ über „Zeiten“ bis hin zu „Orte“. Jede dieser Kategorien enthält eine bestimmte Anzahl großer Kacheln mit Wörtern oder kurzen Sätzen, die jeweils entweder mit einem Emoji-Symbol oder einem Foto verknüpft sind, um den Wiedererkennungswert für den Benutzer zu erhöhen. Tippt man auf eine Kachel, spricht das iPad den Text aus und zeigt das Symbol oder das Bild sowie den Text groß in der Mitte des Bildschirms an, wodurch zusätzlich die Merkfähigkeit gesteigert werden soll.

Ich nutze moderne iOS-Features wie Drag & Drop (zum Verschieben von Kacheln) sowie Kontextmenüs (um an Bearbeitungs- und Löschfunktion zu gelangen), um die Benutzeroberfläche für die Benutzer so einfach wie möglich zu gestalten. Gleichzeitig soll die App dadurch Betreuern die Möglichkeit bieten, einzelne Funktionen individuell anpassen zu können. Darüber hinaus kann die Geschwindigkeit der Aussprache für jeden Begriff in der App gesondert eingestellt werden.

Beide Aspekte der App – eine einfach zu verstehende Benutzeroberfläche sowie eine langsame Aussprache – sind für Aphasie-Patienten von besonders hoher Bedeutung, da sie häufig an einer verringerten Fähigkeit zur Verarbeitung komplexer visueller und akustischer Reize leiden.

Im Moment ist die App auf Deutsch und Englisch (meine Muttersprache sowie die Sprache meiner Wahlheimat) verfügbar. Ich suche aber aktiv nach Muttersprachlern anderer Sprachen, um die App auch Menschen anderer Länder zugänglich machen zu können. Wer eine Übersetzung in einer weiteren Sprache beitragen möchte, kann mir gerne eine [E-mail senden](mailto:info@florianeinfalt.de).

Mein Wunsch ist, dass meine kleine App, die gerade dabei ist, den Alltag meiner Eltern positiv zu verändern, dies auch in vielen anderen Familien bewirken kann. Ich bin davon überzeugt, dass Technologien positive Entwicklungen anstoßen und somit zur Verbesserung der Lebensumstände beitragen können, nicht zuletzt - wie im Fall meines Vaters - unter schwierigen Umständen. Somit habe ich mich dazu entschlossen, die App zu veröffentlichen, in der Hoffnung, dass sie auch auf vielen anderen iPads dazu beitragen kann, die Kommunikation von Betroffenen mit ihrem Umfeld zu erleichtern und zu verbessern. 

Der [Aphasie Sprach Assistent]() ist kostenlos im App Store erhältlich.
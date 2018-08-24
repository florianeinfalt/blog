---
title: "Bitesize: dict.setdefault"
date: 2018-08-16T20:13:17+01:00
description: "A handy but relatively unknown dict method"
categories: ["development"]
tags: ["python"]
draft: false
author: "Florian Einfalt"
---

Today, I discovered a little-used feature on Python's `dict` type that I
thought was worth talking about briefly: the `setdefault` method.

<!--more-->

`setdefault` will check the dictionary for the key given in the first argument
and pass it on if it exists. If it doesn't exist however, it will set that key
to the default value being specified in the second argument and return this.

This is a great way to intialise sub-dictionaries and to avoid `KeyError` when
it is unknown whether a sub-dictionary was already initialised.

{{< highlight python3 >}}
people = {
    'alice': {
        'age': 25
    }
}
# ...
# User 'john' might have or might not have been initialised
# ...
people.setdefault('john', {})['age'] = 32
{{< /highlight >}}

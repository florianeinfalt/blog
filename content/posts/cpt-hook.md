---
title: "Captain Hook"
date: 2018-08-15T21:45:17+01:00
description: "A simple hook decorator in Python"
categories: ["development"]
tags: ["python", "hooks"]
draft: true
author: "Florian Einfalt"
---

Pondering over the Shotgun hook framework at work today, I wrote a simple
hook decorator handling pre-function execution and post-function execution
events.

<!--more-->

{{< highlight python3 >}}
class Hook(object):

    def __init__(self, func):
        self.pre_funcs = []
        self.post_funcs = []
        self.basefunc = func

    def pre(self, func):
        if callable(func):
            try:
                self.pre_funcs.remove(func)
            except ValueError:
                pass
            self.pre_funcs.append(func)
        return func

    def post(self, func):
        if callable(func):
            try:
                self.post_funcs.remove(func)
            except ValueError:
                pass
            self.post_funcs.append(func)
        return func

    def __call__(self, *args, **kwargs):
        for func in self.pre_funcs:
            args, kwargs = func(*args, **kwargs)
        result = self.basefunc(*args, **kwargs)
        for func in self.post_funcs:
            newresult = func(result)
            result = result if newresult is None else newresult
        return result
{{< /highlight >}}

The hook decorator takes an arbitrary amount of pre-execution function(s)
as well as post-execution function(s), which are themselves declared using the
decorator syntax. The hook will pass all the `*args` and `**kwargs` that it
will pass to the main function to the `pre` function(s).

The result of the main function will be passed to the `post` function(s).

The fact that we can use this hook as a Python decorator makes usage extremely
simple:

{{< highlight python3 >}}
# Declaring the main function as a hook
@Hook
def main_func(num):
    return int(num)

# Declaring a `pre` function
@main_func.pre
def notify(*args, **kwargs):
    print("args: {0}".format(args))
    print("kwargs: {0}".format(kwargs))
    return args, kwargs

# Declaring a `post` function
@main_func.post
def square(result):
    result = result ** 2
    return result

# Running the main function with the hooks
main_func(4)

# args: (4,)
# kwargs: {}
# 16

{{< /highlight >}}

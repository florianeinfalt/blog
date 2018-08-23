---
title: "Captain Hook"
date: 2018-08-15T21:45:17+01:00
description: "A simple hook decorator in Python"
categories: ["development"]
tags: ["python", "hooks"]
draft: false
author: "Florian Einfalt"
---

Pondering over the Shotgun hook framework at work today, I wrote a simple
hook decorator handling pre-function execution and post-function execution
events.

<!--more-->

A simple version of a hook decorator that would invoke one or more
callbacks after the main function has executed could look something like
this:

{{< highlight python3 >}}
class Hook(object):

    def __init__(self, func):
        self.callbacks = []
        self.basefunc = func

    def callback(self, func):
        if callable(func):
            try:
                self.callbacks.remove(func)
            except ValueError:
                pass
            self.callbacks.append(func)
        return func

    def __call__(self, *args, **kwargs):
        result = self.basefunc(*args, **kwargs)
        for func in self.callbacks:
            newresult = func(result)
            result = result if newresult is None else newresult
        return result
{{< /highlight >}}

Usage of this simple model would be pretty striahgt forward, like so:

{{< highlight python3 >}}
# Declaring the main function as a hook
@Hook
def main_func(num):
    return int(num)
    
@main_func.callback
def argument(num):
    print('argument: {}'.format(num))

@main_func.callback
def power(num):
    return num ** 2

print(main_func(4))

# argument: 4
# 16

{{< /highlight >}}

Now to the second version of the hook decorator, supporting pre and
post execution callbacks.

{{< highlight python3 >}}
class Hook(object):

    def __init__(self, func):
        self.pre_callbacks = []
        self.post_callbacks = []
        self.basefunc = func

    def pre(self, func):
        if callable(func):
            try:
                self.pre_callbacks.remove(func)
            except ValueError:
                pass
            self.pre_callbacks.append(func)
        return func

    def post(self, func):
        if callable(func):
            try:
                self.post_callbacks.remove(func)
            except ValueError:
                pass
            self.post_callbacks.append(func)
        return func

    def __call__(self, *args, **kwargs):
        for func in self.pre_callbacks:
            args, kwargs = func(*args, **kwargs)
        result = self.basefunc(*args, **kwargs)
        for func in self.post_callbacks:
            newresult = func(result)
            result = result if newresult is None else newresult
        return result
{{< /highlight >}}

The hook decorator takes an arbitrary amount of pre-execution callback(s)
as well as post-execution callback(s), which are themselves declared using
the decorator syntax. The hook will pass all the `*args` and `**kwargs`
that it will pass to the main function to the `pre` callback(s).

The result of the main function will be passed to the `post` callback(s).

The fact that we can still use this hook as a Python decorator makes usage
extremely simple:

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
    return result ** 2


# Running the main function with the hooks
print(main_func(4))

# args: (4,)
# kwargs: {}
# 16

{{< /highlight >}}

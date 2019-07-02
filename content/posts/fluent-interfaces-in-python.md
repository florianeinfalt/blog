---
title: "Fluent interfaces in Python"
date: 2019-07-02T16:00:00Z
description: "Fluent interfaces in Python"
categories: ["python"]
tags: ["python"]
draft: false
author: "Florian Einfalt"
---
One of the lesser known techniques when designing APIs in Python is the concept of the fluent interface. Fluent interfaces help the user of your API to work with an object and it’s methods in a more concise manner and can therefore make your API simpler and more desirable to use.
<!--more-->
Assume a basic `Task` object, which might look something like this:

{{< highlight python3 >}}
class Task(object):        
    def name(self, name):
        self._name = name
        return self

    def cpu(self, cpu):
        self._cpu = cpu
        return self
        
    def ram(self, ram):
        self._ram = ram
        return self
        
    def dependencies(self, dependencies):
        self._dependencies = dependencies
        return self
   
    @property 
    def command(self):
        cmd = f'{self._name} --cpu {self._cpu} --ram {self._ram} --dep {self._dependencies}'
        return cmd
{{< /highlight >}}

This object looks pretty common, basically a few setters and a command property. But have a look at all those setter functions – they all `return self` – which is slightly less common.

By returning `self` (the class instance) for every method on the object that modifies attributes, we enable method chaining and therefore implement a fluent interface.

This means that rather than setting attributes one line at a time, we can now configure the `Task` in a single line of code and therefore increase the simplicity and readability of our code significantly.

So instead of the standard, _non-fluent_ way of using the API,

{{< highlight python3 >}}
# Usage of the above API without the fluent interface
task1 = Task()
task1.name('pre-execute')
task1.cpu(2)
task1.ram(8)
task1.dependencies([])
print(task1.command)

task2 = Task()
task2.name('main')
task2.cpu(8)
task2.ram(32)
task2.dependencies([task1._name])
print(task2.command)

task3 = Task()
task3.name('post-execute')
task3.cpu(2)
task3.ram(8)
task3.dependencies([task2._name])
print(task3.command)
{{< /highlight >}}

we can now make our code far more concise and readable:

{{< highlight python3 >}}
# Usage of the above API with the fluent interface
task1 = Task().name('pre-execute').cpu(2).ram(8).dependencies([])
print(task1.command)
task2 = Task().name('main').cpu(8).ram(32).dependencies([task1._name])
print(task2.command)
task3 = Task().name('post-execute').cpu(2).ram(8).dependencies([task2._name])
print(task3.command)
{{< /highlight >}}
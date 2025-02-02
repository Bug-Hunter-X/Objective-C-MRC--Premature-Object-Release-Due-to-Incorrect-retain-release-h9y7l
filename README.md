# Objective-C Manual Reference Counting (MRC) Bug: Premature Object Release

This repository demonstrates a subtle bug related to memory management in Objective-C using manual reference counting (MRC). The bug involves incorrect usage of `retain` and `release`, leading to premature deallocation of objects and potential crashes.

## Bug Description
The bug arises from misunderstanding the implicit retain call when assigning to a property with `retain` semantics.  Explicitly releasing an object after assignment, while intending to manage memory, actually reduces its retain count prematurely.

## Solution
The solution shows how to correctly handle memory management in this scenario by avoiding explicit release after assigning to a property with `retain` semantics. The object's memory will be correctly managed when the property is released.
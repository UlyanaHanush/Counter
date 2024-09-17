<p align="center">
 <img width="100px" src="https://github.com/UlyanaHanush/Counter/blob/main/image/yaPracticum.jpg" align="center" alt="Condition task" />
 <h2 align="center">Condition task</h2>
 <p align="center">Sprint 03</p>
<p align="center">
<a href="readme_rus.md">Русский</a>
</p>

<p align="center">Please note that documentation translations may be outdated; try to use English documentation if possible.</p>

# Features <!-- omit in toc -->

- [Basic task Create a counter app](#basic-task-create-a-counter-app)
- [Advanced task](#advanced-task)

# Basic task Create a counter app
The app should have **ONE BIG BUTTON**. The number of times it was pressed is the number displayed on the counter. To get the results, create a **LABEL** above your tool with the counter value. When you press the counter button, the counter value changes - and the text on the label should also change.

The result should be an app with a label (UILabel) and a button (UIButton) on the screen. When the app starts, the label should have a text of 0; each time you click the button, this number should increase by 1. The label with the counter value should look like "Counter value: 42".

# Advanced task

1. Create **TWO BUTTONS**: 
with the "+" icon — red, 
with the "-" icon — blue. 

When you click on the plus, the counter value will increase by 1, 
and when you click on the minus, it will decrease by 1. 
In this case, the counter value should not fall below zero. 

2. Create a **RESET BUTTON** with a suitable icon that when pressed resets the counter value to zero

3. Create a **UITextView TEXT FIELD** that will display the history of changes to the counter value in the following format:
- when the application starts — "Change history:"
- when the "+" or "-" button is successfully pressed — "[date and time]: value changed to -1/+1"
- when resetting: — "[date and time]: value reset"
- when attempting to decrease the counter value below 0 — "[date and time]: attempting to decrease the counter value below 0"

> [!WARNING]\
> Note that the text field should be scrollable, but it is locked for user editing.

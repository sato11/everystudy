from turtle import *

def tree(length):
    if length > 5:
        forward(length)
        right(20)
        tree(length-15)
        left(40)
        tree(length-15)
        right(20)
        backward(length)

speed(0)
color('green')
left(90)
backward(150)
tree(120)

input('type to exit')

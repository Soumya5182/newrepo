import os
#1#this os the pass the without pass the parameter and without pass the return value
def createfold():
    os.mkdir("E:\\hellosoumya")
def createsubfold():
    os.mkdir("E:\\hellosoumya\\iamsub")
#2#This os pass the with some argument

def createfoldargu(parent):
    os.mkdir("E:\\"+parent)
def createsubfoldargu(child):
    os.mkdir("E:\\hellosoumya\\"+child)

#3#It pass the with some argument ans return some value.
def concadinaethe(a,b):
    c=a+""+b
    return c

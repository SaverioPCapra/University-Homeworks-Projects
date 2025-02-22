# Date: 29/01/2025

#  Page 59

# Exercise 4.1

def sum(l:list):
    if len(l)== 1:
        return l[0]
    else:
        return l[0]+sum(l[1:])
    
# Exercise 4.2

def count(l:list):
    try:
        l[0]
    except:
        return 0
    
    return 1+count(l[1:])

# Exercise 4.3

def find_max(l:list):
    if len(l) == 1:
        return l[0]
    
    elif len(l) == 2:
            if l[0] >= l[1]:
                return l[0]
            else:
                return l[1]
    else:
        return find_max([l[0], find_max(l[1:])])
    
# Exercise 4.4

def binary_search(l:list, item, low = 0):
    
    high = len(l)-1
    mid = round((low+high)/2)

    guess = l[mid]

    if guess == item:
        return mid

    if guess > item:
        return binary_search(l[:mid],item,0)
    else:
        return mid + binary_search(l[mid:], item, mid)

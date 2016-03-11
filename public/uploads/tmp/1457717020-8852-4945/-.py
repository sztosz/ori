LENGTH = 'length'
SW = 'SW'
​
​
def validate(content):
    # content = bytearray(content)  # TO DODAJ
    error = None
​
    if len(content) != 2097152:
        sw = None
        error = LENGTH
​
        return sw, error
​
    if content.find(b'1037529584') != -1:
        sw = '1037529584'
    elif content.find(b'1222222') != -1:
        sw = '1222222'
​
    else:
        sw = None
        error = SW
​
    return sw, error
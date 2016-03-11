# --- dane niezmienne ---
import binascii
a = binascii.unhexlify('19641A5E1B58')
b = binascii.unhexlify('19641A5E1B58')
c = binascii.unhexlify('119A119B119C')
d = binascii.unhexlify('119A119B119C')
e = binascii.unhexlify('157C15E016440064')
f = binascii.unhexlify('157C15E01644')
g = binascii.unhexlify('120C12161220122A')
h = binascii.unhexlify('120C12161220122A')
k = binascii.unhexlify('157C15E016441B58')
l = binascii.unhexlify('157C15E01644')
m = binascii.unhexlify('157C15E016441C20')
n = binascii.unhexlify('157C15E01644')
o = binascii.unhexlify('1518157C15AE15E0')
p = binascii.unhexlify('1518157C15AE15E0')






dlugosc_a = len(a)
dlugosc_b = len(b) # inaczej: dlugosc_b = dlugosc_a - 2
dlugosc_c = len(c)
dlugosc_d = len(d) # inaczej: dlugosc_b = dlugosc_a - 2
dlugosc_e = len(e)
dlugosc_f = len(f) # inaczej: dlugosc_b = dlugosc_a - 2
dlugosc_g = len(g)
dlugosc_h = len(h) # inaczej: dlugosc_b = dlugosc_a - 2
dlugosc_k = len(k)
dlugosc_l = len(l) # inaczej: dlugosc_b = dlugosc_a - 2
dlugosc_m = len(m)
dlugosc_n = len(n) # inaczej: dlugosc_b = dlugosc_a - 2
dlugosc_o = len(o)
dlugosc_p = len(p) # inaczej: dlugosc_b = dlugosc_a - 2


filename_in = 'saab.bin'
filename_out = 'saab_egroff.bin'

# --- wczytanie ---

with open(filename_in, 'rb') as f:
    content = f.read()

# --- zamiana na bytearray ---

content = bytearray(content)

# --- wyszukiwanie i podmienianie ---

# wyszukanie pierwszego
pos = content.find(a)

# jesli znaleziono to wykonaj to co w petli
while pos > -1:

    # podmiana na zera
    for i in range(50):
         content[ pos + dlugosc_b + i ] = 0

    # wyszukanie kolejnego
    pos = content.find(a, pos+1)

    # lub od razu przeskakujemy wyszukany kawalek i wszystkie zera
    #pos = content.find(a, pos+dlugosc_b+50)

    # (automatyczny) powrot do `while`

#drugi zakres wyszukiwania

# wyszukanie pierwszego
pos = content.find(c)

# jesli znaleziono to wykonaj to co w petli
while pos > -1:

    # podmiana na zera
    for i in range(50):
         content[ pos + dlugosc_d + i ] = 0

    # wyszukanie kolejnego
    pos = content.find(c, pos+1)

    # lub od razu przeskakujemy wyszukany kawalek i wszystkie zera
    #pos = content.find(c, pos+dlugosc_b+50)

    # (automatyczny) powrot do `while`


#trzeci zakres wyszukiwania

# wyszukanie pierwszego
pos = content.find(e)

# jesli znaleziono to wykonaj to co w petli
while pos > -1:

    # podmiana na zera
    for i in range(50):
         content[ pos + dlugosc_f + i ] = 0

    # wyszukanie kolejnego
    pos = content.find(e, pos+1)

    # lub od razu przeskakujemy wyszukany kawalek i wszystkie zera
    #pos = content.find(e, pos+dlugosc_f+50)

    # (automatyczny) powrot do `while`

#czwarty zakres wyszukiwania

# wyszukanie pierwszego
pos = content.find(g)

# jesli znaleziono to wykonaj to co w petli
while pos > -1:

    # podmiana na zera
    for i in range(50):
         content[ pos + dlugosc_h + i ] = 0

    # wyszukanie kolejnego
    pos = content.find(g, pos+1)

    # lub od razu przeskakujemy wyszukany kawalek i wszystkie zera
    #pos = content.find(g, pos+dlugosc_h+50)

    # (automatyczny) powrot do `while`

#piaty zakres wyszukiwania

# wyszukanie pierwszego
pos = content.find(k)

# jesli znaleziono to wykonaj to co w petli
while pos > -1:

    # podmiana na zera
    for i in range(50):
         content[ pos + dlugosc_l + i ] = 0

    # wyszukanie kolejnego
    pos = content.find(k, pos+1)

    # lub od razu przeskakujemy wyszukany kawalek i wszystkie zera
    #pos = content.find(k, pos+dlugosc_l+50)

    # (automatyczny) powrot do `while`


#szosty zakres wyszukiwania

# wyszukanie pierwszego
pos = content.find(m)

# jesli znaleziono to wykonaj to co w petli
while pos > -1:

    # podmiana na zera
    for i in range(50):
         content[ pos + dlugosc_n + i ] = 0

    # wyszukanie kolejnego
    pos = content.find(m, pos+1)

    # lub od razu przeskakujemy wyszukany kawalek i wszystkie zera
    #pos = content.find(m, pos+dlugosc_n+50)

    # (automatyczny) powrot do `while`

#siodmy zakres wyszukiwania

# wyszukanie pierwszego
pos = content.find(o)

# jesli znaleziono to wykonaj to co w petli
while pos > -1:

    # podmiana na zera
    for i in range(50):
         content[ pos + dlugosc_p + i ] = 0

    # wyszukanie kolejnego
    pos = content.find(o, pos+1)

    # lub od razu przeskakujemy wyszukany kawalek i wszystkie zera
    #pos = content.find(o, pos+dlugosc_p+50)

    # (automatyczny) powrot do `while`




# --- zapisanie ---

with open(filename_out, 'wb') as f:
    f.write(content)
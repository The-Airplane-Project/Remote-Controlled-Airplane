# Online Python compiler (interpreter) to run Python online.
# Write Python 3 code in this online editor and run it.
num = -5510
if num<0:
    num = abs(num)
    print (num)
    x = ( num & 0b11111111)
    y = ((num>>8) & 0b11111111)
    y = y | (0b1<<7)
else:
    print(num)
    x = ( num & 0b11111111)
    y = ((num>>8) & 0b11111111)

print ("Number:" , bin(num))

print ("Byte 0:", bin(x))
print ("Byte 1:", bin(y))

if (y & (0b1 << 7)):
    decode_num = 0-(x | ((y&0b1111111)<<8))
    print (decode_num)
else:
    print (x | (y<<8))

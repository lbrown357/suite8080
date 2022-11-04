HEXNUMS={'0':0,
         '1':1,
         '2':2,
         '3':3,
         '4':4,
         '5':5,
         '6':6,
         '7':7,
         '8':8,
         '9':9,
         'A':10,
         'B':11,
         'C':12,
         'D':13,
         'E':14,
         'F':15}

def checksum(num):
    hexnums=[]
    total=0
    for i in range(0,len(num)//2):
        hexnums.append(num[i*2:i*2+2])
    for i in hexnums:
        total+=HEXNUMS[i[0]]*16+HEXNUMS[i[1]]
    total=256-total+256*int(total/256)
    return str(hex(total))[-2:].upper()


x=input('Enter your bytes here: ')
print(checksum(x))

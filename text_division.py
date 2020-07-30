import re

text = open("transcriptions.txt","r")
text = str(text.read())

participants = re.split("Participant ", text, flags = re.IGNORECASE)

for i in range(1, len(participants)+1):
    writeP = open("{}.txt".format(i), "w+")
    writeP.write(participants[i-1])
    writeP.close()

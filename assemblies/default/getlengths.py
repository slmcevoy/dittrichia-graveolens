import re

#filehandle = "ditt_contamfiltered_hifiasm.asm.bp.p_ctg.fa"
filehandle = "ditt_contamfiltered_hifiasm.asm.bp.hap2.p_ctg.fa"

# Inplace way to sort, use of third variable 
def Sort(sub_li): 
    l = len(sub_li) 
    for i in range(0, l): 
        for j in range(0, l-i-1): 
            if (sub_li[j][1] < sub_li[j + 1][1]): 
                tempo = sub_li[j] 
                sub_li[j]= sub_li[j + 1] 
                sub_li[j + 1]= tempo 
    return sub_li 

def readFile(filehandle):
  f = open(filehandle, 'r')
  content = f.read()
  seqdata = []
  seqList = re.split(">", content, flags=re.MULTILINE)
  del seqList[0]
  for seq in seqList:
    header, sequence = seq.split("\n",1)
    pair = []
    pair.append(header)  
    pair.append(len(sequence.replace("\n", "")))
    seqdata.append(pair)
  return seqdata



seqs = readFile(filehandle)
sortedSeqs = Sort(seqs)

#l = []
#for s in seqs:
  #l.append(len(s))
#l.sort()
#print(l)
for s in seqs:
  print(s)

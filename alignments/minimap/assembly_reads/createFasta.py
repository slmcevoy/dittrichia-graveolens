import linecache
import argparse
import os

parser = argparse.ArgumentParser(
     prog='createFasta.py',
     usage='''python createFasta.py --fasta [fasta file given by braker] --path [Path of fasta file] --nameList [name of list file] --pathList [path of the list file] --out [name of output fasta file]''',
     description='''This program pulls out specific sequences from a fasta file, given the fasta file and a list of sequences saved in a text file''',
     epilog='''It requires numpy and biopython libraries''')
parser.add_argument('--fasta', type=str, help='The name of the fasta file', required=True)
parser.add_argument('--path', type=str, help='The path of the fasta file', required=False)
parser.add_argument('--nameList', type=str, help='name of the list file that contains name of sequences', required=True)
parser.add_argument('--pathList', type=str, help='path of list file', required=False)
parser.add_argument('--out', type=str, help='name of output fasta file', required=True)

args=parser.parse_args()
fastapath=args.path
fasta=args.fasta
listName=args.nameList
listPath=args.pathList
output=args.out

if fastapath==None:
    fastafile=fasta
else:
    fastafile=os.path.join(fastapath, fasta)

if listPath==None:
    listFile=listName
else:
    listFile=os.path.join(listPath, listName)

keep=[line.rstrip('\n') for line in open(listFile)]
    
fastanames=[]
fastalines=[]
i=1
for row in open(fastafile,'r'):
    if row.startswith(">") == True:
        fastanames.append(row[1:].strip("\n"))
        fastalines.append(i)
    i+=1
fastalines.append(i)

with open(output,'w') as seqs:
   for name in fastanames:
       if name in keep:
           k=fastanames.index(name)
           entry1=fastalines[k]
           entry2=fastalines[k+1]
           dnaseq=""
           for m in range(entry1+1,entry2):
               dnaseq+=linecache.getline(fastafile,m)
           seqs.write("%s%s%s%s%s" %(">",name,"\n",dnaseq,"\n"))

        

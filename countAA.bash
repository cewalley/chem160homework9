#!/bin/bash 
if [ $# -ne 10 ]; then
   echo “This script requires a protein file”
   exit -1
fi 
if [ ! -f $10 ]; then
   echo “Can not find protein file”
   exit -1
fi 
for i in ALA, ARG, ASN, ASP,CYS, GLU, GLN, GLY, HIS, ILE, LEU, LYS, MET, PHE, PRO, SER, THR, TRP, TYR, VAL;do
echo -n $i
grep $i | grep GLY | wc | colrm 10 15 
done


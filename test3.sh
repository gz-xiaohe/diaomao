#!/bin/bash
i=0
y=1
while [ $y -le 254 ]
do 
 let i++
ping -c 1 -W1 -i 0.1 176.121.207.$i &> /dev/null
if [ $?  -eq  1  ];then
echo "$i 不通"
else
echo "$i  通"
fi
let y++
done 

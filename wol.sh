#!/bin/bash
nome=$1

if [[ $nome == "h07ch" ]]
then
   echo "Loading Modules $nome"
else
   echo "Internal Error Auth Failed"
   exit  1
   exit 
fi

for i in {1..10}
do
   echo "Loading $i"
done

echo "Starting Ali"
sudo etherwake -i eno1 2c:f0:5d:95:34:c3

while [[ $scelta != -1 ]]; do

    clear; echo "
 Control Interface
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

  0. Test Connection
  
  1. Open SSH Shell

  2. Exit
  
  Inserire 0, 1, 
"
    read scelta
    case $scelta in
        0)
          echo "Select $scelta;
               "
          ping -c 5 192.168.1.55
          sleep 1
        ;;
        1)
          echo "Select $scelta;
               "   
          ssh stefano@192.168.1.55 -p 666
          sleep 1  
        ;;

        2)
          echo "exit "
          break
        ;;
        *) # per accettare solo 0-2, -1
	      continue
        ;;
    esac
done


echo "bye h07ch"

#!/bin/bash
name=$1

if [[ $name == "your name" ]]
then
   echo "Loading Modules $name"
else
   echo "Internal Error Auth Failed"
   exit  1
   exit 
fi

echo "Starting (Insert name of your host)"
sudo etherwake -i [insert interface] [insert mac address]

while [[ $select != -1 ]]; do

    clear; echo "
 Control Interface
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

  0. Test Connection
  
  1. Open SSH Shell

  2. Exit
  
  Insert 0, 1, 
"
    read select
    case $select in
        0)
          echo "Select $select;
               "
          ping -c 5 [insert ip]
          sleep 1
        ;;
        1)
          echo "Select $select;
               "   
          ssh [username]@[ip] -p [port]
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


echo "bye"

#!bin/bash
function copy_fun()
{
echo "Enter file name to copy : "
        read f1
   echo "Enter file name : "
        read f2
        if [ -f $f1 ]
                then cp $f1 $f2
        else
                echo "File does not exists"
        fi
}

function remove_fun()
{
echo "Enter which file wants to remove : "
        read f3
        if [ -f $f3 ]
                then rm $f3
        else
                echo "File does not exists"
        fi
        
}
echo "Menu"
echo "1. copy file"
echo "2. remove file"
echo "3. move file"
echo "4. Exit"


echo "Enter your choice : "
read ch

case "$ch" in
1) 
        copy_fun;;

2)      remove_fun;;
# I dont know problem with this case..not working
# 3) echo "Enter which file wants to move : "
#         read f4
#    echo "Enter where to move : "
#         read d1
#         if [ -f $f4 ]
#                 then 
#                     if[ -d $d1 ]
#                     then mv $f4 $d1
#                      fi
#         else
#                 echo "File does not exists"
#         fi
#         ;;
4) echo "Exit..."
        exit;;
esac




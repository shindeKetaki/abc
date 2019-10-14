#!bin/bash


function add_files()
{
    echo "Enter file names which u want to create : "
    read file1
    read file2
    read file3
    touch $file1 $file2 $file3
}
function zip_file()
{
    add_files
    tar -czf archive.tar.gz $file1 $file2 $file3
    
}

function unzip_file()
{
    add_files
    tar -czf archive.tar.gz $file1 $file2 $file3
    tar -xf archive.tar.gz
    
}

echo "Menu"
echo "1. zip file"
echo "2. unzip file"
echo "3. Exit"


echo "Enter your choice : "
read ch

case "$ch" in
1) 
       zip_file;;

2)      unzip_file;;

3)      exit;;
esac

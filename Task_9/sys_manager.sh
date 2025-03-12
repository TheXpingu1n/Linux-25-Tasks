echo "========== Linux System Manager ==========
1. Show System Information
2. Check File Permissions
3. Change File Permissions
4. Compress a File/Directory
5. Decompress a File
6. Exit
==========================================
Enter your choice: "
read choice 

case $choice in
1) echo "Current user is: $(whoami)";;
2) read -p "Enter filename: " filename
echo "Permissions for $filename : $(stat -c "%A" "$filename")";;
3) read -p "Enter filename: " filename 
read -p "Permissions you need to set: " perm
chmod $perm $filename
echo "Permissions Changed successfully!";;
4)
 read -p "Enter the file/directory name: " filename  
read -p "Choose compression type:  
1. tar.gz  
2. zip  
Enter choice: " subchoice
if [[ $subchoice -eq 1 ]]
then
tar -czf "${filename%.*}.tar.gz" "$filename"
echo "Compression successful: ${filename%.*}.tar.gz created."
else
zip "${filename%.*}.zip" "$filename"
echo "Compression successful: ${filename%.*}.zip created."
fi;;
5) read -p "Enter the compressed file name: " filename
echo "Extracting..."
tar -xzf "$filename"
echo "Decompression successful.";;
6) echo "Exiting the system manager. Goodbye!";;
*) echo "Invalid option!, Exiting!";;
esac

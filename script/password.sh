cat ./list-user.txt | while read line
 do
 echo $line > ./tmp.txt
 user=$(cat ./tmp.txt | awk  '{print $1}')
 password=$(cat ./tmp.txt| awk  '{print $2}')
 echo -e "$password\n$password" | passwd $user
 echo $password
 sleep 4
 
 done

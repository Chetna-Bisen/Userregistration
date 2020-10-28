#!/bin/bash -x
shopt -s extglob

checkname(){
Firstpat="^[[:upper:]]{1}[[:lower:]]{3,}$"
Lastpat="^[[:upper:]]{1}[[:lower:]]{3,}$"

if [[ $Firstname =~ $Firstpat && $Lastname =~ $Lastpat ]]
then
   echo "Valid name"
else
   echo "Invalid name"
fi
}

echo "Enter your firstname"
read Firstname
echo "Enter your lastname"
read Lastname
checkname $Firstname $Lastname


checkemail(){
Emailpat="^[_a-z0-9-]+(.[a-z0-9-]+)+([@]{1})+[a-z0-9-]+(.[a-z0-9-]{3,})*(.[a-z]{2,4})$"
if [[ $Email =~ $Emailpat ]]
then
echo "Valid email address"
else
echo "Please enter valid email address format"
fi
}
echo "Enter your Email Address"
read Email
checkemail $Email


checkcontact(){
Mobpat="^[0-9]{2}[ ][0-9]{10}$"

if [[ $Contact =~ $Mobpat ]]
then
   echo "Valid Contact"
else
   echo "Please enter valid Contact format"
fi
}
echo "Enter a Contact Number"
read Contact
checkcontact $Contact



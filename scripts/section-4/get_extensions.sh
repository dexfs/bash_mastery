#!/bin/bash
read -p "What is your first name?: " firstname
read -p "What is your surname/family name?: " lastname
PS3="What is the type of your phone?: "
select phone in headset handled 
do 
echo "You chose $phone"
break
done
PS3="What is your department?: "
select department in finance sales "customer service" engineering
do
echo "You chose $department"
break
done

read -N 4 -p "What is your extension? (must be 4 digits): " ext
echo # for formatting 
read -N 4 -s -p "What access code would you like to use when dialling in (must be 4 digits)?: " access
echo "$firstname,$lastname,$phone,$department,$ext,$access" >> extensions.csv

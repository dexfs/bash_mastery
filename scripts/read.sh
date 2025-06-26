#!/bin/bash

# read -t permite o script passar pra o próximo se o usuário não preencher nada
# read -s mascara o input no terminal


read -s -p "Input your first name: " name
read -s -p "Input your age: " age
read -s -p "Input the town you are from: " town
echo "My name is $name"
echo "I am $age"
echo "I am from $town"

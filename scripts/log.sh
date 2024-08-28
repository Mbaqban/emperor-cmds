#!/bin/zsh

#shell variable
Person="Mr.Baqban"

echo -e "Hello $Person"
echo -e "Hello ${Person}. Wellcome sir."

#Enviroment variable

export GPerson="Grand Baqban"

echo $GPerson
#/etc/enviroment
#env

#Reading
# ➜ read s
# sgsfg\ dfsklgmklsf \klasfmgklsfmg
# ➜ echo $s

read -d 's' var1 var2
echo $var1
echo $var2

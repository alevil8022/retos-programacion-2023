
#!/usr/bin/bash


declare -A alfabeto
alfabeto[a]='4'
alfabeto[b]='I3'
alfabeto[c]='['
alfabeto[d]=')'
alfabeto[e]='3'
alfabeto[f]='|='
alfabeto[g]='&'
alfabeto[h]='#'
alfabeto[i]='1'
alfabeto[j]=',_|'
alfabeto[k]='>|'
alfabeto[l]='1'
alfabeto[m]='/\/\'
alfabeto[n]='^/'
alfabeto[o]='0'
alfabeto[p]='|*'
alfabeto[q]='(_,)'
alfabeto[r]='I2'
alfabeto[s]='5'
alfabeto[t]='7'
alfabeto[u]='(_)'
alfabeto[v]='\/'
alfabeto[w]='\/\/'
alfabeto[x]='><'
alfabeto[y]='j'
alfabeto[z]='2'
alfabeto[1]='L'
alfabeto[2]='R'
alfabeto[3]='E'
alfabeto[4]='A'
alfabeto[5]='S'
alfabeto[6]='b'
alfabeto[7]='T'
alfabeto[8]='B'
alfabeto[9]='g'
alfabeto[0]='0'
alfabeto[ ]=' '


read -p "Indicar el texto que desea traducir: " texto


        echo "${texto,,}" > file    
        size=${#texto}
        for ((j=1; j<=$size; j++))
        do
                caracter=`cut -c $j file`
                new_texto+=${alfabeto[$caracter]}
        done
rm file
echo "PALABRA ORIGINAL: ", $texto
echo "PALABRA TRADUCIDA: ", $new_texto


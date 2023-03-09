# coding: utf-8
import os
import string
from pickle import APPEND

os.system('cls')

abre = open('docs/'+'arara_loura.txt','r', encoding='utf-8')
doc = abre.read()

print("Doc original: ", doc)
print("--------------------")

abre = open('punctuation.txt','r', encoding='utf-8')
pontuacao = abre.read()

#exerc 1
conjunto_pont = [] #vetor para armazenar as pontuações encontradas

for c in doc: #percorre todo o doc, atribuindo cada caracter a i
    if c in pontuacao:  #se o caracter encontrado existir no do "punctuation"...
        doc = doc.replace(c, "") #a "string" doc é alterada, setando null ("") onde era a pontuação
        conjunto_pont.append(c) #conjunto de pontuações encontrada recebe o caracter encontrado

print("Exerc 1")
print("---")
print("Pontuações removidas:", conjunto_pont)
print("Documento sem pontuação:", doc)
print("------------------------------------")


#exerc 2
abre = open('stopwords_ptbr.txt','r')
stopwords = abre.read()

conjunto_filtrado = [] #vetor auxiliar para guardar a string filtrada
conjunto_stopwords = [] #vetor auxiliar para guardar as stopwords encontradsa

for i in doc.split():
    i = i.lower()
    if not i in stopwords: #se não tiver o termo nas stoptwords...
        conjunto_filtrado.append(i) #idicona i (o token) na lista "original"
    else: #se o termo for uma stopword
        conjunto_stopwords.append(i) #adiciona i (no caso, o token) à lista de stopwords encontrada

print("Exerc 2")
print("---")
print("Stopword(s) encontrada(s): ", conjunto_stopwords)
print("Doc sem stopwords: ", conjunto_filtrado)
print("------------------------------------")
#exerc 3

print("Exerc 3")
print("---")





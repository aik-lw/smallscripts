#！/bin/bash

# Set up the Google API variabes
QR_prefix=\
https://chart.googleapis.com/chart?chs=
# Change the QR codes size here 
#(pixel x pixel)
QRsize=120x120
QR_suffix='&cht=qr&chld=l|0&chl='


#read the list of DOIs from txt file
counter=0
while read F; do
	counter=$((counter+1))
	echo $F
	wget $QR_prefix$QRsize$QR_suffix$F \
	 -O ../${counter}.png
done <"../DOIs/DOIs.txt"


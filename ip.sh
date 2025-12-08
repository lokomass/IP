#!/bin/bash

##############################################
#                     IP                     #
##############################################

# URL
URL="http://ip-api.com/json?lang=fr"

# Programme
JSON=$(curl -s "${URL}")

# Variables
IP=$(echo "${JSON}" | jq -r '.query')
CITY=$(echo "${JSON}" | jq -r '.city')
COUNTRY=$(echo "${JSON}" | jq -r '.country')
CODE=$(echo "${JSON}" | jq -r '.countryCode')

# Drapeau
FILE="${HOME}/.local/share/flags/${CODE}.png"
FLAG=$(cat "${FILE}" | base64 -w 0)


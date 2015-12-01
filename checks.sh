#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${DIR}/helper_fn

function firstLetters() {
  cut -c1 | sort | uniq | tr '[a-z]' '[A-Z]'
}

mkdir -p /tmp/.greeting
cat ${DIR}/greetings.txt | cut -d , -f2 | firstLetters  > '/tmp/.greeting/first-letters-nationalities'
${LS} ${DIR}/characters | firstLetters > '/tmp/.greeting/first-letters-characters'

lettersMissingFromCharacters=`comm -i -2 -3 /tmp/.greeting/first-letters-nationalities /tmp/.greeting/first-letters-characters`
lettersMissingFromNationalities=`comm -i -1 -3 /tmp/.greeting/first-letters-nationalities /tmp/.greeting/first-letters-characters`

if [ -n "${lettersMissingFromCharacters}" ]; then
  echo "WARN: Missing characters starting with the following letters: ${lettersMissingFromCharacters}"
  exit 1
fi

if [ -n "${lettersMissingFromNationalities}" ]; then
  echo "WARN: Missing nationalities starting with the following letters: ${lettersMissingFromNationalities}"
  exit 1
fi

echo "SUCCESS: Set of first letters match between nationalities and characters."

printf 'Insert string >'
read strval
echo 'string was ' . $strval
echo 'was string equal to hi?'
if [[ $strval == 'hi' ]]
  echo 'yes'
else
  echo 'no'
fi

#!/usr/bin/zsh

# Make directory to save logs

# unique folder name generation, i thought this was lit :fire:
unixtime="$(date +%s)" # just returns the number of seconds since 1/1/1970

# really long bc i just copied it from my zsh history lmao
# openssl, which requires stdin input, give it our time that we just got
# then filter out the hash code with grep, then finally take the first 10 digits out of it
# all of that is saved in foldername
printf "sha1\n$unixtime\n" | openssl | grep -Po '[0-9a-f]{40}' | cut -c 1-11 | read foldername

export_path=/fd/logs/

# for debug reasons, print out what we just generated

# make the output directory  
cd $export_path
mkdir $foldername

# if the folder was made successfully  
if [[ $? = 0 ]]; then
	echo 'Created destination log folder without issues.'
elif [[ $? = 1 ]]; then
	echo 'folder already exists, wait a second or two and try again.'
	exit 1
else
	echo "Failed creating folder, check mkdir return code $?"
	exit 1
fi

cp /var/log/* $foldername/ -rv
sync

echo 'Log backup complete'
echo "Copied logs are be located in: $export_path$foldername"

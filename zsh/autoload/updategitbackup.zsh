for repo in $(ls); do;
	rm "/data/git/$repo" -rv; 
	cp -rv "$repo" "/data/git/$repo"; 
done


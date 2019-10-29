function gitdiff_minimal() {
	git diff -p --minimal > diffs/minimal.diff
}

function gitdiff_patience() {
	git diff -p --patience > diffs/patience.diff
}

function gitdiff_histogram() {
	git diff -p --histogram > diffs/histogram.diff
}




echo 'Calling gitdiff_minimal()' 
gitdiff_minimal 

echo 'Calling gitdiff_patience()'
gitdiff_patience 

echo 'Calling gitdiff_histogram()'
gitdiff_histogram 

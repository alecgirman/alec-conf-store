for dir in $(ls); do
    (cd $dir; git pull)
done;

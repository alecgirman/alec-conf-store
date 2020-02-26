for infile in "$(ls *.vim)"; do
  target = grep -Po '\"BUILD_TARGET; (.*)$'
done

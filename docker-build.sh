TAG=$(git log -n 1 --pretty=format:'%H' | cut -c1-8)
docker build . -t anchore-analyzer:$TAG
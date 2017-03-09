TAG=dluc/debian-base
VERSION=0.1

docker build --tag $TAG:$VERSION --squash --compress . && 
    echo "== DONE ==" && \
    docker images && \
    echo "" && \
    echo "=> docker run -it $TAG:$VERSION"

if [ $? -ne 0 ]; then
    echo "== Build failed =="
fi
docker build -t NAME:TAG .
docker run -it TAG bash
docker images -f "dangling=true" -q

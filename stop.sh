docker ps | grep "czero" | awk '{ print $1 }' | xargs docker kill

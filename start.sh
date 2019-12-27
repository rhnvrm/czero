docker rm czero
docker run \
    --name czero \
    -t \
    --network host \
    czero:latest "hlds_linux -game czero -pidfile +map as_bloodbath +maxplayers 32 -autoupdate -nohltv sys_ticrate 10000"

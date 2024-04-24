# Counter Strike: Condition Zero - Dedicated Server using Docker

Starts a server for Counter Strike: Condition Zero.


In the default configuration, the server starts with the aa_dima2 map which acts like a quick deathmatch.

For tweaking the configuration, check the Configuration section below.

## Running 
    
```bash
    docker-compose up -d
```

## Stopping

```bash
    docker-compose down
```

## Configuration

### Server Configuration

The server configuration is done in the `server.cfg` file. You can change the server name, password, etc.

### Maps

The maps are located in the `maps` directory. You can add or remove maps from this directory. Once added,
you need to update the docker-compose file to include the new maps.

### RCON / Password

The RCON and Server passwords are setup in `config/server.cfg`. You can change these to whatever you like. 

## Reference

- https://github.com/startersclan/docker-sourceservers
# ethereum-config

## path tree

```sh
mkdir -p /wallet/ethereum/consensus
```

## install

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/snakewarhead/ethereum-config-consensus/master/install.sh)"
```

## prysm

```sh
curl https://raw.githubusercontent.com/prysmaticlabs/prysm/master/prysm.sh --output prysm.sh && chmod +x prysm.sh
```

## check status

```sh
curl http://localhost:3500/eth/v1/node/syncing

curl http://localhost:3500/eth/v1/node/health

curl http://localhost:3500/eth/v1/node/peer_count

curl http://localhost:3500/eth/v1alpha1/node/eth1/connections
```

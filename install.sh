set -e

CONFIG_HOME=/wallet/ethereum/consensus
REMOTE=https://github.com/snakewarhead/ethereum-config-consensus.git

mkdir -p "$CONFIG_HOME"
git clone "$REMOTE" "$CONFIG_HOME"

cd "$CONFIG_HOME"

curl https://raw.githubusercontent.com/prysmaticlabs/prysm/master/prysm.sh --output prysm.sh && chmod +x prysm.sh

#crontab -l > cron_tmp && echo "*/30 * * * * /wallet/ethereum/execution/checkrunning.sh" >> cron_tmp && crontab cron_tmp && rm -f cron_tmp


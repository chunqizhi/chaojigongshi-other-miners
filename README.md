# chaojigongshi-other-miners
## 生产环境
docker run -d --name joinEthNode -p 30303:30303/tcp -p 30303:30303/udp -p 8545:8545 -p 8546:8546 -v $PWD/command:/usr/local/bin -v $PWD/data:/data -v $PWD/genesis:/genesis zfq17876911936/chaojigongshi-ethereum-client-go:btc-miningPool-20201026
## 测试环境
docker run -d --name joinEthNode -p 30303:30303/tcp -p 30303:30303/udp -p 8545:8545 -p 8546:8546 -v $PWD/command:/usr/local/bin -v $PWD/genesis:/genesis zfq17876911936/chaojigongshi-ethereum-client-go:btc-miningPool-20201026


docker exec -it joinEthNode /bin/sh
docker exec -it joinEthNode bash

geth attach geth.ipc

这个 enode 信息是上一步部署中的 backup 目录下 eth 节点的 enode，所需要到对应机器获取

admin.addPeer("enodeInfo")

同步正常了，再在该节点进行挖矿

personal.newAccount()

miner.start()

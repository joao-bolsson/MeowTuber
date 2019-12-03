
# MeowTuber
Troca badwords (nome de youtubers) por nome de gatinhos

## Instalando dependências
```
sudo apt install curl  
sudo apt install python3-pip  
sudo apt install scapy  
sudo npm install -g http-perf  
```

(isso vai instalar um programa chamado nperf, pode executar "nperf" no terminal pra ver se instalou certo)

### instala as dependências para netfilter
`sudo apt-get install build-essential python-dev libnetfilter-queue-dev`

### instala o netfilter
`sudo pip install NetfilterQueue`

OK

## Criando as interfaces virtuais

Entra no diretorio NFQUEUE

executa o comando para tornar o arquivo executável 
`chmod +x create_interface.sh`

O conteúdo do arquivo preminha interface de rede era essacisa ser alterado conforme o IP da sua máquina, é só incrementar o último número.

```
# se o teu ip eh 192.168.15.5 a configuracao eh a abaixo:
ifconfig wlp2s0:0 192.168.15.6
ifconfig wlp2s0:0 netmask 255.255.255.0

ifconfig wlp2s0:1 192.168.15.7
ifconfig wlp2s0:1 netmask 255.255.255.0

```

executa a criação das interfaces virtuais

`sudo ./create_interface.sh` 


OK

## Testando

Agora, precisa extrair o arquivo ServerTeste.zip e ir no diretorio que foi extraído, no meu caso, eu extraí na Desktop/

```
cd ~/Desktop/ServerTeste
export FLASK_APP=main.py
```

Executar o comando a seguir. O IP é o endereço da interface:1 que foi configurada em create_interfaces.sh

`flask run --host=192.168.15.7`

Pronto, agora tá rodando, precisa abrir outro terminal e rodar o comando:

`curl 192.168.15.7:5000/submit -d "text=testando"`


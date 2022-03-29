#Instalacion de Go 1.17.6
mkdir go
cd go
mkdir bin pkg src 
 
cd ..

wget https://go.dev/dl/go1.17.6.linux-amd64.tar.gz

chmod +x go1.*

sudo tar -C /usr/local -xzf go1.*

#   MANUAL
echo "export GOROOT=/usr/local/go" >> ~/.bashrc
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
#Hacer un pwd para saber que poner
echo "export GOPATH=/home/miguel/go" >> ~/.bashrc
echo "export GOBIN=/home/miguel/go/bin" >> ~/.bashrc
source .bashrc

sudo apt-get -y update
sudo apt-get -y upgrade

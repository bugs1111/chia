sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

CHIA=chia-blockchain

if [ -d "~/$CHIA" ];then
  echo 'remove chia-blockchain...'
  rm -rf ~/$CHIA
fi


echo 'installing chia...'
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules ~/$CHIA && cd ~/$CHIA && chmod +x install.sh && ./install.sh && . ./activate && chia init

# 
echo 'remove chia-blockchain...'
rm -rf chia-blockchain


echo 'git chia...'
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules


echo 'install chia...'
cd ~/chia-blockchain && chmod +x install.sh && ./install.sh



# git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules && cd chia-blockchain && chmod +x install.sh && ./install.sh && . ./activate && chia init
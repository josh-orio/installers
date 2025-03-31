git clone https://github.com/josh-orio/plot-cpp.git
cd plot-cpp
mkdir build && cd build
cmake .. && sudo make -j install

cd ../..

read -p "delete plot-cpp/ (y/n): " del

if [[ "$del" == "y" || "$del" == "Y" ]]; then
	rm -rf plot-cpp
elif [[ "$del" == "n" || "$del" == "N" ]]; then
	echo "ignoring build directory"
else
	echo "unrecognized input!"
fi
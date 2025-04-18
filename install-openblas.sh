# Build and install OpenBLAS
# x86 & arm64

# Joshua O'Riordan - 8 Mar 2025

git clone https://github.com/OpenMathLib/OpenBLAS.git
cd OpenBLAS
mkdir build && cd build
cmake .. && sudo make -j install

cd ../..

read -p "delete openblas/ (y/n): " del

if [[ "$del" == "y" || "$del" == "Y" ]]; then
	rm -rf OpenBLAS
elif [[ "$del" == "n" || "$del" == "N" ]]; then
	echo "ignoring build directory"
else
	echo "unrecognized input!"
fi

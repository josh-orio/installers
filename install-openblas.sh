# Build and install OpenBLAS
# x86 & arm64

# Joshua O'Riordan - 8 Mar 2025

git clone https://github.com/OpenMathLib/OpenBLAS.git
cd OpenBLAS
mkdir build && cd build
cmake .. && sudo make install

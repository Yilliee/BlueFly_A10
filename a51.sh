export ARCH=arm64
make clean && make mrproper
make bluefly_a51_defconfig O=a51
# make bluefly_m31_defconfig O=m31
make -j$(nproc --all) CROSS_COMPILE=$HOME/toolchain/bin/aarch64-linux-android- CC=$HOME/clang/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- O=a51
# make -j$(nproc --all) CROSS_COMPILE=$HOME/toolchain/bin/aarch64-linux-android- CC=$HOME/clang/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- O=m31

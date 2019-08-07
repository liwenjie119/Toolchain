#!/bin/bash

# Android Prebuilt Toolchains External Script Set - APTESS
# only for build ARM64 Linux Kernels
# Linaro GCC Toolchains Branch

clear
echo
echo "-APTESS - Toolchain Choice-"
echo
echo "${bldcya}-GCC Linaro-${txtrst}"
echo
echo "0) GCC 5.5.0 toolchain from Linaro"
echo "1) GCC 6.4.1 toolchain from Linaro"
echo "2) GCC 7.4.1 toolchain from Linaro"
echo
echo "${bldgrn}-GCC UBERTC-${txtrst}"
echo
echo "3) GCC 5.3.1 toolchain from UBERTC"
echo "4) GCC 6.4.1 toolchain from UBERTC"
echo "5) GCC 7.2.1 toolchain from UBERTC"
echo "6) GCC 8.0.0 toolchain from UBERTC"
echo
echo "${bldred}-GCC Google-${txtrst}"
echo
echo "7) GCC 4.9.0 toolchain from Google"
echo
echo "${bldblu}-GCC Sabermod-${txtrst}"
echo
echo "8) GCC 4.9.X toolchain from Sabermod"
echo "9) GCC 7.0.X toolchain from Sabermod"
echo
echo "*) Any other key to Exit"
echo
unset errortoolchain
read -p "Choice: " -n 1 -s x
_CROSS_COMPILE=$CROSS_COMPILE
unset CROSS_COMPILE
case "$x" in

 #################### LINARO ####################

	0 ) export CROSS_COMPILE="$(pwd)/../Toolchain/linaro_gcc/aarch64-linux-gnu-5.5.0-2017.10/bin/aarch64-linux-gnu-";  export LD_LIBRARY_PATH="$(pwd)/../Toolchain/linaro_gcc/aarch64-linux-gnu-5.5.0-2017.10/lib/"; ToolchainName="Linaro"; ToolchainCompile="Linaro GCC 5.5.0";;

	1 ) export CROSS_COMPILE="$(pwd)/../Toolchain/linaro_gcc/aarch64-linux-gnu-6.4.1-2017.11/bin/aarch64-linux-gnu-";  export LD_LIBRARY_PATH="$(pwd)/../Toolchain/linaro_gcc/aarch64-linux-gnu-6.4.1-2017.11/lib/"; ToolchainName="Linaro"; ToolchainCompile="Linaro GCC 6.4.1";;

	2 ) export CROSS_COMPILE="$(pwd)/../Toolchain/linaro_gcc/aarch64-linux-gnu-7.4.1-2019.02/bin/aarch64-linux-gnu-";  export LD_LIBRARY_PATH="$(pwd)/../Toolchain/linaro_gcc/aarch64-linux-gnu-7.4.1-2019.02/lib/"; ToolchainName="Linaro"; ToolchainCompile="Linaro GCC 7.4.1";;

 #################### UBERTC ####################

	3 ) export CROSS_COMPILE="$(pwd)/../Toolchain/ubertc_gcc/aarch64-linux-android-5.3.1/bin/aarch64-linux-android-";  export LD_LIBRARY_PATH="$(pwd)/../Toolchain/ubertc_gcc/aarch64-linux-android-5.3.1/lib/"; ToolchainName="UBERTC"; ToolchainCompile="UBERTC GCC 5.3.1";;

	4 ) export CROSS_COMPILE="$(pwd)/../Toolchain/ubertc_gcc/aarch64-linux-android-6.4.1/bin/aarch64-linux-android-";  export LD_LIBRARY_PATH="$(pwd)/../Toolchain/ubertc_gcc/aarch64-linux-android-6.4.1/lib/"; ToolchainName="UBERTC"; ToolchainCompile="UBERTC GCC 6.4.1";;

	5 ) export CROSS_COMPILE="$(pwd)/../Toolchain/ubertc_gcc/aarch64-linux-android-7.2.1/bin/aarch64-linux-android-";  export LD_LIBRARY_PATH="$(pwd)/../Toolchain/ubertc_gcc/aarch64-linux-android-7.2.1/lib/"; ToolchainName="UBERTC"; ToolchainCompile="UBERTC GCC 7.2.1";;

	6 ) export CROSS_COMPILE="$(pwd)/../Toolchain/ubertc_gcc/aarch64-linux-android-8.0/bin/aarch64-linux-android-";  export LD_LIBRARY_PATH="$(pwd)/../Toolchain/ubertc_gcc/aarch64-linux-android-8.0/lib/"; ToolchainName="UBERTC"; ToolchainCompile="UBERTC GCC 8.0.0";;

 #################### GOOGLE ####################

	7 ) export CROSS_COMPILE="$(pwd)/../Toolchain/google_gcc/aarch64-linux-android-4.9/bin/aarch64-linux-android-";  export LD_LIBRARY_PATH="$(pwd)/../Toolchain/google_gcc/aarch64-linux-android-4.9/lib/"; ToolchainName="Google"; ToolchainCompile="Google GCC 4.9.0";;

 #################### SABERMOD ####################

	8 ) export CROSS_COMPILE="$(pwd)/../Toolchain/sabermod_gcc/aarch64-linux-android-4.9/bin/aarch64-linux-android-";  export LD_LIBRARY_PATH="$(pwd)/../Toolchain/sabermod_gcc/aarch64-linux-android-4.9/lib/"; ToolchainName="Sabermod"; ToolchainCompile="Sabermod GCC 4.9.X";;

	9 ) export CROSS_COMPILE="$(pwd)/../Toolchain/sabermod_gcc/aarch64-linux-android-7.0/bin/aarch64-";  export LD_LIBRARY_PATH="$(pwd)/../Toolchain/sabermod_gcc/aarch64-linux-android-7.0/lib/"; ToolchainName="Sabermod"; ToolchainCompile="Sabermod GCC 7.0.X";;

	* ) ;;


esac
if [ "$CROSS_COMPILE" == "" ]
then
	CROSS_COMPILE=$_CROSS_COMPILE
	unset _CROSS_COMPILE
else
	echo $ToolchainCompile
fi

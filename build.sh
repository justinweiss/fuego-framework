./boost.sh -ios
mv ios/framework/* pkg
curl -L -O http://downloads.sourceforge.net/project/fuego/fuego/1.1/fuego-1.1.tar.gz

echo "Unpacking fuego..."
tar xzf fuego-1.1.tar.gz
mv fuego-1.1 fuego

echo "Applying patches..."
patch -p2 < patches/fuego_boost_1_46.diff
patch -p2 < patches/fuego_boost_1_51.diff
patch -p2 < patches/fuego_llvm.diff
patch -p1 < patches/fuego_clang.diff

echo "Building fuego.framework..."

./build_framework.sh

rm -rf boost_*.tar.bz2 src ios
rm -rf fuego-*.tar.gz fuego build

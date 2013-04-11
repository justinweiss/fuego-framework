git clone git://gitorious.org/~galbraithjoseph/boostoniphone/galbraithjosephs-boostoniphone.git
cd galbraithjosephs-boostoniphone
patch -p1 < ../patches/boostoniphone.diff
./boost.sh

cd ..
mkdir -p pkg
mv galbraithjosephs-boostoniphone/ios/framework/boost.framework pkg

curl -L -O http://downloads.sourceforge.net/project/fuego/fuego/1.1/fuego-1.1.tar.gz

echo "Unpacking fuego..."
tar xzf fuego-1.1.tar.gz
mv fuego-1.1 fuego

echo "Applying patches..."
patch -p2 < patches/fuego_boost_1_46.diff
patch -p2 < patches/fuego_boost_1_51.diff
patch -p2 < patches/fuego_llvm.diff

echo "Building fuego.framework..."

./build_framework.sh

rm -rf build fuego fuego-*.tar.gz galbraithjosephs-boostoniphone

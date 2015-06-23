import sys, os
# build python with:
# sudo apt-get install -y libssl-dev:i386 zlib1g-dev:i386 libbz2-dev:i386 libreadline-dev:i386 libsqlite3-dev:i386
# env PYTHON_CONFIGURE_OPTS="--enable-shared" CFLAGS="-m32" LDFLAGS="-m32" pyenv install 2.7
sys.path.insert(0, "/home/ekse/.pyenv/versions/2.7/lib/python2.7/dist-packages/")
sys.path.insert(0, "/home/ekse/.pyenv/versions/2.7/lib/python2.7/")
sys.path.append("/usr/lib/python2.7/")
sys.path.append("/usr/lib/python2.7/dist-packages/")
sys.path.append("/usr/local/lib/python2.7/")
sys.path.append("/usr/local/lib/python2.7/dist-packages/")

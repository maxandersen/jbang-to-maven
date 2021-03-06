
groupdir=$(echo "$GROUP" | sed "s/\./\//g")

basedir=~/.m2/repository/$groupdir/$ARTIFACT/$VERSION/
mkdir -p $basedir
curl -Ls https://sh.jbang.dev | bash -s - export -O $basedir/$ARTIFACT-$VERSION.jar hello.java
sh install.sh > $basedir/$ARTIFACT-$VERSION.pom

basedir=target
mkdir -p $basedir
curl -Ls https://sh.jbang.dev | bash -s - export -O $basedir/$ARTIFACT-$VERSION.jar hello.java
sh install.sh > $basedir/$ARTIFACT-$VERSION.pom

#sh install.sh > ./pom.xml
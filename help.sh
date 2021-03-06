
groupdir=$(echo "$GROUP" | sed "s/\./\//g")
mkdir -p ~/.m2/repository/$groupdir/$ARTIFACT/$VERSION/
curl -Ls https://sh.jbang.dev | bash -s - export -O ~/.m2/repository/$groupdir/$ARTIFACT/$VERSION/$ARTIFACT-$VERSION.jar hello.java
sh install.sh > ~/.m2/repository/$groupdir/$ARTIFACT/$VERSION/$ARTIFACT-$VERSION.pom
sh install.sh > ./pom.xml
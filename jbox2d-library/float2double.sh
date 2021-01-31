#!/bin/zsh

git checkout src
git clean -f src
sed s/float/double/g -i **/*.java
sed s/Float/Double/g -i **/*.java
sed s/intBits/longBits/g -i **/*.java
sed s/IntBits/LongBits/g -i **/*.java

sed 's/Double.doubleToLongBits/(int)Double.doubleToLongBits/g' -i **/*.java
sed 's/StrictMath.round/(int)StrictMath.round/g' -i **/*.java

# sed 's/ int / long /g' -i **/*.java
# sed 's/,int /,long /g' -i **/*.java
# sed 's/(int /(long /g' -i **/*.java
# sed 's/for (long /for (int /g' -i **/*.java
# sed 's/long next/int next/g' -i **/*.java
# sed 's/long prev/int prev/g' -i **/*.java
# sed 's/nth(long i)/nth(int i)/g' -i **/*.java
# sed 's/long m_islandIndex/int m_islandIndex/g' -i **/*.java
# sed 's/long m_index/int m_index/g' -i **/*.java

mv src/main/java/org/jbox2d/pooling/arrays/FloatArray.java src/main/java/org/jbox2d/pooling/arrays/DoubleArray.java

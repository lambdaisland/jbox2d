#!/bin/zsh

git checkout src
git clean -f src
sed s/float/double/g -i **/*.{java,proto}
sed s/Float/Double/g -i **/*.{java,proto}
sed s/intBits/longBits/g -i **/*.{java,proto}
sed s/IntBits/LongBits/g -i **/*.{java,proto}
sed 's/int hash /long hash /g' -i src/generated/org/box2d/proto/Box2D.java
sed 's/return hash/return (int)hash/g' -i src/generated/org/box2d/proto/Box2D.java
sed 's/memoizedHashCode = /memoizedHashCode = (int)/g' -i src/generated/org/box2d/proto/Box2D.java

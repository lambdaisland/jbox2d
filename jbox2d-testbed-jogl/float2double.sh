#!/bin/zsh

git checkout src
git clean -f src
sed s/float/double/g -i **/*.java
sed s/Float/Double/g -i **/*.java
sed s/intBits/longBits/g -i **/*.java
sed s/IntBits/LongBits/g -i **/*.java
sed s/glMultMatrixf/glMultMatrixd/g -i **/*.java
sed s/glTranslatef/glTranslated/g -i **/*.java
sed s/glVertex2f/glVertex2d/g -i **/*.java
sed s/glVertex3f/glVertex3d/g -i **/*.java
sed s/glColor3f/glColor3d/g -i **/*.java
sed s/glColor4f/glColor4d/g -i **/*.java
sed 's/glPointSize(/glPointSize((float)/g' -i **/*.java
sed 's/setColor(color.x, color.y, color.z/setColor((float)color.x, (float)color.y, (float)color.z/' -i **/*.java

# sed 's/int result /long result /g' -i src/main/java/org/jbox2d/testbed/pooling/ColorPool.java
# sed 's/return result/return (int)result/g' -i src/main/java/org/jbox2d/testbed/pooling/ColorPool.java
# sed 's/new Color(r, g, b, alpha)/new Color((float)r, (float)g, (float)b, (float)alpha)/' -i src/main/java/org/jbox2d/testbed/framework/j2d/DebugDrawJ2D.java
# sed 's/g.drawString(s, x, y)/g.drawString(s, (float)x, (float)y)/'  -i src/main/java/org/jbox2d/testbed/framework/j2d/DebugDrawJ2D.java

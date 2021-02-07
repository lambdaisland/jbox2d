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
sed 's/javax.media.opengl/com.jogamp.opengl/' -i src/**/*.java

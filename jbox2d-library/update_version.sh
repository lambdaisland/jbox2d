sed "s/version>.*</version>2.3.1.$(git short | wc -l)</" -i pom.xml

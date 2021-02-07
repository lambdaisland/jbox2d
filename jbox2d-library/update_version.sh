sed "s/version>2.3.*</version>2.3.1.$(git short | wc -l)</" -i pom.xml

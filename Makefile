jar:
	mkdir -p build/jar build/classes
	javac -sourcepath src -d build/classes src/oata/HelloWorld.java
	java -cp build/classes oata.HelloWorld 
	echo Main-Class: oata.HelloWorld > myManifest
	jar cfm build/jar/HelloWorld.jar myManifest -C build/classes .
	java -jar build/jar/HelloWorld.jar


ant:
	ant compile
	ant jar
	ant run

mvn:
	mvn pacakge
	mvn exec:java

gradle:
	gradle build
	gradle runJar
clean:
	rm -rf build myManifest

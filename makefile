KC=kotlinc
KFLAGS=-include-runtime
CLASS_PATH=lib/kotlinx-coroutines-core-1.2.0.jar
CLASS_PATH_DIR=lib
RM=del
.SUFFIXES: .kts .class .java .asm
.class.java:
	java -jar decompiler/cfr-0.143.jar $*.class --extraclasspath $(CLASS_PATH_DIR) > $*.java
	java -jar decompiler/cfr-0.143.jar $*$$1.class --extraclasspath $(CLASS_PATH_DIR) > $*$$1.java
.class.asm:
	-javap -c  $*.class $*$$1.class > $*.asm
.kts.class:
	$(KC) $*.kts $(KFLAGS) -cp $(CLASS_PATH)

TARGET = \
	Hello.kts \
	Launch.kts \
	Delay.kts \
	CoroutineVsThread.kts

default: java

class: $(TARGET:.kts=.class)
java: $(TARGET:.kts=.java)
asm: $(TARGET:.kts=.asm)

clean:
	$(RM) *.class
	$(RM) *.java
	$(RM) *.asm
	

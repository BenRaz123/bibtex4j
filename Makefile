#FOR THOSE NOT USING FLAKES: please use jdk 22 or greater thank you; or compile on your own

ifneq ($(shell command -v java 2>/dev/null),)
	JAVA=java
else
	JAVA=nix develop -c java
endif

.PHONY: run
run:
	$(JAVA) src/Main.java

.PHONY: fmt
fmt:
	nix fmt


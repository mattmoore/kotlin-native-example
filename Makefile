kotlin:
	@echo "Compiling Kotlin native code."
	@if [ ! -d build ]; then mkdir -p build; fi
	@kotlinc-native -o build/hello src/main/kotlin/*.kt

run:
	@build/hello.kexe

clean:
	@if [ -d build ]; then rm -rf build; fi
	@echo "Cleaned."

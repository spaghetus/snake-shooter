#!/bin/bash
if [ -z "$SNAKESHOOT_TARGET" ]; then
	export SNAKESHOOT_TARGET=$(uname)
fi

export SNAKESHOOT_TARGET=${SNAKESHOOT_TARGET,,}
export SNAKESHOOT_TARGET=${SNAKESHOOT_TARGET/darwin/mac}

# Create destination
export BUILD_DIR=./build/$SNAKESHOOT_TARGET
mkdir -p $BUILD_DIR
export NAME="snakeshoot"
# Determine godot output profile
if [ "$SNAKESHOOT_TARGET" == "mac" ]; then
	export GODOT_PROFILE="macOS"
	export EXTENSION="app"
elif [ "$SNAKESHOOT_TARGET" == "windows" ]; then
	export GODOT_PROFILE="Windows Desktop"
	export EXTENSION="exe"
elif [ "$SNAKESHOOT_TARGET" == "web" ]; then
	export GODOT_PROFILE="HTML5"
	export EXTENSION="html"
	export NAME="index"
else
	export GODOT_PROFILE="Linux/X11"
	export EXTENSION="run"
fi
# Run godot build
./godot --headless --export-release "$GODOT_PROFILE" $BUILD_DIR/$NAME.$EXTENSION
# Copy licensing
cp LICENSE ATTRIBUTION $BUILD_DIR
if [[ ! $SNAKESHOOT_TARGET == "web" ]]; then
	# Create the maps directory and copy the maps
	mkdir -p $BUILD_DIR/maps
	cp maps/*.map $BUILD_DIR/maps || true
	# Determine the library extension 
	if [ "$SNAKESHOOT_TARGET" == "mac" ]; then
		export EXTENSION="dylib"
	elif [ "$SNAKESHOOT_TARGET" == "windows" ]; then
		export EXTENSION="dll"
	else
		export EXTENSION="so"
	fi
	find addons -name *.$EXTENSION -exec cp {} $BUILD_DIR \;
fi
echo "DONE!"
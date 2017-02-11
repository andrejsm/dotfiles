# Make a dir and cd in
mkcd() { mkdir -p $1 && cd $1; }

# Open editor
e() {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

# Run something
run() {
	if [ -f ".run" ]
	then
		bash .run
	else
		echo "Don't know what to run"
	fi
}

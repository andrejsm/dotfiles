# Make a dir and cd in
mkcd() { mkdir -p $1 && cd $1; }

# Install required ASDF plugins
asdfplugs() {
  cut -d' ' -f1 .tool-versions | sort \
    | comm -23 - <(asdf plugin-list | sort) \
    | join -a1 - <(asdf plugin list all) \
    | xargs -t -L1 asdf plugin add
}

# Open editor
e() {
  if [[ $# = 0 ]]; then
    code "$PWD"
  else
    local argPath="$1"
    [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
    code "$argPath"
  fi
}
}

# Run something
run() {
	if [ -f ".run" ]
	then
		bash .run $@
	else
		echo "Don't know what to run"
	fi
}

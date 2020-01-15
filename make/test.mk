tf=/tmp/mkutils/.evaltmp

shell: $1
	outvar=$(shell $1)
	$(file >/tmp/mkutils/evalnull.test, ${outvar})

define shellex
	outvar=$(shell $1)
	$(file >/tmp/mkutils/evalnull.test, ${outvar})
endef

test: shell
	lsoutvar=($(call shell,ls,a))  	# sets the value of lsoutvar
	echo ${lsoutvar[0]}
	

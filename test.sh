cmd="gcc -Wall -Werror -pedantic-errors"
if [ "$1" != "" ]; then
	case $1 in
		floop )		cmd="$cmd -g -floop-interchange -o program.o"
				;;
		disable )	cmd="$cmd -O0 -g -o program.o"
				;;
		asm )		cmd="$cmd -S"
				;;
		asm-floop )	cmd="$cmd -S -floop-interchange"
				;;
		asm-disable )	cmd="$cmd -S -O0"
				;;
		* )		echo "default args"
				cmd="$cmd -g -o program.o"
				exit
	esac
else
	echo "no arg identified, using default"
	cmd="$cmd -g -o program.o"
fi

cmd="$cmd program.c"
echo $cmd
$cmd

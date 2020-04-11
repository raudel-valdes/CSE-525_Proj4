cmd="gcc -Wall -Werror -pedantic-errors"
if [ "$1" != "" ]; then
	case $1 in
		floop )		cmd="$cmd -g -floop-interchange -o program.o"
				;;
		asm )		cmd="$cmd -S"
				;;
		asm-floop )	cmd="$cmd -S -floop-interchange"
				;;
		* )		echo "invalid arg"
				exit
	esac
else
	echo "no arg identified"
fi

cmd="$cmd program.c"
echo $cmd
$cmd

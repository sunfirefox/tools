ORIG_PATH=$PATH
export PATH="/home/mob/ejs/bin:/Program Files/mercurial:$PATH"
m() {
	make $* | bldout
}

work() {
	local d=~/$1
	cd $d
	export CDPATH=".:~:$d:$d/src:$d/src/jems:$CDPATH"
	export PATH="$d/out/bin:$d/out/lib:$d/bin:$d/lib:$d/build/bin:$PATH"
}

bare() {
    export PATH=".:/usr/local/bin:/usr/bin:/bin:/usr/X11R6/bin:%BTILDIR%/Host/bin:/WINDOWS/system32:/WINDOWS:/Program Files/doxygen/bin"
}

work appweb
work ejs

PS1='`pwd`> '
set -o vi

msbuild() {
    c:/windows/Microsoft.NET/Framework/v4.0.30319/msbuild.exe $*
}

utest() {
    local utest=`which utest`
    utest=`cygpath -m $utest`
    ejs $utest $*
}

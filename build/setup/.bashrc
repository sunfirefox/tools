set -o vi
PS1='`pwd`> '
export CDPATH=.:~:~/ejs:~/ejs:~/ejs/src:~/appweb/src
export PATH=/bin:/usr/local/bin:/opt/local/bin:/usr/local/mysql/bin:$PATH

l() {
    ls -F $*
}

lst() {
    rm -f *.mod
    ejsc --out default.mod --optimize 9 --debug $*
    ejsmod --listing default.mod
    vi *.lst
}

work() {
    dir=${1:appweb}
    cd ~
    cd $dir
    _dir=`pwd`
    top=~/$dir
    export CDPATH=.:~/$parent:$top:$top/src:$top/src/jems:$CDPATH
    export PATH=.:$top/out/bin:$top/out/lib:$top/out/modules:$top/bin:$top/lib:$top/modules:$top/build/bin:$PATH
}

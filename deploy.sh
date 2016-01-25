#!/bin/bash
backfile() {
if [[ -L ${1} ]]
    then echo rm ${1}
elif [[ -f ${1} || -d ${1} ]]
    then echo mv ${1}{,.$(date +%s)}
fi
}
for i in .vimrc .tmux.conf .config/bspwm .config/sxhkd .weechat/weechat.conf .weechat/buffers.conf ;
    do backfile ${HOME}/${i}
    echo ln -s $(pwd)/${i} ${HOME}/${i}
done

# dotfiles

我主要使用的 ubuntu 16.04 LTS 系统，windows 下使用 git bash 有跟 linux 近似的体验，但也不尽然。

install.sh 是我将每个程序的安装命令拼凑而成，执行 ./install.sh 时，似乎不能一次性自动完全安装完成，需要手动多次执行，有时甚至输入 exit, 这一点目前我没有解决办法, 将来有机会可以研究一下 shell 的写法。

当然，目前 install.sh 的主要目的是总结和记录所需程序的安装方法。

除了 install.sh, 我还用 gnome-tweak-tool 将 caps-lock 改成 control

ubuntu 16 具有很好的中文支持，打开语言设置会自动提示安装语言，执行 apt-get update 和 upgrade 后，语言设置里输入法系统选为 fcitx, 重新登入后右上角设置，添加语言，取消勾选当前语言，下拉到最后选 pinyin, win+空格 可以切换语言。 

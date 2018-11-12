### 安装vim ycm

##### 需要把vim 升级到8.0++ 版本
1. 下载最新版本的vim git clone git@github.com:vim/vim.git
2. 编译安装  需要添加vim的python支持 为此需要安装 python-dev包，可以使用yum安装
3. 需要开启如下配置
```
./configure --with-features=huge \
--enable-multibyte \
--enable-rubyinterp=yes \
--enable-pythoninterp=yes \
--enable-python3interp=yes \  
--prefix=/usr/local/vim8
```
4. make & make install
5. 安装vim 的插件管理工具，vundle;  
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
6. 安装ycm
    - vim .vimrc 添加 Bundle 'Valloric/YouCompleteMe'
    - 升级对应的cmake
    - 进到对应的目录安装ycm,
    - sh install.sh


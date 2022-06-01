# Cheng's dotfiles

## 依赖
1. znap
2. starship
3. fnm

## 前提步骤
1. 安装 znap
```bash
git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git
source zsh-snap/install.zsh
# 然后把安装目录选为 ~/.config/zsh/
```
2. 安装 starship、fnm
```bash
brew install starship fnm
```

## 恢复 dotfiles
1. 在 $HOME 目录克隆本仓库
```bash
git clone --bare https://github.com/Quanuanc/dotfiles.git .dfm
```
2. alias
```bash
alias dfm='git --git-dir=$HOME/.dfm/ --work-tree=$HOME'
```
3. 恢复文件，以下命令二选一
```bash
dfm checkout
```
```bash
mkdir -p dotfiles_backup && \
dfm checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} dotfiles_backup/{}
```
4. 不显示未追踪文件
``` bash
dfm config --local status.showUntrackedFiles no
```

#!/bin/sh

printf "Executing symlink.sh...\n"
sh ./symlink.sh
printf "...symlink.sh end\n\n"
echo "Creating git aliases..."
echo "git b -> branch"
git config --global alias.b branch

echo "git st -> status"
git config --global alias.st status

echo "git co -> checkout"
git config --global alias.co checkout

echo "git alias -> config --get-regexp ^alias\."
git config --global alias.alias "config --get-regexp ^alias\."

echo "git lol -> log --graph --abbrev-commit --decorate --date=local --format=format:'%C(bold blue)%h%C(reset) : %C(dim green)%ad%C(reset) %C(dim yellow)(%ar)%C(reset)%C(dim magenta)%d%C(reset)%n''          %C(reset)%s%C(reset) %C(dim red)- %an%C(reset)' --all"
git config --global alias.lol "log --graph --abbrev-commit --decorate --date=local --format=format:'%C(bold blue)%h%C(reset) : %C(dim green)%ad%C(reset) %C(dim yellow)(%ar)%C(reset)%C(dim magenta)%d%C(reset)%n''          %C(reset)%s%C(reset) %C(dim red)- %an%C(reset)' --all"

echo "...done"

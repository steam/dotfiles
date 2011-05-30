#!/bin/sh
themes=${HOME}/Documents/machines/terminal-themes/
echo Copying files...
cp ${HOME}/.homesick/repos/vimfiles/home/.vimrc.local ${HOME}/.homesick/repos/dotfiles/backups/
cp -R ${themes} ${HOME}/.homesick/repos/dotfiles/themes/
for i in `ls $themes`; do
  cp ${themes}/$i ${HOME}/.homesick/repos/vimfiles/extras/$i
done

echo Getting list of installed vim bundles...
target=${HOME}/.homesick/repos/dotfiles/README.md
bundle_dir=${HOME}/.vim/bundle
cutstring_head="<!-- START -->"
cutstring_tail="<!-- END -->"
cutline_head=`grep -n -m1 "$cutstring_head" "$target" | sed "s/:.*//"`
cutline_tail=`tail -r "$target" | grep -n -m1 "$cutstring_tail" | sed "s/:.*//"`
bundles=''

for i in $(ls -A $bundle_dir | cut -d' ' -f12) ; do
  bundles=$bundles"- "$i"\n"
done

echo Updating README...
head -n $cutline_head "$target" > $target.tmp
echo $bundles >> $target.tmp
tail -n $cutline_tail "$target" >> $target.tmp
mv $target.tmp $target

echo Backup complete!


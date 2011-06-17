
# Dotfiles
My personal dot files for OSX on Snow Leopard managed by [homesick][homesick].


## Terminal

This is where the magic happens.

Themes included with this configuration:

1. **colorblind.terminal** - Black background, super vibrant colors
- **snowblind.terminal** - White background, vibrant colors
- **cataracts.terminal** - Grey background with muted colors
- **bloodshot.terminal** - Similar to colorblind but with muted colors
- **Solarized_Dark.terminal** - Based on the [solarized][solarized] dark theme (current default)
- **Solarized_Light.terminal** - Based on the [solarized][solarized] light theme

To use the Terminal themes, install [SIMBL](http://www.culater.net/software/SIMBL/SIMBL.php) and save the [64 Bit Terminal Colors](http://github.com/timmfin/terminalcolours) plugin to:

    ~/Library/Application Support/SIMBL/Plugins/

Most themes use the custom [MesloGM font](https://github.com/andreberg/Meslo-Font). Download, install and live the dream.

To get full mouse support (scrolling, clicking, etc...) within Terminal Vim, install the SIMBL [MouseTerm](http://bitheap.org/mouseterm/) plug-in.


## Shell Scripts

Within the `.bin` directory are various scripts and helpers for a crap load of stuff. Due to how [homesick][homesick] handles symlinks, it's necessary to run `chmod +x` on any of these symbolic links to set up the correct permissions.


## VIM

Dotfiles associated with Vim are primarily handled by [Bit Theory's Vim repository][vimfiles]. The local settings for my machine are applied in the `.vimrc.local` file. The installed bundles currently being rocked are listed below.


### Installed Bundles

<!-- START -->
- ack.vim
- actionscript.vim
- applescript.vim
- autocorrect.vim
- browser-refresh.vim
- bufkill.vim
- camelcasemotion.vim
- cocoa.vim
- coffeescript.vim
- cucumber.vim
- delimitMate.vim
- fugitive.vim
- gist.vim
- haml.vim
- indexed-search.vim
- jade.vim
- javascript.vim
- json.vim
- markdown-preview.vim
- markdown.vim
- nerdcommenter.vim
- nerdtree.vim
- processing.vim
- rails.vim
- repeat.vim
- ruby.vim
- rvm.vim
- snipmate.vim
- statusline.vim
- stylus.vim
- supertab.vim
- surround.vim
- syntastic.vim
- tabular.vim
- taglist.vim
- unimpaired.vim
- yankring.vim

<!-- END -->


## Backups

[Homesick][homesick] takes care of symlinking files, but it's necessary to run `./backup` from the `~/.homesick/repos/dotfiles/` directory to grab a few other files, terminal colors and listing of the installed vim bundles. This should keep the dotfiles in check and up to date.

[homesick]: http://github.com/technicalpickles/homesick
[vimfiles]: https://github.com/bit-theory/vimfiles
[solarized]: http://ethanschoonover.com/solarized


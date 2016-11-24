#everm
-------

An experimental emacs version manager.

### Platforms
- Linux
- Mac OSX (maybe)
 
### How it works

#### Installation
- Creates a folder `/usr/local/bin/emacs/` and `~/.everm/` 
- emacs-VERSION is installed in /usr/local/bin/emacs/ , downloaded from `https://ftp.gnu.org/gnu/emacs/`
- install emacs with `./configure --prefix=/usr/local/bin/emacs/emacs-VERSION/emacs --binddir=/usr/local/bin/emacs/emacs-VERSION/bin`
- run `make && make install`
- if successfull save emacs-VERSION to `~/.everm/.versions` and create a folder in `/usr/local/bin/emacs/emacs-VERSION/emacs/.emacs.d` 
- if `~/.everm` is not in $PATH, add it to the front `export PATH="$HOME/.everm/:$PATH"`

#### Using
- read the version name from command line `everm use emacs-24.5`
- checks if its present in install directory, then create a `~/.everm/emacs` file.
- `emacs` is an executable that runs `HOME=/usr/local/bin/emacs/emacs-VERSION/emacs emacs` 

### TODO:
- [] everything

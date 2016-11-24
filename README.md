#everm

An experimental emacs version manager.

### Platforms
- Linux
- Mac OSX (maybe)
 
### How it works

#### Installation
- Creates a folder `~/.everm/versions` and `~/.everm/shims` 
- emacs-VERSION is installed in `~/.everm/versions/emacs-VERSIONS` , downloaded from `https://ftp.gnu.org/gnu/emacs/`
- install emacs with `./configure --prefix=~/.everm/version/emacs-VERSION/emacs --binddir=~/.everm/versions/emacs-VERSION/bin`
- run `make bootstrap && make install`
- if successfull save emacs-VERSION to `~/.everm/versions` and create a folder in `emacs-VERSION/emacs/.emacs.d` 
- if `~/.everm` is not in $PATH, add it to the front `export PATH="$HOME/.everm/:$PATH"`

#### Using
- read the version name from command line `everm use emacs-24.5`
- checks if its present in install directory, then create a `~/.everm/versions` file.
- `emacs` is an executable that runs `HOME=~/.everm/emacs-VERSION/emacs emacs` 

### TODO:
[ ] Add pre-build scripts in `packages/` directory, or write a package manager
[ ] Create shim for emacs

### Known Issue:
- emacs24.5 build failure in fedora


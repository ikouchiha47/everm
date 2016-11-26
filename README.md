#evt 

(emacs versioning tool) An experimental emacs version manager.

### Platforms
- Linux
- Mac OSX (maybe)

### Pre-Install
- check the `src/packages` directory and install the required libraries for building emacs. (presently has support for debian, fedora and OS X)

### Running
- ./evt list
- ./evt install emacs-<VERSION>
- ./evt use emacs-<VERSION>
- emacs &
 
### How it works

#### Installation
- Creates a folder `~/.evt/versions` and `~/.evt/shims` 
- emacs-VERSION is installed in `~/.evt/versions/emacs-VERSIONS` , downloaded from `https://ftp.gnu.org/gnu/emacs/`
- install emacs with `./configure --prefix=~/.evt/version/emacs-VERSION/emacs --binddir=~/.evt/versions/emacs-VERSION/bin`
- run `make bootstrap && make install`
- if successfull save emacs-VERSION to `~/.evt/versions` and create a folder in `emacs-VERSION/emacs/.emacs.d` 
- if `~/.evt` is not in $PATH, add it to the front `export PATH="$HOME/.evt/:$PATH"`

*fun fact: in mac Emacs.app is created in $EMACS_DIR/nextstep*

#### Using
- read the version name from command line `evt use emacs-24.5`

### TODO:
[ ] Add pre-build scripts in `packages/` directory, or write a package manager

### Known Issue:
- emacs-24.5 build failure in fedora



# org-mode-manager

A tree-like quick-access management tool for your org-mode files. 

[img]<>

It supports deletion, renaming, syncing, and encryption.

### Installation

Run `install.sh` from within the working directory.

Make sure all your notes are in a single subdirectory (either nested or flat). If you wish to enable syncing, make sure that this subdirectory lies within a git project subfolder.


### Usage

e.g.

 * `org` - provides a tree of current org-mode files at the user-set root directory
 * `org naruto` - creates or opens an org-mode file called *naruto.org* at the root directory
 * `org fiction/anime/naruto` - creates or opens an org-mode file called *naruto.org* within the nested subdirectory *fiction/anime/*
 * `org --subdir=fiction/anime` - provides a tree of current org-mode files in the subdirectory *fiction/anime/*
 * `org naruto --delete` - deletes file (moves it to `/tmp`)
 * `org naruto --move=fiction/anime/boruto` - moves file *naruto.org* into subdirectory *fiction/anime/* and renames it *boruto.org*
 * `org naruto --encrypt` - encrypts the existing file *naruto.org* using `aes-256-cbc` openssl encryption and renames it `naruto.crypt.org`
 * `org naruto.crypt --decrypt` - decrypts an existing file and renames it `naruto.org`
 * `org --sync` - initiates `git pull`, `git commit` (with timestamp message), and `git push` to sync local and remote files if the subdirectory
 * `org --help` - provides basic usage and prints the above examples
 
### Completion

Assuming that the `_org` completion file has been correctly installed via the `install.sh` script, `org` should be able to provide autocompletion for filenames.

e.g. Assuming that a file *fiction/anime/naruto.org* exists

 * `org nar[TAB]` will expand to `org fiction/anime/naruto`
 
 

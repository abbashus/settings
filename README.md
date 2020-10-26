# settings
Repository to hold various settings




### MACOS Setup

1. Install git
2. Make Git autocomplete
  - Find if Git auto-completion script already exist
  ```
  sudo find / -type f -name "git-completion.bash"
  
  It should somewhere here: /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
  ```
  - If yes copy it to home directory
  ```
  cp /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash ~/.git-completion.bash
  ```
  - Change your ~/.bashrc or ~/.bash_profile accordingly (or ~/.zshrc or other shell config file)
  ```
  if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  fi
  ```
 
 3. Install Intellij (Java)
 4. Install Pycharm (Python)
 5. Install VSCode (Javascript, Typescript, and everything else)
 6. Setup Midway and SSH to log into Cloud Desktop and prod hosts.

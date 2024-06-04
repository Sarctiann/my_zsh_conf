# A simple setup for _ZSH_

[![en](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![es](https://img.shields.io/badge/lang-es-red.svg)](README.ES.md)

> this configuration requires 2 modules from `zsh-users`:
>
> - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
> - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

I use this configuration without significant changes for a long time now, as it
satisfies all the requirements that I have to comfortably use the Terminal.

Here a small sample:

![sample](./sample.png)

In short, it has text highlighting, suggestions, git information, and a
different style for python virtual environments.

---

## Instructions

### to install zsh, configure sarc style, and add a couple of plugins

---

1. To keep things simple, first Open a Terminal located in this folder

1. Install zsh if you don't already have it on the system:

   `sudo apt install zsh`

1. Configure zsh as the default shell in the terminal emulator profile:

   `which zsh` returns the path of **zsh** that we need to replace
   **/bin/bash** or **/usr/bin/bash**

   > don't use: `chsh -s $(which zsh)` because we need the system to keep using
   > your default shell

1. Copy the **.zshrc** file from this folder and replace the one that was created
   for us zsh in our _home_:

   1. Make a backup of .zshrc in case something goes wrong:

   `cp ~/.zshrc ~/.zshrc_old`

   1. Now:

   (Linux) `cp ./linux/.zshrc ~/`

   (Mac) `cp ./mac/.zshrc ~/`

1. Copy the **.zsh** folder to our _home_:

   `cp -r ./.zsh ~/`

1. (Linux only) Copy the **prompt_sarc_setup** file to: /usr/share/zsh/functions/Prompts/

   `sudo cp ./prompt_sarc_setup /usr/share/zsh/functions/Prompts/`

   _(and we put our password)_

1. All that remains is to close and reopen the terminal

   `exit` and possibly **[CTRL]** + **[SHIFT]** + **[T]** to open ;)

### Ready

---

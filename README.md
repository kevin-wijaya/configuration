# **Latex with VS Code**
<br>

![latex-in-linux](./images.svg)

## Description

This project template was created to streamline the process of writing academic papers using LaTeX. I moved away from Overleaf because, although it's convenient, it's web-based, often lags, and restricts collaboration to only two members on the free plan. 

By switching to a local setup using `latexmk` and `texlive`, along with Visual Studio Code and the LaTeX Workshop extension, the writing experience becomes significantly faster, smoother, and more flexible. This setup also supports real-time collaboration via shared folders on a server and can be used with other editors like Vim or Neovim for those who prefer a terminal-based workflow.


## Folder Structures
This project is organized into several folders and files to keep everything structured and easy to manage:
```sh
.
├── .vscode             # Visual studio code settings (ignored)
│   └── settings.json   # Editor configuration
├── data                # Paper data / Project data
│   ├── images          # Figures files
│   └── tables          # Tabels files  
├── sections            # Sections files  
├── .gitignore          # Git ignore rules
├── README.md           # Project documentation
├── LICENSE             # MIT license (changeable)
└── clean.sh            # Cleanup & setup project template (ignored)
```

## Requirements

This setup can be used on any operating system, though **Linux-based** systems are recommended. Below are the required packages for Debian-based distributions (e.g., **Ubuntu**):

```sh
# ubuntu operating systems
sudo apt-get update
sudo apt-get install -y \
    latexmk \
    chktex \
    texlive-science \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    texlive-latex-extra \
    texlive-font-utils
```

## Setup
This section initializes the LaTeX paper template by cleaning up temporary files and resetting placeholder content.

**Prerequisites**
```sh
# Install Visual Studio Code and the 'LaTeX Workshop' extension
# Ensure all required packages are already installed
```

**clone this repository**
```sh 
# clone the repository and modify the dirname as you wish
git clone https://github.com/kevin-wijaya/latex-via-vscode <dirname>
```

**Run the setup script**
```sh
# answer 'y' when prompted
chmod +x ./clean.sh
./clean.sh --setup
```

## Author

**Kevin Wijaya**  
GitHub: [github.com/kevin-wijaya](https://github.com/kevin-wijaya)  
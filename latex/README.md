# Latex Project Template
<br>

![latex-in-linux](./images.svg)

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

## Author

**Kevin Wijaya**  
GitHub: [github.com/kevin-wijaya](https://github.com/kevin-wijaya)  
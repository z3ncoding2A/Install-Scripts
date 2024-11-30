#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel
    'linux-lts'

    # TERMINAL UTILITIES --------------------------------------------------

    'bash-completion'       # Tab completion for Bash
    'bleachbit'             # File deletion utility
    'curl'                  # Remote content retrieval
    'file-roller'           # Archive utility
    'hardinfo'              # Hardware info app
    'mission-center'
    'inxi'                  # System information utility
    'jq'                    # JSON parsing library
    'jshon'                 # JSON parsing library
    'fastfetch'              # Shows system info when you launch terminal
    'ntp'                   # Network Time Protocol to set time via network.
    'openssh'               # SSH connectivity tools
    'rsync'                 # Remote file sync utility
    'speedtest-cli'         # Internet speed via terminal
    'terminus-font'         # Font package with some bigger fonts for login terminal
    'powertop'                   # Advanced laptop power management
    'wget'                  # Remote content retrieval
    'kitty'
    'tabby'        # Terminal emulator
    'dialog'
    'zenity'                # Display graphical dialog boxes via shell scripts

    # DISK UTILITIES ------------------------------------------------------

    'autofs'                # Auto-mounter
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'gnome-disk-utility'           # Disk utility
    'ntfs-3g'               # Open source implementation of NTFS file system
    'parted'                # Disk utility
    'p7zip'
    'xz' 
    'unzip'  
    'tar'
    'unrar'  
    'unzip'
    'fuse3'
    'mtools'
    'dosfstools'
    'zip'	


    # GENERAL UTILITIES ---------------------------------------------------

    'nemo'                  # Filesystem browser
    'discord'
    sublime-text-4
    'cherrytree'
	
    # DEVELOPMENT ---------------------------------------------------------

    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'meld'                  # File/directory comparison
    'pycharm-community-edition'              
    'code'                   # Web application scripting language
    'python'                # Scripting language
    'yarn'                  # Dependency management (Hyper needs this)

    # WEB TOOLS -----------------------------------------------------------

    'chromium'              # Web browser
    'zen-browser-bin'
    # COMMUNICATIONS ------------------------------------------------------

    'hexchat'               # Multi format chat
    'irssi'                 # Terminal based IIRC

    # MEDIA ---------------------------------------------------------------

    'simplescreenrecorder'  # Record your screen
    'vlc'                   # Video player

    # GRAPHICS AND DESIGN -------------------------------------------------

    'gimp'                  # GNU Image Manipulation Program
    'ristretto'             # Multi image viewer

    # PRODUCTIVITY --------------------------------------------------------

    'hunspell'              # Spellcheck libraries
    'hunspell-en'           # English spellcheck library
    'xpdf'                  # PDF viewer

    # VIRTUALIZATION ------------------------------------------------------

    'virtualbox'
    'virtualbox-host-modules-lts'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo

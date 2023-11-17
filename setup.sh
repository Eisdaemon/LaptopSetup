#! /bin/bash
#install nice programm
pip install jupyterlab #Jupyter Notebook
flatpak install flathub com.brave.Browser
flatpak install flathub com.brave.Browser
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub org.gimp.GIMP
flatpak install flathub com.usebottles.bottles
flatpak install flathub com.obsproject.Studio
flatpak install flathub us.zoom.Zoom
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.play0ad.zeroad
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub com.github.Matoking.protontricks
flatpak install flathub org.onlyoffice.desktopeditors
flatpak install flathub org.signal.Signal
flatpak install flathub io.gitlab.librewolf-community
flatpak install flathub io.gitlab.librewolf-community
flatpak install flathub org.mozilla.Thunderbird
flatpak install flathub com.protonvpn.www
flatpak install flathub io.freetubeapp.FreeTube
flatpak install flathub com.github.Eloston.UngoogledChromium
flatpak install flathub org.gnome.Boxes
flatpak install flathub com.gitlab.davem.ClamTk
flatpak install flathub com.jgraph.drawio.desktop
flatpak install flathub im.riot.Riot
flatpak install flathub com.github.xournalpp.xournalpp
flatpak install flathub io.mpv.Mpv
flatpak install flathub com.github.iwalton3.jellyfin-media-player
flatpak install flathub net.supertuxkart.SuperTuxKart
flatpak install flathub de.bund.ausweisapp.ausweisapp2
flatpak install flathub com.github.micahflee.torbrowser-launcher
curl -fsSL https://tailscale.com/install.sh | sh

#Download Additional Files needed
mkdir setup_files
cd setup_files
wget https://raw.githubusercontent.com/Eisdaemon/LaptopSetup/main/music_command_export.py
wget https://raw.githubusercontent.com/Eisdaemon/LaptopSetup/main/list_music.sh
wget https://raw.githubusercontent.com/Eisdaemon/LaptopSetup/main/freetube-subscriptions-2023-11-17.db
cd ..
#Apt
echo "$(whoami)"

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"
apt install clamav clamtk #Clamscan
freshclam
systemctl start clamav-freshclam
systemctl enable clamav-freshclam
apt install wireshark # wireshark
apt install merkuro # Calender
apt-get install virtualbox
apt-get install virtualbox—ext–pack
apt install vim
apt install neovim
apt install zsh #zsh shell
apt install gdb
chsh -s $(which zsh)


bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

echo "
alias lv='lvim'
alias td='lvim Nextcloud/Notes/ToDo.md'
alias metal='cd /home/joris/Nextcloud/Musik/Metal'
alias list_music='/home/joris/Nextcloud/Musik/list_music.sh'
alias Imagine_Dragons='vlc /home/joris/Nextcloud/Musik/Rock/Imagine\ Dragons/'
alias The_Hu='vlc /home/joris/Nextcloud/Musik/Rock/The\ Hu/'
alias Fever_333='vlc /home/joris/Nextcloud/Musik/Rock/Fever\ 333/'
alias Pagan_Fury='vlc /home/joris/Nextcloud/Musik/Rock/Pagan\ Fury/'
alias Billy_Talent='vlc /home/joris/Nextcloud/Musik/Rock/Billy\ Talent/'
alias Linkin_Park='vlc /home/joris/Nextcloud/Musik/Rock/Linkin\ Park/'
alias Lord_Of_The_Lost='vlc /home/joris/Nextcloud/Musik/Rock/Lord\ Of\ The\ Lost/'
alias The_Scratch='vlc /home/joris/Nextcloud/Musik/Rock/The\ Scratch/'
alias White_Stripes='vlc /home/joris/Nextcloud/Musik/Rock/White\ Stripes/'
alias ACDC='vlc /home/joris/Nextcloud/Musik/Rock/ACDC/'
alias Epica='vlc /home/joris/Nextcloud/Musik/Metal/Epica/'
alias Bloodywood='vlc /home/joris/Nextcloud/Musik/Metal/Bloodywood/'
alias Rage_Against_The_Machine='vlc /home/joris/Nextcloud/Musik/Metal/Rage\ Against\ The\ Machine/'
alias Slipknot='vlc /home/joris/Nextcloud/Musik/Metal/Slipknot/'
alias Heaven_Shall_Burn='vlc /home/joris/Nextcloud/Musik/Metal/Heaven\ Shall\ Burn/'
alias Beyond_The_Black='vlc /home/joris/Nextcloud/Musik/Metal/Beyond\ The\ Black/'
alias Metallica='vlc /home/joris/Nextcloud/Musik/Metal/Metallica/'
alias Fit_For_An_Autopsy='vlc /home/joris/Nextcloud/Musik/Metal/Fit\ For\ An\ Autopsy/'
alias Nightwish='vlc /home/joris/Nextcloud/Musik/Metal/Nightwish/'
alias Kissin_Dynamite='vlc /home/joris/Nextcloud/Musik/Metal/Kissin\ Dynamite/'
alias Wind_Rose='vlc /home/joris/Nextcloud/Musik/Metal/Wind\ Rose/'
alias Blind_Guardian='vlc /home/joris/Nextcloud/Musik/Metal/Blind\ Guardian/'
alias In_Extremo='vlc /home/joris/Nextcloud/Musik/Metal/In\ Extremo/'
alias Alestorm='vlc /home/joris/Nextcloud/Musik/Metal/Alestorm/'
alias Blind_Channel='vlc /home/joris/Nextcloud/Musik/Metal/Blind\ Channel/'
alias Led_Zeppelin='vlc /home/joris/Nextcloud/Musik/Metal/Led\ Zeppelin/'
alias Amaranthe='vlc /home/joris/Nextcloud/Musik/Metal/Amaranthe/'
alias System_Of_A_Down='vlc /home/joris/Nextcloud/Musik/Metal/System\ Of\ A\ Down/'
alias Candlemass='vlc /home/joris/Nextcloud/Musik/Metal/Candlemass/'
alias Silver_Dust='vlc /home/joris/Nextcloud/Musik/Metal/Silver\ Dust/'
alias Opeth='vlc /home/joris/Nextcloud/Musik/Metal/Opeth/'
alias Arkona='vlc /home/joris/Nextcloud/Musik/Metal/Arkona/'
alias Manowar='vlc /home/joris/Nextcloud/Musik/Metal/Manowar/'
alias Powerwolf='vlc /home/joris/Nextcloud/Musik/Metal/Powerwolf/'
alias Skindred='vlc /home/joris/Nextcloud/Musik/Metal/Skindred/'
alias Iron_Maiden='vlc /home/joris/Nextcloud/Musik/Metal/Iron\ Maiden/'
alias Finntroll='vlc /home/joris/Nextcloud/Musik/Metal/Finntroll/'
alias Dragonforce='vlc /home/joris/Nextcloud/Musik/Metal/Dragonforce/'
alias Beast_in_Black='vlc /home/joris/Nextcloud/Musik/Metal/Beast\ in\ Black/'
alias Amon_Amarth='vlc /home/joris/Nextcloud/Musik/Metal/Amon\ Amarth/'
alias Arch_Enemy='vlc /home/joris/Nextcloud/Musik/Metal/Arch\ Enemy/'
alias Judas_Priest='vlc /home/joris/Nextcloud/Musik/Metal/Judas\ Priest/'
alias Sabaton='vlc /home/joris/Nextcloud/Musik/Metal/Sabaton/'
alias Stratovarius='vlc /home/joris/Nextcloud/Musik/Metal/Stratovarius/'
alias Korpiklaani='vlc /home/joris/Nextcloud/Musik/Metal/Korpiklaani/'
alias Avatar='vlc /home/joris/Nextcloud/Musik/Metal/Avatar/'
alias Black_Sabbath='vlc /home/joris/Nextcloud/Musik/Metal/Black\ Sabbath/'
alias Gloryhammer='vlc /home/joris/Nextcloud/Musik/Metal/Gloryhammer/'
alias Warkings='vlc /home/joris/Nextcloud/Musik/Metal/Warkings/'
alias Brothers_of_Metal='vlc /home/joris/Nextcloud/Musik/Metal/Brothers\ of\ Metal/'
alias Wolfmother='vlc /home/joris/Nextcloud/Musik/Metal/Wolfmother/'
alias Toten_Hosen='vlc /home/joris/Nextcloud/Musik/Punk/Toten\ Hosen/'
alias Die_Ärzte='vlc /home/joris/Nextcloud/Musik/Punk/Die\ Ärzte/'
alias Ska_P='vlc /home/joris/Nextcloud/Musik/Punk/Ska-P/'
alias Sum_41='vlc /home/joris/Nextcloud/Musik/Punk/Sum\ 41/'
alias Clamavi_De_Profundis='vlc /home/joris/Nextcloud/Musik/Lotr/Clamavi\ De\ Profundis/'
alias Colm_McGuiness='vlc /home/joris/Nextcloud/Musik/Lotr/Colm\ McGuiness/'
alias mkidr='mkdir'
" >> /home/joris/.zshrc

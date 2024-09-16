#!/bin/bash
# console internet radio
# TODO: autoinstall mpv?
# for youtube radio you need youtube-dl
play_mpv() {
    clear
    echo -e "\e[42m$1 Radio Station\e[0m"
    echo "===================================="
    echo -e "press\e[31m q \e[0mfor stop playing"
    echo -e "\e[31m/ *\e[0m for volume"

    echo "===================================="
    ## if pulseuadio
    mpv --no-video --term-osd-bar --msg-level=all=info $2

    ## if alsa
    # mpv --no-video -ao=alsa --term-osd-bar --msg-level=all=info $2
    main_menu


}


jazz () {
    clear
    echo -e "\e[42mJazz Radio Stations\e[0m"
    echo "===================================="
    local PS3='>>>>>>>>>>>>>>>>>>>> Y0ur ch0ise: '
    local options=("Penthouse Jazz (USA)" "ClassicJazz 89.1fm" "JazzGroove" "PianoJazz" "RadioCaprice" "Back")
    local opt
    select opt in "${options[@]}"
    do
        case $opt in
            "Penthouse Jazz (USA)")
                play_mpv "Penthouse Jazz (USA)" http://s2.nexuscast.com:8052/;
                ;;
            "ClassicJazz 89.1fm")
                play_mpv "ClassicJazz 89.1fm" http://jfm1.hostingradio.ru:14536/ijstream.mp3
                ;;
            "JazzGroove")
                play_mpv "JazzGroove" http://199.180.72.2:8015/listen.pls\?sid\=1
                ;;
            "RadioCaprice")
                play_mpv "RadioCaprice" http://79.111.119.111:9059/
                ;;
            "PianoJazz")
                play_mpv "PianoJazz" https://live.radioart.com/fJazz_piano.mp3
                ;;
            "Back")
                main_menu
                ;;
            *) main_menu;;
        esac
    done
}


lofi () {
    clear

    echo -e "\e[42mLofi Radio Stations\e[0m"
    echo "===================================="
    local PS3='>>>>>>>>>>>>>>>>>>>> Y0ur ch0ise: '
    local options=("Planet lofi" "LO-FI GIRL (youtube)" "RACOON JAZZHOP" "Lofi Hip Hop Radio" "Chillsky LoFi Hip Hop Radio" "Chillhop" "Back")
    local opt
    select opt in "${options[@]}"
    do
        case $opt in
            "Planet lofi")
                play_mpv "Planet lofi" http://198.245.60.88:8080
                ;;
            "LO-FI GIRL (youtube)")
                play_mpv "LO-FI" https://www.youtube.com/watch\?v\=jfKfPfyJRdk
                ;;
            "RACOON JAZZHOP")
                play_mpv "RACOON" https://www.youtube.com/watch?v=5yx6BWlEVcY
                ;;
            "Lofi Hip Hop Radio")
                play_mpv "Lofi Hip Hop" https://stream.zeno.fm/0r0xa792kwzuv
                ;;
            "Chillsky LoFi Hip Hop Radio")
                play_mpv 'Chillsky' 'http://hyades.shoutca.st:8043/stream'
                ;;
            "Chillhop")
                play_mpv "Chillhop" http://pub0302.101.ru:8000/stream/pro/aac/64/358
                ;;
            "Back")
                main_menu
                ;;
            *) main_menu;;
        esac
    done
}

soma () {
    clear

    echo -e "\e[42mSoma.fm Radio Stations\e[0m"
    echo "===================================="
    local PS3='>>>>>>>>>>>>>>>>>>>> Y0ur ch0ise: '
    local options=("SomaFM: Lush" "SomaFM: Deep Space One" "Back")
    local opt
    select opt in "${options[@]}"
    do
        case $opt in
            "SomaFM: Lush")
                play_mpv "SomaFM: Lush" http://ice1.somafm.com/lush-128-mp3
                ;;
            "SomaFM: Deep Space One")
                play_mpv "SomaFM: Deep Space One" http://ice2.somafm.com/deepspaceone-128-mp3
                ;;
            "Back")
                main_menu

                ;;
            *) main_menu;;
        esac
    done
}


electro () {
    clear
    echo -e "\e[42mElectronic Radio Stations\e[0m"
    echo "===================================="
    local PS3='>>>>>>>>>>>>>>>>>>>> Y0ur ch0ise: '
    local options=("Liquid Funk SPB" "Different Drumz DnB" "laut.fm Liquid" "renegaderadio.co.uk" "liquid DnB Russia" "Liqui radio" "DFM Liquid DnB" "HBR1 Dream Factory (ambient)" "Liquid (YOUTUBE)" "Back")
    local opt
    select opt in "${options[@]}"
    do
        case $opt in
            "Liquid Funk SPB")
                play_mpv "Liquid Funk SPB" https://radiorecord.hostingradio.ru/liquidfunk96.aacp
                ;;
            "Different Drumz DnB")
                play_mpv "Different Drumz DnB" https://differentdrumz.radioca.st/stream%20
                ;;
            "laut.fm Liquid")
                play_mpv "laut.fm Liquid" https://dnb-base.stream.laut.fm/dnb-base
                ;;
            "renegaderadio.co.uk")
                play_mpv "http://renegaderadio.co.uk"  https://streaming06.liveboxstream.uk/proxy/renegade/stream
                ;;
            "liquid DnB Russia")
                play_mpv "liquid DnB Russia" https://stream05.pcradio.ru/rad_lqddnbsttn-med
                ;;
            "Liqui radio")
                play_mpv "Liqui Radio" https://str4.pcradio.ru/liquidnb_ua-med
                ;;
            "DFM Liquid DnB")
                play_mpv "DFM Liquid DnB" https://icecast01.hostingradio.ru:80/liquid96.aacp
                ;;
            "HBR1 Dream Factory (ambient)")
                play_mpv "HBR1 Dream Factory (ambient)" http://radio.hbr1.com:19800/ambient.ogg
                ;;
            "Liquid (YOUTUBE)")
                 play_mpv "Drum & Bass Non-Stop Liquid" https://www.youtube.com/watch?v=Cwq3AFyV044
                 ;;
            "Back")
                main_menu
                ;;
            *) main_menu;;
        esac
    done
}


hiphop () {
    clear
    echo -e "\e[42mHip-Hop Radio Stations\e[0m"
    echo "===================================="
    local PS3='>>>>>>>>>>>>>>>>>>>> Y0ur ch0ise: '
    local options=("laut.fm Oldschool" "Old School Rap radio" "Urbanradio.com" "The Codename Is Black" "Back")
    local opt
    select opt in "${options[@]}"
    do
        case $opt in
            "laut.fm Oldschool")
                play_mpv "laut.fm Oldschool" https://oldschool-hiphop.stream.laut.fm/oldschool-hiphop
                ;;

            "Old School Rap radio")
                play_mpv "Old School Rap radio" https://pub0102.101.ru:8443/stream/personal/aacp/64/323650
                ;;
            "Urbanradio.com")
                play_mpv "Urbanradio.com" http://hydra.cdnstream.com/1537_128
                ;;
            "The Codename Is Black")
                play_mpv "The Codename Is Black" https://playazcliq.radioca.st/
                ;;
            "Back")
                main_menu
                ;;
            *) main_menu;;
        esac
    done
}

reggae () {
    clear
    echo -e "\e[42mReggae Radio Stations\e[0m"
    echo "===================================="
    local PS3='>>>>>>>>>>>>>>>>>>>> Y0ur ch0ise: '
    local options=("Roots legacy.fr" "ABC Lounge" "ZANJ. RADIO" "Back")
    local opt
    select opt in "${options[@]}"
    do
        case $opt in
            "ABC Lounge")
                play_mpv "ABC Lounge" https://str1.openstream.co/589
                ;;
            "ZANJ. RADIO")
                play_mpv "ZANJ. RADIO" https://node-22.zeno.fm/yx5d62e3wy5tv
                ;;
            "Roots legacy.fr")
                play_mpv "Rootslegacy.fr" https://l.rootslegacy.fr/;
                ;;
            "Back")
                main_menu
                ;;
            *) main_menu;;
        esac
    done
}



chiplduk () {
    clear
    play_mpv Chiplduk http://radio.4duk.ru/4duk128.aac
}

main_menu () {
    clear
    echo -e "\e[42mConsole Internet Radio\e[0m"
    echo "===================================="
    local PS3='>>>>>>>>>>>>>>>> Ch00se y0ur style: '
    local options=("Jazz" "Lofi" "Hip-hop" "Reggae" "Soma.fm" "Chiplduk" "Electronic" "Quit")
    local opt
    select opt in "${options[@]}"
    do
        case $opt in
            "Jazz")
                jazz
                ;;
            "Lofi")
                lofi
                ;;
            "Hip-hop")
                hiphop
                ;;
            "Reggae")
                reggae
                ;;
            "Soma.fm")
                soma
                ;;
            "Chiplduk")
                chiplduk
                ;;
            "Electronic")
                electro
                ;;
            "Quit")
                exit
                ;;
            *) exit;;
        esac
    done
}

main_menu

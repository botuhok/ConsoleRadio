chcp 65001
mode con: cols=52 lines=25

for /F "delims=#" %%E in ('"prompt #$E# & for %%E in (1) do rem"') do set "ESCchar=%%E"
set "green=%ESCchar%[92m"
set "red=%ESCchar%[31m"
set "yellow=%ESCchar%[93m"
set "magenta=%ESCchar%[95m"
set "cyan=%ESCchar%[96m"
set "white=%ESCchar%[97m"
set "black=%ESCchar%[30m"
set "brblack=%ESCchar%[90m"

:play_mpv
cls
echo %white%
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
echo  ▒                                               ▒
echo  ▒        %yellow%%~1                      
echo  ▒                                               ▒
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
echo:
echo  %yellow%     press %red%q%yellow% for stop playing
echo         %red%/%yellow% or %red%* %yellow%for volume
echo:

::mpv "--no-video" "--term-osd-bar" "--msg-level=all=info" "%~2" " >NULL 2>&1"
mpv "--no-video" "--display-tags=icy-title --really-quiet" "%~2"
echo %cyan% 
GOTO MENU_START




:MENU_START
@echo off
cls
set INPUT=false
set "MENU_OPTION="
set "OPTION1_INPUT="
set "OPTION2_INPUT="
echo %white%
echo  %white%▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  
echo  ▒                                               ▒
echo  ▒           %yellow% Console Internet Radio             ▒  
echo  ▒                                               ▒
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
echo:                                                
echo   %yellow%1)%white% Jazz                                      
echo   %yellow%2)%white% Lofi                                      
echo   %yellow%3)%white% Hip-hop                                   
echo   %yellow%4)%white% Reggae                                    
echo   %yellow%5)%white% Soma.fm                                   
echo   %yellow%6)%white% Chiplduk                                  
echo   %yellow%7)%white% Electronic                                
echo   %red%Any)%white% Quit                                    
echo:                                               
echo:                                              
echo:                                              
echo:                                              
echo %yellow%                                                                                           
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
set /p MENU_OPTION="%cyan% >>>>>>> Y0ur ch0ise: %white%"

IF %MENU_OPTION%==1 GOTO JAZZ
IF %MENU_OPTION%==2 GOTO LOFI
IF %MENU_OPTION%==3 GOTO HIP-HOP
IF %MENU_OPTION%==4 GOTO REGGAE
IF %MENU_OPTION%==5 GOTO SOMA.FM
IF %MENU_OPTION%==6 GOTO CHIPLDUK
IF %MENU_OPTION%==7 GOTO ELECTRONIC
IF %INPUT%==false GOTO DEFAULT


########################################## Jazz #################################################################
:JAZZ
@echo off
cls
set INPUT=false
set "MENU_OPTION="
set "OPTION1_INPUT="
set "OPTION2_INPUT="
echo  %white%
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  
echo  ▒                                               ▒
echo  ▒ %yellow%                   JAZZ                       ▒
echo  ▒                                               ▒
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
echo:                                                 
echo   %yellow%1)%white% Penthouse Jazz                            
echo   %yellow%2)%white% ClassicJazz 89.1fm                        
echo   %yellow%3)%white% JazzGroove                                
echo   %yellow%4)%white% RadioCaprice                              
echo   %yellow%5)%white% PianoJazz                                 
echo   %red%any)%white% Back                                    
echo: 
echo: 
echo: 
echo: 
echo: 
echo:                                                
echo %yellow%                                                                                           
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
set /p MENU_OPTION="%cyan% >>>>>>> Y0ur ch0ise: %white%"

IF %MENU_OPTION%==1 CALL :play_mpv "Penthouse Jazz (USA)" , "http://s2.nexuscast.com:8052/"
IF %MENU_OPTION%==2 CALL :play_mpv "ClassicJazz 89.1fm", "http://jfm1.hostingradio.ru:14536/ijstream.mp3"
IF %MENU_OPTION%==3 CALL :play_mpv "JazzGroove", "http://199.180.72.2:8015/listen.pls\?sid\=1"
IF %MENU_OPTION%==4 CALL :play_mpv "RadioCaprice", "http://79.111.119.111:9059/"
IF %MENU_OPTION%==5 CALL :play_mpv "PianoJazz", "https://live.radioart.com/fJazz_piano.mp3"
IF %INPUT%==false GOTO MENU_START


########################################## Lofi #################################################################
:LOFI
@echo off
cls
set INPUT=false
set "MENU_OPTION="
set "OPTION1_INPUT="
set "OPTION2_INPUT="
echo  %white%
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  
echo  ▒                                               ▒
echo  ▒ %yellow%                   LOFI                       ▒
echo  ▒                                               ▒
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
echo:   
echo   %yellow%1)%white% Planet lofi                               
echo   %yellow%2)%white% LO-FI Girl                                
echo   %yellow%3)%white% RACOON                                    
echo   %yellow%4)%white% Lofi Hip Hop                             
echo   %yellow%5)%white% Chillsky                                  
echo   %yellow%6)%white% Chillhop                                  
echo   %red%any)%white% Back                                    
echo:
echo:
echo:
echo:
echo:
  
echo %yellow%                                                                                           
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
set /p MENU_OPTION="%cyan% >>>>>>> Y0ur ch0ise: %white%"

IF %MENU_OPTION%==1 CALL :play_mpv "Planet lofi", "http://198.245.60.88:8080"
IF %MENU_OPTION%==2 CALL :play_mpv "LO-FI Girl", "https://www.youtube.com/watch?v=jfKfPfyJRdk"
IF %MENU_OPTION%==3 CALL :play_mpv "RACOON", "https://www.youtube.com/watch?v=5yx6BWlEVcY"
IF %MENU_OPTION%==4 CALL :play_mpv "Lofi Hip Hop", "https://stream.zeno.fm/0r0xa792kwzuv"
IF %MENU_OPTION%==5 CALL :play_mpv "Chillsky", "http://hyades.shoutca.st:8043/stream"
IF %MENU_OPTION%==6 CALL :play_mpv "Chillhop", "http://pub0302.101.ru:8000/stream/pro/aac/64/358"
IF %INPUT%==false GOTO MENU_START

########################################## Hip-hop #################################################################
:HIP-HOP
@echo off
cls
set INPUT=false
set "MENU_OPTION="
set "OPTION1_INPUT="
set "OPTION2_INPUT="
echo  %white%
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  
echo  ▒                                               ▒
echo  ▒ %yellow%                  HIP-HOP                     ▒
echo  ▒                                               ▒
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
echo: 
echo   %yellow%1)%white% laut.fm Oldschool                         
echo   %yellow%2)%white% Old School Rap radio                      
echo   %yellow%3)%white% Urbanradio.com                            
echo   %yellow%4)%white% The Codename Is Blac                      
echo   %red%any)%white% Back      
echo:
echo:
echo:
echo:
echo:
echo:
echo:                              

echo %yellow%                                                                                           
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
set /p MENU_OPTION="%cyan% >>>>>>> Y0ur ch0ise: %white%"

IF %MENU_OPTION%==1 CALL :play_mpv "laut.fm Oldschool", "https://oldschool-hiphop.stream.laut.fm/oldschool-hiphop"
IF %MENU_OPTION%==2 CALL :play_mpv "Old School Rap radio", "https://pub0102.101.ru:8443/stream/personal/aacp/64/323650"
IF %MENU_OPTION%==3 CALL :play_mpv "Urbanradio.com", "http://hydra.cdnstream.com/1537_128"
IF %MENU_OPTION%==4 CALL :play_mpv "The Codename Is Black", "https://playazcliq.radioca.st/"
IF %INPUT%==false GOTO MENU_START
########################################## Reggae #################################################################
:REGGAE
@echo off
cls
set INPUT=false
set "MENU_OPTION="
set "OPTION1_INPUT="
set "OPTION2_INPUT="
echo  %white%
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  
echo  ▒                                               ▒
echo  ▒ %yellow%                   REGGAE                     ▒
echo  ▒                                               ▒
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
echo: 
echo   %yellow%1)%white% Roots legacy.fr                           
echo   %yellow%2)%white% ABC Lounge                                
echo   %yellow%3)%white% ZANJ. RADIO                               
echo   %red%any)%white% Back        
echo:
echo:
echo:
echo:
echo:
echo:
echo:
echo:                            
echo %yellow%                                                                                           
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
set /p MENU_OPTION="%cyan% >>>>>>> Y0ur ch0ise: %white%"

IF %MENU_OPTION%==1 CALL :play_mpv "Rootslegacy.fr", "https://l.rootslegacy.fr/"
IF %MENU_OPTION%==2 CALL :play_mpv "ABC Lounge", "https://str1.openstream.co/589"
IF %MENU_OPTION%==3 CALL :play_mpv "ZANJ. RADIO", "https://node-22.zeno.fm/yx5d62e3wy5tv"
IF %INPUT%==false GOTO MENU_START
########################################## Soma.fm #################################################################
:SOMA.FM
@echo off
cls
set INPUT=false
set "MENU_OPTION="
set "OPTION1_INPUT="
set "OPTION2_INPUT="
echo  %white%
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  
echo  ▒                                               ▒
echo  ▒ %yellow%                  SOMA.FM                     ▒
echo  ▒                                               ▒
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
echo:
echo   %yellow%1)%white% SomaFM: Lush                              
echo   %yellow%2)%white% SomaFM: Deep Space One                    
echo   %red%any)%white% Back
echo:
echo:
echo:
echo:
echo:
echo:
echo:
echo:
echo:                              
echo %yellow%                                                                                           
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
set /p MENU_OPTION="%cyan% >>>>>>> Y0ur ch0ise: %white%"

IF %MENU_OPTION%==1 CALL :play_mpv "SomaFM: Lush", "http://ice1.somafm.com/lush-128-mp3"
IF %MENU_OPTION%==2 CALL :play_mpv "SomaFM: Deep Space One", "http://ice2.somafm.com/deepspaceone-128-mp3"
IF %INPUT%==false GOTO MENU_START
########################################## Chiplduk #################################################################
:CHIPLDUK
@echo off
cls
CALL :play_mpv Chiplduk http://radio.4duk.ru/4duk128.aac
########################################## Electronic #################################################################
:ELECTRONIC
@echo off
cls
set INPUT=false
set "MENU_OPTION="
set "OPTION1_INPUT="
set "OPTION2_INPUT="
echo  %white%
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  
echo  ▒                                               ▒
echo  ▒ %yellow%                ELECTRONIC                    ▒
echo  ▒                                               ▒
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
echo:
echo   %yellow%1)%white% Liquid Funk SPB                           
echo   %yellow%2)%white% Different Drumz DnB                       
echo   %yellow%3)%white% laut.fm Liquid                            
echo   %yellow%4)%white% http://renegaderadio.co.uk                
echo   %yellow%5)%white% liquid DnB Russia                         
echo   %yellow%6)%white% Liqui Radio                               
echo   %yellow%7)%white% DFM Liquid DnB                            
echo   %yellow%8)%white% HBR1 Dream Factory (ambient)              
echo   %yellow%9)%white% DNB Non-Stop Liquid                       
echo   %red%any)%white% Back                                    
echo:
echo:
echo %yellow%                                                                                           
echo  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
set /p MENU_OPTION="%cyan% >>>>>>> Y0ur ch0ise: %white%"

IF %MENU_OPTION%==1 CALL :play_mpv "Liquid Funk SPB", https://radiorecord.hostingradio.ru/liquidfunk96.aacp
IF %MENU_OPTION%==2 CALL :play_mpv "Different Drumz DnB", "https://differentdrumz.radioca.st/stream%20"
IF %MENU_OPTION%==3 CALL :play_mpv "laut.fm Liquid", "https://dnb-base.stream.laut.fm/dnb-base"
IF %MENU_OPTION%==4 CALL :play_mpv "http://renegaderadio.co.uk",  "https://streaming06.liveboxstream.uk/proxy/renegade/stream"
IF %MENU_OPTION%==5 CALL :play_mpv "liquid DnB Russia", "https://stream05.pcradio.ru/rad_lqddnbsttn-med"
IF %MENU_OPTION%==6 CALL :play_mpv "Liqui Radio", "https://str4.pcradio.ru/liquidnb_ua-med"
IF %MENU_OPTION%==7 CALL :play_mpv "DFM Liquid DnB", "https://icecast01.hostingradio.ru:80/liquid96.aacp"
IF %MENU_OPTION%==8 CALL :play_mpv "HBR1 Dream Factory (ambient)", "http://radio.hbr1.com:19800/ambient.ogg"
IF %MENU_OPTION%==9 CALL :play_mpv "Drum & Bass Non-Stop Liquid", "https://www.youtube.com/watch?v=Cwq3AFyV044"
IF %INPUT%==false GOTO MENU_START


:DEFAULT
set INPUT=true
echo Bye
timeout 2 > NUL
exit /b
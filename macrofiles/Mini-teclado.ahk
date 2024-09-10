#Requires AutoHotkey v2.0
SetNumLockState True
RUN("powershell.exe Set-AudioDevice -RecordingMute 0",,"Hide")
MicMute := False
#include HelpGui.ahk
    ^!+1::
    {
        IsDown := GetKeyState("CapsLock", "T")
        if(IsDown==0){
            RUN "C:\Program Files (x86)\AlbionOnline\launcher\AlbionLauncher.exe"
            RUN "C:\Users\gusta\AppData\Local\Discord\Update.exe --processStart Discord.exe"
        }else{
            result := MsgBox("Desligar?","Desligar","Y/N T5")
            if(result = "Timeout"){
                RUN("shutdown -a",,"Hide")
            }
            
            if(result = "Yes"){
                RUN("shutdown -s -t 10",,"Hide")
            }
            if(result = "No"){
                RUN("shutdown -a",,"Hide")
            }
        }
    }
    ^!+4::{
        Loop 
        {
            N := Random(295, 360)
            Click
            Sleep N*10
            If (A_Index > 10)
                Break
            ; Continue
        }
        Return
    }
    ^!+5::
    {
        IsDown := GetKeyState("CapsLock", "T")
        if(IsDown==0){
            Sleep 1000
            Send "#+s"
        }Else{
            Sleep 1000
            Send "#+t"
        }
    }
    ^!+6::MsgBox(ThisHotkey,"Titulo","T1")
    ^!+7::
    {
        IsDown := GetKeyState("CapsLock", "T")
        if(IsDown==0){
            MsgBox(ThisHotkey,"Titulo","T1")
        }Else{
            result := MsgBox("Fazer git clone de " A_Clipboard ,"git clone","Y/N")
            if(result = "Yes"){
                RUN("E:\AHK\macrofiles\visualcode.ps1",,"Hide")
            }
        }
    }
    ^!+8::
    {
        Send "^c"
        ClipWait
        RUN "http://www.google.com/search?q=" A_Clipboard
    }
    ^!+9::
    {
        IsDown := GetKeyState("CapsLock", "T")
        if(IsDown==0){
            RUN "Calc.exe"
        }else{
            if WinExist("Calculadora")
                WinKill "Calculadora"     
        }
        
    }
    ^!+0::
    {
        RUN "https://albion-profit-calculator.com/"
    }
    ^!+,::
    {
        IsDown := GetKeyState("CapsLock", "T")
        global MicMute
        if(IsDown==0){
            Send "{Media_Prev}"
        }else{
            if(MicMute){
                MicMute:=False
                SoundBeep 350, 250
            }Else{
                MicMute:=True
                SoundBeep 150, 250
            }
            RUN("powershell.exe Set-AudioDevice -RecordingMuteToggle",,"Hide")
        }
        
    }
    ^!+.::
    {
        IsDown := GetKeyState("CapsLock", "T")
        if(IsDown==0){
            Send "{Media_Next}"
        }else{
            RUN("powershell.exe" " E:\AHK\macrofiles\TrocarFone.ps1 change",,"Hide")
        }
    }
    ; Numpad2::{
        ; Run("Python" " E:\AHK\macrofiles\ar.py",,"Hide")
    ; }
    ^!r::Reload
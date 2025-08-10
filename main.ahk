#Persistent
#SingleInstance Force

keywords := ["Netflix", "Prime Video", "Disney+", "BluTV", "HBO Max", "Apple TV+"]
browsers := ["chrome.exe", "msedge.exe", "firefox.exe", "brave.exe"]

lastStreaming := false
openedInstantReplay := false
delayTimerRunning := false

SetTimer, CheckWindow, 500
return

CheckWindow:
    streamingOpen := false

    for index, browser in browsers {
        WinGet, id, List, ahk_exe %browser%
        Loop, %id%
        {
            this_id := id%A_Index%
            WinGetTitle, title, ahk_id %this_id%
            for each, keyword in keywords {
                if (InStr(title, keyword)) {
                    streamingOpen := true
                    break
                }
            }
            if (streamingOpen)
                break
        }
        if (streamingOpen)
            break
    }

    if (lastStreaming = true and streamingOpen = false and !openedInstantReplay and !delayTimerRunning) {
        delayTimerRunning := true
        SetTimer, SendInstantReplay, -5000  ; 5 saniye sonra bir defaya mahsus çalışacak
    }
    else if (streamingOpen) {
        openedInstantReplay := false
        delayTimerRunning := false
    }

    lastStreaming := streamingOpen
return

SendInstantReplay:
    Send, !+{F10}
    openedInstantReplay := true
    delayTimerRunning := false
return

(* Automator
http://apple.stackexchange.com/questions/47216/copying-the-current-directorys-path-to-the-clipboard
*)
try
    tell application "Finder" to set the clipboard to POSIX path of (target of window 1 as alias)
on error
    beep
end try
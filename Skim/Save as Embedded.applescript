(*
Installation: 
1. Create a symbolic link "Save as Embedded" in ~/Library/Application Support/Skim/Scripts. If that path does not exist, then create it: create the Skim folder first in Application Support, then create a Scripts folder within that.
2. Open the Keyboard preference pane, then create "Shortcuts" from the top and "App Shortcuts" from the side. Create a Skim shortcut to "Save as Embedded", and assign it to command+s
*)
tell application "Skim"
	set namePDF to name of document 1
	set filePath to file of document 1
	save document 1 in (POSIX path of filePath) & namePDF as "PDF With Embedded Notes"
end tell
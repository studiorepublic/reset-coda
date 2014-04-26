osascript -e 'tell application "Coda 2" to quit'
killall cfprefsd

rm -rf ~/Library/Preferences/com.panic.Coda2.*
rm -rf ~/Library/Preferences/ByHost/com.panic.Coda2.*

rm -rf ~/Library/Caches/com.panic.Coda2/
rm -rf ~/Library/Application\ Support/Coda\ 2/
rm -rf ~/Library/Saved\ Application\ State/com.panic.Coda2.savedState/

osascript -e 'delay 1' -e 'tell application "Coda 2"' -e 'reopen' -e 'activate' -e 'end tell'
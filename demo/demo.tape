# Record a crisp README demo GIF with Charmbracelet VHS
# Install: brew install vhs
# Run:     vhs demo/demo.tape

Output demo/preview.gif

Set Shell "bash"
Set FontSize 15
Set Width 960
Set Height 540
Set Padding 20
Set Theme "Catppuccin Mocha"
Set TypingSpeed 45ms

Type "chmod +x scripts/fx.sh"
Enter
Sleep 400ms
Type "clear"
Enter
Sleep 400ms

Type "./scripts/fx.sh vacuum"
Enter
Sleep 2s

Type "./scripts/fx.sh gate_locked"
Enter
Sleep 1.5s

Type "./scripts/fx.sh omerta"
Enter
Sleep 2.5s

Type "./scripts/fx.sh drop_act"
Enter
Sleep 3s

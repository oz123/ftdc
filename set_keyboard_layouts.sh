
#!/bin/bash
# x-tile_mate_keybindings 
# quickly setup bindings for x-tile in mate, tiling window
# management with a nice DE!

# Thanks for mate developers  Issue #45 in mate-control-center
# is now closed and this is possible again
#!/bin/bash


# set English US, Hebrew and German keyboard layouts

# Switch layout with win+space and kill X with ctrl+alt+backspace
cat << EOF > layouts
[kbd]
layouts=['us','il','de']
options=['terminate\tterminate:ctrl_alt_bksp', 'grp\tgrp:win_space_toggle']
EOF


dconf load /org/mate/desktop/peripherals/keyboard/ < layouts
rm layouts

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!
#
# This config file uses keycodes (bindsym) and was written for the QWERTY
# layout.
#
# To get a config file with the same key positions, but for your current
# layout, use the i3-config-wizard
#

set $mod Mod1

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:DejaVu Sans Mono 11

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# use these keys for focus, movement, and resize directions when reaching for
# the arrows is not convenient
set $up l
set $down k
set $left j
set $right semicolon

# use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# kill focused window
bindsym $mod+Shift+q kill

# start rofi
#config in .Xresources
bindsym $mod+d exec rofi -show run

# change focus
bindsym $mod+$left focus left
bindsym $mod+$down focus down
bindsym $mod+$up focus up
bindsym $mod+$right focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+$left move left
bindsym $mod+Shift+$down move down
bindsym $mod+Shift+$up move up
bindsym $mod+Shift+$right move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# move the currently focused window to the scratchpad
bindsym $mod+Shift+minus move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
bindsym $mod+minus scratchpad show

set $workspace1 1
set $workspace2 2
set $workspace3 3
set $workspace4 4
set $workspace5 5
set $workspace6 6
set $workspace7 7
set $workspace8 8
set $workspace9 9
set $workspace10 10

# switch to workspace
bindsym $mod+1 workspace $workspace1
bindsym $mod+2 workspace $workspace2
bindsym $mod+3 workspace $workspace3
bindsym $mod+4 workspace $workspace4
bindsym $mod+5 workspace $workspace5
bindsym $mod+6 workspace $workspace6
bindsym $mod+7 workspace $workspace7
bindsym $mod+8 workspace $workspace8
bindsym $mod+9 workspace $workspace9
bindsym $mod+0 workspace $workspace10

#numeric keyboard
bindcode $mod+87 workspace $workspace1
bindcode $mod+88 workspace $workspace2
bindcode $mod+89 workspace $workspace3
bindcode $mod+83 workspace $workspace4
bindcode $mod+84 workspace $workspace5
bindcode $mod+85 workspace $workspace6
bindcode $mod+79 workspace $workspace7
bindcode $mod+80 workspace $workspace8
bindcode $mod+81 workspace $workspace9
bindcode $mod+90 workspace $workspace10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $workspace1
bindsym $mod+Shift+2 move container to workspace $workspace2
bindsym $mod+Shift+3 move container to workspace $workspace3
bindsym $mod+Shift+4 move container to workspace $workspace4
bindsym $mod+Shift+5 move container to workspace $workspace5
bindsym $mod+Shift+6 move container to workspace $workspace6
bindsym $mod+Shift+7 move container to workspace $workspace7
bindsym $mod+Shift+8 move container to workspace $workspace8
bindsym $mod+Shift+9 move container to workspace $workspace9
bindsym $mod+Shift+0 move container to workspace $workspace10

#numeric keyboard (also moves focus to the other workspace)

bindcode $mod+Shift+87 move container to workspace $workspace1; workspace $workspace1
bindcode $mod+Shift+88 move container to workspace $workspace2; workspace $workspace2
bindcode $mod+Shift+89 move container to workspace $workspace3; workspace $workspace3
bindcode $mod+Shift+83 move container to workspace $workspace4; workspace $workspace4
bindcode $mod+Shift+84 move container to workspace $workspace5; workspace $workspace5
bindcode $mod+Shift+85 move container to workspace $workspace6; workspace $workspace6
bindcode $mod+Shift+79 move container to workspace $workspace7; workspace $workspace7
bindcode $mod+Shift+80 move container to workspace $workspace8; workspace $workspace8
bindcode $mod+Shift+81 move container to workspace $workspace9; workspace $workspace9
bindcode $mod+Shift+90 move container to workspace $workspace10; workspace $workspace10

#assign programs to workspaces

assign [class="Thunar"] $workspace2

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym $left       resize shrink width 10 px or 10 ppt
        bindsym $down       resize grow height 10 px or 10 ppt
        bindsym $up         resize shrink height 10 px or 10 ppt
        bindsym $right      resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left        resize shrink width 10 px or 10 ppt
        bindsym Down        resize grow height 10 px or 10 ppt
        bindsym Up          resize shrink height 10 px or 10 ppt
        bindsym Right       resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

#lock-----------------------------------------
bindsym $mod+x exec ~/bin/lock.sh ~/Pictures/locks/lock3.png

#edges-----------------------------------------
hide_edge_borders both
#no borders for all windows 
new_window none
#only borders for terminal for better looks
for_window [class="URxvt"] border pixel 1

#screenshot
bindsym $mod+z exec scrot ~/Pictures/Screenshots/%T-%m-%d-%H:%M:%S.png; exec notify-send "Screenshot Taken"

#windows color, only set border color for terminal

# class                  border  backgr. text    indicator child_border
 client.focused          #ffffff #000000 #ffffff #ffffff   #ffffff
 client.focused_inactive #ffffff #000000 #ffffff #ffffff   #ffffff
 client.unfocused        #ffffff #000000 #888888 #ffffff   #ffffff
 client.urgent           #ff0000 #000000 #ff8888 #ff0000   #ff0000
#client.placeholder      #000000 #0c0c0c #ffffff #000000   #0c0c0c

# client.background       #ffffff

#---------------------------------
workspace_auto_back_and_forth yes

#touchpad toggle
bindsym XF86TouchpadToggle exec ~/bin/toggle-touchpad
#volume controls
bindsym XF86AudioRaiseVolume exec ~/bin/chvol.sh +2 #increase sound volume
bindsym XF86AudioLowerVolume exec ~/bin/chvol.sh -2 #decrease sound volume
bindsym XF86AudioMute exec ~/bin/toggle-sound.sh #toggle sound
#Sreen brightness controls
bindsym XF86MonBrightnessUp exec ~/bin/chlight.sh +20 # increase screen brightness
bindsym XF86MonBrightnessDown exec ~/bin/chlight.sh -20 # decrease screen brightness

#MPD bindings
bindsym $mod+p exec mpc toggle #pause/unpause
bindsym $mod+bracketright exec mpc next #next song
bindsym $mod+bracketleft exec mpc prev #prev song

#turn off touchpad
exec xinput --disable 11
#startup compton
exec compton -b

bindsym $mod+q sticky toggle

#restore wallpaper
exec nitrogen --restore
#start thunar in workspace2
exec Thunar
#start lemonbar
exec_always ~/bin/lemon.sh

#gaps
gaps inner 10
gaps outer 15

set $mode_gaps Gaps: (o) outer, (i) inner
set $mode_gaps_outer Outer Gaps: +|-|0 (local), Shift + +|-|0 (global)
set $mode_gaps_inner Inner Gaps: +|-|0 (local), Shift + +|-|0 (global)
bindsym $mod+Shift+g mode "$mode_gaps"

mode "$mode_gaps" 
{
        bindsym o      mode "$mode_gaps_outer"
        bindsym i      mode "$mode_gaps_inner"
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

mode "$mode_gaps_inner" 
{
        bindsym plus  gaps inner current plus 5
        bindsym minus gaps inner current minus 5
        bindsym 0     gaps inner current set 0

        bindsym Shift+plus  gaps inner all plus 5
        bindsym Shift+minus gaps inner all minus 5
        bindsym Shift+0     gaps inner all set 0

        bindsym Return mode "default"
        bindsym Escape mode "default"
}

mode "$mode_gaps_outer" 
{
        bindsym plus  gaps outer current plus 5
        bindsym minus gaps outer current minus 5
        bindsym 0     gaps outer current set 0

        bindsym Shift+plus  gaps outer all plus 5
        bindsym Shift+minus gaps outer all minus 5
        bindsym Shift+0     gaps outer all set 0

        bindsym Return mode "default"
        bindsym Escape mode "default"
}

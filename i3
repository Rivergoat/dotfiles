# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!
#
# This config file uses keycodes (bindsym) and was written for the QWERTY
# layout.
#
# To get a config file with the same key positions, but for your current
# layout, use the i3-config-wizard
#

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:monospace 8

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

exec  compton --config ~/.config/compton/compton.conf
exec wal -R
exec mopidy
#exec compton --blur-kern 7x7box --blur-background
#exec nitrogen --restore
bindsym Mod1+Shift+f exec qutebrowser
#bindsym Mod1+Shift+s exec bash ~/screenshot.sh
bindsym Mod1+Shift+s exec deepin-screenshot

bindsym Mod1+m bar mode toggle
bindsym Mod1+x exec i3lock-fancy
bindsym Mod1+Return exec ~/dotfiles/japdark.sh
bindsym Mod1+Shift+Return exec ~/dotfiles/japlight.sh
bindsym Control+Shift+1 exec ~/dotfiles/japdark.sh

exec setxkbmap -option caps:escape

#bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +5% #increase sound volume
#bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -5% #decrease sound volume
#bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle # mute sound
bindsym XF86AudioRaiseVolume exec amixer -q set Master 2dB+ unmute
bindsym XF86AudioLowerVolume exec amixer -q set Master 2dB- unmute
bindsym XF86AudioMute exec amixer -q set Master toggle


gaps inner 10
#gaps outer 20
#smart_gaps on
default_border none

#new_window pixel 5
new_window pixel 0

##new_window none

#this is where I stopped

set $up l
set $down k
set $left j
set $right semicolon

# use Mouse+Mod1 to drag floating windows to their wanted position
floating_modifier Mod1

# start a terminal
#bindsym Mod1+Return exec urxvt
bindsym Mod1+n exec bash urxvt -e ranger /home/fox/Pictures/Wallpapers/
# kill focused window
bindsym Mod1+Shift+q kill

# start dmenu (a program launcher)
#bindsym Mod1+d exec dmenu_run
bindsym Mod1+d exec bash ~/dmen.sh

# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym Mod1+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym Mod1+$left focus left
bindsym Mod1+$down focus down
bindsym Mod1+$up focus up
bindsym Mod1+$right focus right

# alternatively, you can use the cursor keys:
bindsym Mod1+Left focus left
bindsym Mod1+Down focus down
bindsym Mod1+Up focus up
bindsym Mod1+Right focus right

# move focused window
bindsym Mod1+Shift+$left move left
bindsym Mod1+Shift+$down move down
bindsym Mod1+Shift+$up move up
bindsym Mod1+Shift+$right move right

# alternatively, you can use the cursor keys:
bindsym Mod1+Shift+Left move left
bindsym Mod1+Shift+Down move down
bindsym Mod1+Shift+Up move up
bindsym Mod1+Shift+Right move right

# split in horizontal orientation
bindsym Mod1+h split h

# split in vertical orientation
bindsym Mod1+v split v

# enter fullscreen mode for the focused container
bindsym Mod1+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym Mod1+s layout stacking
#bindsym Mod1+w layout tabbed
bindsym Mod1+e layout toggle split

# toggle tiling / floating
bindsym Mod1+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym Mod1+space focus mode_toggle

# focus the parent container
bindsym Mod1+a focus parent

# focus the child container
#bindsym Mod1+d focus child

# move the currently focused window to the scratchpad
bindsym Mod1+Shift+minus move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
bindsym Mod1+minus scratchpad show

# switch to workspace
bindsym Mod1+1 workspace 1
bindsym Mod1+2 workspace 2
bindsym Mod1+3 workspace 3
bindsym Mod1+4 workspace 4
bindsym Mod1+5 workspace 5
bindsym Mod1+6 workspace 6
bindsym Mod1+7 workspace 7
bindsym Mod1+8 workspace 8
bindsym Mod1+9 workspace 9
bindsym Mod1+0 workspace 10

# move focused container to workspace
bindsym Mod1+Shift+1 move container to workspace 1
bindsym Mod1+Shift+2 move container to workspace 2
bindsym Mod1+Shift+3 move container to workspace 3
bindsym Mod1+Shift+4 move container to workspace 4
bindsym Mod1+Shift+5 move container to workspace 5
bindsym Mod1+Shift+6 move container to workspace 6
bindsym Mod1+Shift+7 move container to workspace 7
bindsym Mod1+Shift+8 move container to workspace 8
bindsym Mod1+Shift+9 move container to workspace 9
bindsym Mod1+Shift+0 move container to workspace 10

# reload the configuration file
bindsym Mod1+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym Mod1+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym Mod1+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

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

bindsym Mod1+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)


set $transparent #0000005a

set_from_resource $white i3wm.color7 #f0f0f0
set_from_resource $green i3wm.color2 #f0f0f0
set_from_resource $black i3wm.color0 #f0f0f0
set_from_resource $red   i3wm.color1 #f0f0f0
set_from_resource $yellow i3wm.color3 #f0f0f0
set_from_resource $blue  i3wm.color4 #f0f0f0
set_from_resource $magenta i3wm.color5 #f0f0f0
set_from_resource $cyan i3wm.color6 #f0f0f0


set_from_resource $foreground i3wm.foreground #f0f0f0
set_from_resource $background i3wm.background #f0f0f0

#way of the world

bar {
        status_command i3status
        i3bar_command i3bar -t
        position top
        colors {
        #background $white
        background $background

        #statusline
        # and the rest
        
        #                  border  backgr. text
        focused_workspace  $cyan   $cyan   $white
        active_workspace   $foreground $foreground $background
        inactive_workspace $background  $background $foreground
        urgent_workspace   $red    $red    $white
    }
}

# class                 border  backgr. text    indicator
client.focused          #ff0000 #ff0000 #ff0000 #ff0000
client.focused_inactive #ff0000 #ff0000 #ff0000 #ff0000
client.unfocused        #ff0000 #ff0000 #ff0000 #ff0000
client.urgent           #ff0000 #ff0000 #ff0000 #ff0000

#######################################################################
# automatically start i3-config-wizard to offer the user to create a
# keysym-based config which used their favorite modifier (alt or windows)
#
# i3-config-wizard will not launch if there already is a config file
# in ~/.i3/config.
#
# Please remove the following exec line:
#######################################################################

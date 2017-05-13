#
# ~/.config/i3/config
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4
floating_modifier $mod
focus_follows_mouse no

# appearance
font pango:Inconsolata 11
new_window pixel 1
new_float pixel 1

# colors based on http://ethanschoonover.com/solarized
# class			ttl_bdr	backgrd	text	indictr	border
client.focused		#268bd2	#268bd2	#fdf6e3	#2aa198	#268bd2
client.focused_inactive	#073642	#073642	#839496	#2aa198	#586e75
client.unfocused	#002b36	#002b36	#839496	#2aa198	#073642
client.urgent		#dc322f	#dc322f	#fdf6e3	#2aa198	#dc322f

# i3bar for workspaces and i3status
bar {
        separator_symbol "|"
        status_command i3status

        colors {
                background #000000
                statusline #839496
                # class			border	backgrd	text
                focused_workspace	#268bd2	#268bd2	#fdf6e3
                active_workspace	#073642	#073642	#839496
                inactive_workspace	#000000	#000000	#839496
                urgent_workspace	#dc322f	#dc322f	#fdf6e3
        }
}

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right
bindsym $mod+z focus child
bindsym $mod+a focus parent
bindsym $mod+x focus mode_toggle

# change focus backup
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# move focused window backup
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# change layout
bindsym $mod+v split v
bindsym $mod+b split h
bindsym $mod+f fullscreen
bindsym $mod+s layout stacking
bindsym $mod+t layout tabbed
bindsym $mod+d layout toggle split
bindsym $mod+Shift+x floating toggle

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

# resize window
mode "resize" {
        bindsym n resize shrink width 10 px or 10 ppt
        bindsym w resize grow width 10 px or 10 ppt
        bindsym s resize shrink height 10 px or 10 ppt
        bindsym t resize grow height 10 px or 10 ppt
        bindsym Return mode "default"
        bindsym Escape mode "default"
}
bindsym $mod+r mode "resize"

# i3 shortcuts
bindsym $mod+Shift+q kill
bindsym --release $mod+Shift+w exec lockx
bindsym $mod+Shift+f exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"
bindsym $mod+Shift+p restart
bindsym $mod+Shift+g reload

# application shortcuts
bindsym $mod+Return exec i3-sensible-terminal
bindsym $mod+space exec dmenu_run
bindsym $mod+Shift+r exec pkill -USR1 redshift
bindsym $mod+Shift+n exec google-chrome-stable --incognito

# application settings
for_window [window_role="pop-up"] floating enable
for_window [instance="crx_nckgahadagoaajjgafhacjanaoiihapd"] floating disable

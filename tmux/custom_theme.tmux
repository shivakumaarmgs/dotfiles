#!/usr/bin/env bash

set -g status 'on'
set -g status-justify 'centre'
#set -g status-utf8 'on'
set -g status-style bg=colour235,none

set -g status-right-length '100'
set -g status-right-style none

set -g status-left-style none
set -g status-left-length '100'

set -g message-style bg=colour238,fg=colour222
set -g message-command-style bg=colour238,fg=colour222

set -g pane-border-style fg=colour238
set -g pane-active-border-style fg=colour154

setw -g window-status-style fg=colour121,none
setw -g window-status-activity-style bg=colour235,fg=colour154,none
setw -g window-status-separator ''

# set -g status-left '#[fg=colour232,bg=colour154] #S #[fg=colour154,bg=colour238,nobold,nounderscore,noitalics] #[fg=colour222,bg=colour238] #W #[fg=colour238,bg=colour235]#[fg=colour154,bg=colour235] #(whoami) '
# set -g status-left '#[fg=black,bg=green] #S #[fg=green,bg=colour238,nobold,nounderscore,noitalics]#[fg=yellow,bg=colour238] #W #[fg=colour238,bg=colour235]#[fg=green,bg=colour235] #(whoami) '
set -g status-left '#[fg=black,bg=#aeee00] #S #[fg=#aeee00,bg=colour238,nobold,nounderscore,noitalics]#[fg=#f4cf86,bg=colour238] #W #[fg=colour238,bg=colour235]#[fg=#aeee00,bg=colour235] #(whoami) '
# set -g status-right "#[fg=colour232,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour154,bg=colour232] UTC: #(TZ="UTC" date +%%H:%%M:%%S) | CET: #(TZ="CET" date +%%H:%%M:%%S) | IST: #(TZ="Asia/Kolkata" date +%%H:%%M:%%S) #[fg=colour232,bg=colour154] #[fg=colour232,bg=colour154] #{online_status}  #{battery_icon} #{battery_percentage} "
set -g status-right "#[fg=black,bg=colour235,nobold,nounderscore,noitalics]#[fg=#aeee00,bg=black] %Y-%m-%d #[fg=colour238,bg=black,nobold,nounderscore,noitalics]#[fg=#f4cf86,bg=colour238] UTC: #(TZ="UTC" date +%%H:%%M) | CET: #(TZ="CET" date +%%H:%%M) | IST: #(TZ="Asia/Kolkata" date +%%H:%%M) #[fg=#aeee00,bg=colour238]#[fg=black,bg=#aeee00] #{online_status}  #{battery_icon} #{battery_percentage} "
setw -g window-status-format '#[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]#[default] #I  #W #[fg=colour235,bg=colour235,nobold,nounderscore,noitalics].'
setw -g window-status-current-format '#[fg=colour235,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour222,bg=colour238] #I  #W  #F #[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]'

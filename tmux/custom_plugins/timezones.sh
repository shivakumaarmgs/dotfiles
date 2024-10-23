# If this module depends on an external Tmux plugin, say so in a comment.
# E.g.: Requires https://github.com/aaronpowell/tmux-weather

show_timezones() { # This function name must match the module name!
  local index icon color text module

  index=$1 # This variable is used internally by the module loader in order to know the position of this module
  icon="$(get_tmux_option "@catppuccin_timezones_icon" "󱑆")"
  color="$(get_tmux_option "@catppuccin_timezones_color" "$thm_green")"
  text="$(get_tmux_option "@catppuccin_timezones_text" "UTC: #(TZ="UTC" date +%%H:%%M) | CET: #(TZ="CET" date +%%H:%%M) | IST: #(TZ="Asia/Kolkata" date +%%H:%%M)")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}

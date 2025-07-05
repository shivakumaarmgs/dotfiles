# If this module depends on an external Tmux plugin, say so in a comment.
# E.g.: Requires https://github.com/aaronpowell/tmux-weather

show_online() { # This function name must match the module name!
  local index icon color text module

  index=$1 # This variable is used internally by the module loader in order to know the position of this module
  icon="$(get_tmux_option "@catppuccin_online_icon" "󰢾")"
  color="$(get_tmux_option "@catppuccin_online_color" "$thm_red")"
  text="$(get_tmux_option "@catppuccin_online_text" "#{online_status}")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}

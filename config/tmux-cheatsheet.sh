#!/bin/bash
cat << 'EOF'

  TMUX CHEAT SHEET
  Prefix: CapsLock (= Ctrl+Space)

  PANES
  ──────────────────────────────────────────────
  Prefix |          Split pane right
  Prefix -          Split pane down
  Prefix h/j/k/l    Navigate panes
  Prefix H/J/K/L    Resize panes
  Prefix x          Kill pane
  Prefix z          Zoom/unzoom pane
  Prefix Space      Cycle pane layouts
  Prefix { / }      Swap pane
  Prefix !          Break pane → new window

  WINDOWS
  ──────────────────────────────────────────────
  Prefix c          New window
  Prefix ,          Rename window
  Prefix n / p      Next / prev window
  Prefix < / >      Move window left/right
  Prefix w          Window list

  SESSIONS
  ──────────────────────────────────────────────
  Prefix $          Rename session
  Prefix s          Choose session
  Prefix N          New session

  OTHER
  ──────────────────────────────────────────────
  Prefix r          Reload config
  Prefix ?          This cheat sheet

  [press any key to close]

EOF
read -n 1 -s

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

def zhome [] {
    zellij --layout ~/.config/zellij/layouts/home.kdl
}

def zhx [] {
    zellij --layout ~/.config/zellij/layouts/editor.kdl
}



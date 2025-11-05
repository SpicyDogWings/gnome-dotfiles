
$env.config.show_banner = false
$env.config.buffer_editor = "hx"

$env.EDITOR = "hx"

use std/util "path add"

path add ($env.HOME | path join ".cargo" "bin")
path add ($env.HOME | path join ".opencode" "bin")
path add ($env.HOME | path join ".volta" "bin")
path add ($env.HOME | path join ".local" "bin")
#export PATH="$PATH:/home/unancodelinux/.local/bin"

$env.PNPM_HOME = "/home/unancodelinux/.local/share/pnpm"
$env.PATH = ($env.PATH | split row (char esep) | prepend $env.PNPM_HOME )

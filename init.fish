fish_config prompt coose nim
funcsave fish_prompt

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
curl https://raw.githubusercontent.com/TilGP/fish_config/refs/heads/main/fish_plugins >~/.config/fish/fish_plugins
fisher update

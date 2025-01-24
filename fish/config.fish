if status is-interactive
  zoxide init fish | source
  atuin init fish --disable-up-arrow | source

  set -gx http_proxy http://127.0.0.1:6152
  set -gx https_proxy http://127.0.0.1:6152
  set -gx all_proxy socks5://127.0.0.1:6153

  alias tailscale='/Applications/Tailscale.app/Contents/MacOS/Tailscale'
  alias psql='/Applications/Postgres.app/Contents/Versions/17/bin/psql'

  function fish_greeting; end
else
  mise activate fish --shims | source
end


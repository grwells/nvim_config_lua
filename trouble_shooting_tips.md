# Trouble-shooting Tips

### Clipboard Malfunction

1. In nvim run `:echo has('clipboard')`. If it returns 0, nvim was unable to find a clipboard tool at startup (see `:h clipboard`) for details.
    * __Solution__: install xclip tool with `sudo apt install xclip`. Restart nvim to take affect.

2. Verify that nvim is using `unnamedplus` as the clipboard option. This sets nvim to interact with the system clipboard.
    * in `lua/<user name>/set.lua`: `vim.opt.clipboard = "unnamedplus"`

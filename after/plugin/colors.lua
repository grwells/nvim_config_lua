function ColorMyPencils(color)
	--color = color or "dracula"
	--
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()

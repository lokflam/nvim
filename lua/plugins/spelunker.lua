return {
	"kamykn/spelunker.vim",
	config = function()
		vim.g.spelunker_check_type = 2
		vim.cmd("highlight SpelunkerSpellBad cterm=undercurl ctermfg=NONE gui=undercurl guifg=NONE guisp=gray")
		vim.cmd(
			"highlight SpelunkerComplexOrCompoundWord cterm=undercurl ctermfg=NONE gui=undercurl guifg=NONE guisp=gray"
		)
	end,
}

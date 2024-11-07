return {
	"Exafunction/codeium.nvim",
    config = function()
        require("codeium").setup({
            virtual_text = {
                enabled = false
            }
        })
    end
}

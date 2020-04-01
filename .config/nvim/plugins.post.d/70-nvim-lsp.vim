Plug 'neovim/nvim-lsp'

:lua << EOF
	local nvim_lsp = require'nvim_lsp'
	nvim_lsp.bashls.setup{
		log_level = vim.lsp.protocol.MessageType.Log;
		message_level = vim.lsp.protocol.MessageType.Log;
	}
	nvim_lsp.ccls.setup{
		log_level = vim.lsp.protocol.MessageType.Log;
		message_level = vim.lsp.protocol.MessageType.Log;
	}
	nvim_lsp.pyls.setup{
		log_level = vim.lsp.protocol.MessageType.Log;
		message_level = vim.lsp.protocol.MessageType.Log;
	}
	nvim_lsp.texlab.setup{
		log_level = vim.lsp.protocol.MessageType.Log;
		message_level = vim.lsp.protocol.MessageType.Log;
	}
EOF

let g:LspDiagnosticsErrorSign = '>>'
let g:LspDiagnosticsWarningSign = '--'
let g:LspDiagnosticsInformationSign = '##'
let g:LspDiagnosticsHintSign = 'H'

nnoremap <leader>af :execute 'silent !clang-format -i %'<CR>

nnoremap <leader>ad <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>at <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>ai <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>ah <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>as <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>ar <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>ac <cmd>lua vim.lsp.buf.document_symbol()<CR>

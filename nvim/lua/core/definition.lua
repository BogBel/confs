function OpenDefinition()
	local bufnr = vim.fn.bufnr("%")
	local winnr = vim.fn.winnr()
	local response =
		vim.lsp.buf_request_sync(bufnr, "textDocument/definition", vim.lsp.util.make_position_params(), 1000)

	if not response or vim.tbl_isempty(response) then
		print("Definition not found")
		return
	end

	local target_uri, target_position
	for _, server_responses in pairs(response) do
		if server_responses.result and server_responses.result[1] then
			target_uri = server_responses.result[1].uri
			target_position = server_responses.result[1].range.start
			break
		end
	end

	if not target_uri then
		print("Definition not found")
		return
	end

	local target_buf = vim.uri_to_bufnr(target_uri)

	-- Check if the target buffer is already open in another split
	for _, window in pairs(vim.fn.getwininfo()) do
		if window.bufnr == target_buf and window.winnr ~= winnr then
			-- Switch to the window with the target buffer
			vim.api.nvim_set_current_win(window.winid)

			-- Move cursor to the definition position and center it
			if target_position then
				local row = target_position.line + 1 -- Lua is 1-indexed
				local col = target_position.character
				vim.api.nvim_win_set_cursor(0, { row, col })
				vim.cmd("normal zz")
			end

			return
		end
	end

	-- If the buffer is not already open, use the default behavior and center cursor
	vim.lsp.buf.definition()
	vim.cmd("normal zz")
end

vim.cmd("command! LspDef lua OpenDefinition()")

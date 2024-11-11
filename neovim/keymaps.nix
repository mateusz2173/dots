{
  programs.nixvim.keymaps = [
      {
        mode = "n";
        key = "<space>[";
        options.silent = true;
	options.desc = "[Telescope] find files";
	options.noremap = true;
        action = "<cmd>Telescope find_files<CR>";
      }
      {
        mode = "n";
        key = "<space>]";
        options.silent = true;
	options.desc = "[Telescope] keymaps";
	options.noremap = true;
        action = "<cmd>Telescope keymaps<CR>";
      }
      {
        mode = "n";
        key = "<space>'";
        options.silent = true;
	options.desc = "[Telescope] live grep";
	options.noremap = true;
        action = "<cmd>Telescope live_grep<CR>";
      }
      {
        mode = "n";
        key = "<space>;";
        options.silent = true;
	options.desc = "[Telescope] buffers";
	options.noremap = true;
        action = "<cmd>Telescope buffers<CR>";
      }
      {
        mode = "n";
        key = "<space>.";
        options.silent = true;
	options.desc = "[Telescope] git files";
	options.noremap = true;
        action = "<cmd>Telescope git_files<CR>";
      }
      {
        mode = "n";
        key = "N";
        options.silent = true;
	options.desc = "[Oil] open float";
	options.noremap = true;
        action = "<cmd>lua require('oil').open_float()<CR>";
      }
      {
        mode = "n";
        key = "<C-d>";
        options.silent = true;
	options.desc = "Center page down";
	options.noremap = true;
        action = "<C-d>zz";
      }
      {
        mode = "n";
        key = "<C-u>";
        options.silent = true;
	options.desc = "Center page up";
	options.noremap = true;
        action = "<C-u>zz";
      }
  ];
}


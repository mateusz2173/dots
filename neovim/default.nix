{ config, pkgs, ... }:
let
nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    });
in
{
  imports = [
    nixvim.homeManagerModules.nixvim
    ./keymaps.nix
  ];

  programs.nixvim = {
    enable = true;
    colorschemes = {
      oxocarbon.enable = true;
    };
    plugins = {
      web-devicons.enable = true;
      telescope.enable = true;
      treesitter = {
	enable = true;
	settings.ensure_installed = "all";
      };
      mini = {
	enable = true;
	modules = {
	  ai = {};
	  basics = {};
	  clue = {};
	  colors = {};
	  comment = {};
	  diff = {};
	  git = {};
	  hipatterns = {};
	  icons = {};
	  pairs = {};
	};
      };
      oil = {
	enable = true;
	settings = {
	  float = {
	    padding = 2;
	    max_width = 50;
	    max_height = 20;
	    border = "rounded";
	    win_options.winblend = 0;
	  };
	};
      };
      cmp = {
	enable = true;
	settings = {
	  mapping = {
	    "<C-d>" = "cmp.mapping.scroll_docs(-4)";
	    "<C-u>" = "cmp.mapping.scroll_docs(4)";
	    "<CR>" = "cmp.mapping.confirm({ select = true })";
	    "<C-p>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
	    "<C-n>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
	  };
	  window = {
	    documentation = {
	      border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
	    };
	    completion = {
	      border = [ "┌" "─" "┐" "│" "┘" "─" "└" "│" ];
	      winhighlight = "Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None";
	      keyword_length = 1;
	    };
	  };
	  sources = [
	    {
	      name = "nvim_lsp";
	    }
	    {
	      name = "path";
	    }
	    {
	      name = "buffer";
	    }
	  ];
	  view.entries = {
	    name = "native"; 
	  };
	};
      };
      lspsaga = {
	enable = true;
	ui = {
	  title = true;
	  border = "rounded";
	};
      };
      lsp = {
	enable = true;
	servers = {
	  nil_ls.enable = true;
	  nixd.enable = true;
	};
      };
      lspkind = {
	enable = true;
	cmp = {
	  enable = true;
	  maxWidth = 120;
	};
      };
      cmp-nvim-lsp.enable = true;
      rustaceanvim.enable = true;
    };

    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
    };
  };
}

.config/nvim:
  +--autoload
  |  +--start.vim (s)
  | 
  +--init.vim (a)

(a)	Any `init.vim` file in rtp will be sourced at startup (automatically).

(s)	Any `.vim` file in the `autoload` folder within rtp **can be sourced by filename**

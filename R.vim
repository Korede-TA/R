function! R(...)
	if a:0 == 2
		execute "r ! sed -n " . a:2 . "p " . a:1
	elseif a:0 == 1
		execute "r " . a:1
	endif
endfunction

" Create Custom Command mapping to ':R'
command! -nargs=+ R :call R(<f-args>)

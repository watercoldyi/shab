if exists("g:ShAbLoaded")
	finish
end
let g:ShAbLoaded = 1

function! <SID>LuaSet()
	iab <buffer> func function name()<CR><CR>end<ESC>kki<ESC>wR
	iab <buffer> lfunc local function name()<CR><CR>end<ESC>kkI<ESC>2wR
	iab <buffer> req require "<ESC><RIGHT>i
	iab <buffer> fore for arg in func do<CR><CR>end<ESC>2kwR
	iab <buffer> while while true do<CR>end<ESC>kwR
	iab <buffer> ifa if true then<CR><CR>else<CR><CR>end<ESC>4kwR
endfunction

function! <SID>CSet()
	iab <buffer> main int main(int argc,char **args){<CR>
	iab <buffer> ifa if(1){}<CR><ESC>k3wR
endfunction

au FileType lua :call <SID>LuaSet()

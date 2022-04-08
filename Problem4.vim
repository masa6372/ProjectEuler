let s:bool = 0
let s:ans = []

function s:Is_palindrome(num1)
    let s:diff = 0
    let s:digits = []
    if s:bool == 0
        let s:n = a:num1
    endif
    let s:bool = 1
    while s:n > 0
        let s:tmp = s:n % 10
        let s:n = s:n / 10
        call add(s:digits, s:tmp)
    endwhile
    for i in range(len(s:digits))
        let s:diff = s:diff * 10
        let s:diff = s:diff + get(s:digits, i)
    endfor
    let s:bool = 0
    if s:diff == a:num1
        return 1
    else
        return 0
    endif
endfunction

for i in range(999, 100, -1)
    for j in range(999, 100, -1)
        let s:flag = s:Is_palindrome(i*j)
        if s:flag == 1
            call add(s:ans, i*j)
        endif
    endfor
endfor

echo max(s:ans)

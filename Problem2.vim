let s:tmp1 = 1
let s:tmp2 = 1
let s:sum = 0
let s:ans = 0

while s:sum < 4000000
    let s:sum = s:tmp1 + s:tmp2
    let s:tmp2 = s:tmp1
    let s:tmp1 = s:sum
    if s:sum % 2 == 0
        let s:ans = s:ans + s:sum
    endif
endwhile

echo s:ans

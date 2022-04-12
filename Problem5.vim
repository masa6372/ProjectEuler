let s:cnt= 0
let s:ans = 2520 * 11 * 13 * 17 * 19

while s:cnt != 19
    let s:ans += 11 * 13 * 17 * 19
    let s:cnt = 0
    for i in range(2, 20)
        if s:ans % i != 0 
            break
        else
            let s:cnt += 1
        endif
    endfor
endwhile
        
echo s:ans

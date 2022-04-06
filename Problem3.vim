let s:factor = []
let s:num = 600851475143

for i in range(2, float2nr(sqrt(s:num)))
    if(s:num % i == 0)
        call add(s:factor, i)
        while(s:num % i == 0)
            let s:num = s:num/i
        endwhile
    endif
endfor

echo s:factor[len(s:factor)-1]

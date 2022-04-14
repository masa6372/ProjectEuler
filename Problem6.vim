let g:num1 = 0
let g:num2 = 0
for i in range(1, 100)
    let g:num1 += i
    let g:num2 += i*i
endfor

echo g:num1*g:num1 - g:num2

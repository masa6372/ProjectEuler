let s:sum = 0
for i in range(1000)
   if i % 3 == 0
       let s:sum = s:sum + i
   elseif i % 5 == 0
       let s:sum = s:sum + i
   endif
endfor

echo s:sum

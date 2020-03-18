num = 20
ary = [num, num + 1, num + 2, num + 3, num + 4]
curr = num
for i in (1..5)
    for j in (0..4)
        if (j == (i-1)) | (j == (5-i))
            ary[j] = num
        else
            curr = curr + 1
            ary[j] = curr
        end
    end
    print ary.join('    ')
    puts ""
end
def fibs(num)
    array = []
    i = 0
    while i < num
        if i == 0
            array.push(0)
        elsif i == 1
            array.push(1)
        else
            array.push( array[i-1] + array[i-2] )
        end
        i += 1
    end
    return array
end

#[0, 1, 1, 2, 3, 5, 8, 13]
# p fibs(8)

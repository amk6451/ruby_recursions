def fibs(num)
    array = []
    i = 0
    if num == 0
        array.push(0)
        return
    elsif num == 1
        array.push(1)
        return
    else
        while i < num
            array.push( array[i-1] + array[i-2] )
        end
        i += 1
    end
    return array
end

def fibs_seq(num)
    return [0] if num == 0
    return [0,1] if num == 1

    seq = fibs_seq(num - 1)
    seq << seq[-2] + seq[-1]
    return seq
end

#[0, 1, 1, 2, 3, 5, 8, 13]
# p fibs(0)
# p fibs_seq(0)

p fibs(1)
p fibs_seq(1)

p fibs(2)
p fibs_seq(2)

p fibs(3)
p fibs_seq(3)
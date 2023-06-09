def to_hex(r, g, b)
    [r, g, b].sum('#') do |n|
        n.to_s(16).rjust(2, '0')
    end

    # hex = '#'
    # [r, g, b].each do |n|
    #     hex += n.to_s(16).rjust(2, '0')
    # end
    # hex
end

def to_ints(hex)
    hex.scan(/\w\w/).map(&:hex)

    # r, g, b = hex[1..2], hex[3..4], hex[5..6]
    # [r, g, b].map do |m|
    #     m.hex
    # end
end
pub fn eggCount(number: usize) usize {
    var sum: usize = 0;
    for (0..(@sizeOf(usize) * 8)) |idx| {
        const index: usize = @as(usize, 1) << @intCast(idx);
        if (number & index == index) sum += 1;
    }

    return sum;
}

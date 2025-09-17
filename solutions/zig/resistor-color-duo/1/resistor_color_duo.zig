pub const ColorBand = enum {
    black,
    brown,
    red,
    orange,
    yellow,
    green,
    blue,
    violet,
    grey,
    white,
};

pub fn colorCode(colors: [2]ColorBand) usize {
    var value: usize = @intFromEnum(colors[0]);
    value *= 10;
    value += @intFromEnum(colors[1]);
    return value;
}

const std = @import("std");
const mem = std.mem;

pub fn rotate(allocator: mem.Allocator, text: []const u8, shiftKey: u5) mem.Allocator.Error![]u8 {
    var buf = try allocator.alloc(u8, text.len);

    for (0..text.len) |i| {
        const chr = text[i];
        buf[i] = chr;

        if ((chr >= 'A' and 'Z' >= chr) or (chr >= 'a' and 'z' >= chr)) {
            buf[i] += shiftKey;

            if ((buf[i] > 'Z' and chr <= 'Z') or (buf[i] > 'z' and chr <= 'z')) {
                buf[i] -= 26;
            }
        }
    }

    return buf;
}

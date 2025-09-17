const std = @import("std");

pub fn convert(buffer: []u8, n: u32) []const u8 {
    var ptr: usize = 0;

    if (n % 3 == 0) {
        @memcpy(buffer[ptr .. ptr + 5], "Pling");
        ptr += 5;
    }

    if (n % 5 == 0) {
        @memcpy(buffer[ptr .. ptr + 5], "Plang");
        ptr += 5;
    }

    if (n % 7 == 0) {
        @memcpy(buffer[ptr .. ptr + 5], "Plong");
        ptr += 5;
    }

    if (ptr == 0) {
        return std.fmt.bufPrint(buffer, "{d}", .{n}) catch return "";
    }

    return buffer[0..ptr];
}

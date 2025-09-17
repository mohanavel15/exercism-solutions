const std = @import("std");

pub const DnaError = error{
    EmptyDnaStrands,
    UnequalDnaStrands,
};

pub fn compute(first: []const u8, second: []const u8) DnaError!usize {
    if (first.len == 0 or second.len == 0) {
        return DnaError.EmptyDnaStrands;
    }

    if (first.len != second.len) {
        return DnaError.UnequalDnaStrands;
    }

    var diff: usize = 0;

    for (0..first.len) |i| {
        if (first[i] != second[i]) diff += 1;
    }

    return diff;
}

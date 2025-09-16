const std = @import("std");

pub fn isArmstrongNumber(num: u128) bool {
    if (num == 0) {
        return true;
    }

    const digits = std.math.log10(num) + 1;

    var num1: u128 = num;
    var sum: u128 = 0;

    while (num1 > 0) {
        const last = num1 % 10;
        sum += std.math.pow(u128, last, digits);
        num1 /= 10;
    }

    return sum == num;
}

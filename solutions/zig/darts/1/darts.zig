const std = @import("std");
const pow = std.math.pow;

pub const Coordinate = struct {
    x: f32,
    y: f32,

    pub fn init(x_coord: f32, y_coord: f32) Coordinate {
        return Coordinate{
            .x = x_coord,
            .y = y_coord,
        };
    }

    pub fn score(self: Coordinate) usize {
        const distance = @sqrt(pow(f32, self.x, 2) + pow(f32, self.y, 2));
        if (distance > 10) return 0;
        if (distance > 5) return 1;
        if (distance > 1) return 5;
        return 10;
    }
};

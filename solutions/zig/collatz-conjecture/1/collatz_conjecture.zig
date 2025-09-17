// Please implement the `ComputationError.IllegalArgument` error.

pub const ComputationError = error{
    IllegalArgument,
};

pub fn steps(number: usize) anyerror!usize {
    if (number == 0) return ComputationError.IllegalArgument;

    var n_steps: usize = 0;
    var num: usize = number;

    while (num > 1) : (n_steps += 1) {
        if (num % 2 == 0) {
            num /= 2;
        } else {
            num *= 3;
            num += 1;
        }
    }

    return n_steps;
}

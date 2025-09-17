// Take a look at the tests, you might have to change the function arguments

pub fn binarySearch(T: type, target: T, items: []const T) ?usize {
    if (items.len == 0) {
        return null;
    }

    var lowerbound: usize = 0;
    var upperbound: usize = items.len;
    var midpoint: usize = lowerbound + ((upperbound - lowerbound) / 2);

    while (items[midpoint] != target and (upperbound != midpoint and lowerbound != midpoint)) {
        if (target < items[midpoint]) {
            upperbound = midpoint;
            midpoint = lowerbound + ((upperbound - lowerbound) / 2);
        } else if (target > items[midpoint]) {
            lowerbound = midpoint;
            midpoint = lowerbound + ((upperbound - lowerbound) / 2);
        }
    }

    if (target == items[midpoint]) {
        return midpoint;
    }

    return null;
}

export const fibonacciSequence = () => (() => {
  let prev = 0;
  let cur = 0;
  return ({
    next: () => {
      const value = prev + cur || 1;
      prev = cur;
      cur = value;
      return ({ done: false, value });
    }
  });
})();

export const testFibonacciSequence = (() => {
  const expected = [
    1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987,
    1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025,
    121393, 196418, 317811, 514229, 832040,
  ];
  const stream = fibonacciSequence();
  const actual = Array.from(new Array(expected.length)).map(x => stream.next().value);
  console.log({ expected, actual });
});

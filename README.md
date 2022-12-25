# silly_sudoku.aleo

A simple Sudoku puzzle grid in Leo.

## Usage

This is not a package yet. Add to Aleo.pm once you figure out how.

## Walkthrough

Start by defining a puzzle grid:

```bash
[[0, 4, 6],
 [3, 0, 9],
 [7, 5, 0]]
```

We treat all 0's as empty cells in the grid.

Next, generate an answer and construct it as a puzzle grid solution:

```bash
[[8, 4, 6],
 [3, 1, 9],
 [7, 5, 2]]
```

The silly_sudoku.aleo circuit will proceed to verify that the solution grid matches the starting puzzle grid, and check that each number between 1 - 9 is used exactly once.

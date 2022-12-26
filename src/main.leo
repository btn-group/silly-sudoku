// The `program` scope defines the data types, functions, and state associated with the `auction` program.

program silly_sudoku.aleo {
    struct Board {
        b1: u8,
        b2: u8,
        b3: u8,
        b4: u8,
        b5: u8,
        b6: u8,
        b7: u8,
        b8: u8,
        b9: u8,
    }

    struct Numbers {
        n1: bool,
        n2: bool,
        n3: bool,
        n4: bool,
        n5: bool,
        n6: bool,
        n7: bool,
        n8: bool,
        n9: bool,
    }

    transition main(puzzle: Board, answer: Board) -> Board {
        // An array that tracks the numbers used on the Sudoku grid.
        let numbers: Numbers = Numbers {
            n1: false,
            n2: false,
            n3: false,
            n4: false,
            n5: false,
            n6: false,
            n7: false,
            n8: false,
            n9: false,
        };
        for i:u8 in 1u8..10u8 {
            numbers = check_board_position(puzzle, answer, numbers, i);
        }

        return answer;
    }

    function check_board_position(puzzle: Board, answer: Board, numbers: Numbers, position: u8) -> Numbers {
        // unpack numbers
        let n1: bool = numbers.n1;
        let n2: bool = numbers.n2;
        let n3: bool = numbers.n3;
        let n4: bool = numbers.n4;
        let n5: bool = numbers.n5;
        let n6: bool = numbers.n6;
        let n7: bool = numbers.n7;
        let n8: bool = numbers.n8;
        let n9: bool = numbers.n9;
        let number: u8 = 0u8;

        // Check that the user has answered 
        if position == 1u8 {
                assert(answer.b1 > 0u8 && answer.b1 < 10u8);
                assert(puzzle.b1 == 0u8 || puzzle.b1 == answer.b1);
                number = answer.b1;
        } else if position == 2u8 {
                assert(answer.b2 > 0u8 && answer.b2 < 10u8);
                assert(puzzle.b2 == 0u8 || puzzle.b2 == answer.b2);
                number = answer.b2;
        } else if position == 3u8 {
                assert(answer.b3 > 0u8 && answer.b3 < 10u8);
                assert(puzzle.b3 == 0u8 || puzzle.b3 == answer.b3);
                number = answer.b3;
        } else if position == 4u8 {
                assert(answer.b4 > 0u8 && answer.b4 < 10u8);
                assert(puzzle.b4 == 0u8 || puzzle.b4 == answer.b4);
                number = answer.b4;
        } else if position == 5u8 {
                assert(answer.b5 > 0u8 && answer.b5 < 10u8);
                assert(puzzle.b5 == 0u8 || puzzle.b5 == answer.b5);
                number = answer.b5;
        } else if position == 6u8 {
                assert(answer.b6 > 0u8 && answer.b6 < 10u8);
                assert(puzzle.b6 == 0u8 || puzzle.b6 == answer.b6);
                number = answer.b6;
        } else if position == 7u8 {
                assert(answer.b7 > 0u8 && answer.b7 < 10u8);
                assert(puzzle.b7 == 0u8 || puzzle.b7 == answer.b7);
                number = answer.b7;
        } else if position == 8u8 {
                assert(answer.b8 > 0u8 && answer.b8 < 10u8);
                assert(puzzle.b8 == 0u8 || puzzle.b8 == answer.b8);
                number = answer.b8;
        } else if position == 9u8 {
                assert(answer.b9 > 0u8 && answer.b9 < 10u8);
                assert(puzzle.b9 == 0u8 || puzzle.b9 == answer.b9);
                number = answer.b9;
        }

        if number == 1u8 {
            assert_eq(n1, false);
            n1 = true;
        } else if number == 2u8 {
            assert_eq(n2, false);
            n2 = true;
        } else if number == 3u8 {
            assert_eq(n3, false);
            n3 = true;
        } else if number == 4u8 {
            assert_eq(n4, false);
            n4 = true;
        } else if number == 5u8 {
            assert_eq(n5, false);
            n5 = true;
        } else if number == 6u8 {
            assert_eq(n6, false);
            n6 = true;
        } else if number == 7u8 {
            assert_eq(n7, false);
            n7 = true;
        } else if number == 8u8 {
            assert_eq(n8, false);
            n8 = true;
        } else if number == 9u8 {
            assert_eq(n9, false);
            n9 = true;
        }

        let updated: Numbers = Numbers {
            n1: n1,
            n2: n2,
            n3: n3,
            n4: n4,
            n5: n5,
            n6: n6,
            n7: n7,
            n8: n8,
            n9: n9,
        };

        return updated;
    }
}

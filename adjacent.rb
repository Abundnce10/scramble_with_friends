# A board is represented by a string of letters, for instance, the string
# "abcdefghijklmnop" represents the board:
#
#    a b c d
#    e f g h
#    i j k l
#    m n o p
#
# The array ADJACENT lists the cell numbers that are adjacent to another
# cell.  For instance ADJACENT[3] is [2, 6, 7].  If the cells are numbered
#
#     0  1  2  3
#     4  5  6  7
#     8  9 10 11
#    12 13 14 15


ADJACENT = [
    [1, 4, 5],
    [0, 2, 4, 5, 6],
    [1, 3, 5, 6, 7],
    [2, 6, 7],
    [0, 1, 5, 8, 9],
    [0, 1, 2, 4, 6, 8, 9, 10],
    [1, 2, 3, 5, 7, 9, 10, 11],
    [2, 3, 6, 10, 11],
    [4, 5, 9, 12, 13],
    [4, 5, 6, 8, 10, 12, 13, 14],
    [5, 6, 7, 9, 11, 13, 14, 15],
    [6, 7, 10, 14, 15],
    [8, 9, 13],
    [8, 9, 10, 12, 14],
    [9, 10, 11, 13, 15],
    [10, 11, 14]
]


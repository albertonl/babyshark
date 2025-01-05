family([
    'Baby shark', 'Mommy shark', 'Daddy shark', 'Grandma shark', 'Grandpa shark',
    'Let\'s go hunt', 'Run away', 'Safe at last', 'It\'s the end'
]).

print_item(Line) :-
    print_line(Line, 3),
    format('~w!~n', [Line]).

print_line(_, _, 0).
print_line(Line, Index) :-
    Index > 0,
    format('~w, doo doo doo doo doo doo~n', [Line]),
    NextIndex is Index - 1,
    print_line(Line, NextIndex).

sing([]).
sing([Head|Tail]) :-
    print_item(Head),
    sing(Tail).

sing :-
    family(Family),
    sing(Family).

% Call sing/0 to execute.
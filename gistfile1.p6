my %circ = (
    '(' => ')',
    '[' => ']',
    '|' => '|'
);
token circumfix_operation { (<circumfix_open>) <expression> (<circumfix_close>) <?{ %circ{$0} eq $1 }> }
token circumfix_open { @(%circ.keys) }
token circumfix_close { @(%circ.values) }
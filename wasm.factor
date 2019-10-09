USING: kernel vectors math variants ;
IN: wasm

! http://webassembly.github.io/spec/core/syntax/modules.html#modules
TUPLE: module
    { types vector }
    { funcs vector }
    { tables vector }
    { mems vector }
    { globals vector }
    { elem vector }
    { data vector }
    { start fixnum }
    { imports vector }
    { exports vector }
    ;

: <module> ( -- module )
    0 <vector> ! types
    0 <vector> ! funcs
    0 <vector> ! tables
    0 <vector> ! mems
    0 <vector> ! globals
    0 <vector> ! elem
    0 <vector> ! data
    0          ! start
    0 <vector> ! imports
    0 <vector> ! exports
    module boa
    ;

TUPLE: functype
    { params vector }
    { results vector }
    ;

VARIANT: valtype
    i32
    i64
    f32
    f64
    ;

TUPLE: expr
    { instrs vector }
    ;

TUPLE: func
    { type functype }
    { locals vector }
    { body expr }
    ;


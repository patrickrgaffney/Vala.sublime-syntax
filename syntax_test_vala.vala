// SYNTAX TEST "Vala.sublime-syntax"

/////////////////////////////////////////////////////////////////////
// LINE COMMENTS
/////////////////////////////////////////////////////////////////////

    // blah blah
//  ^^ punctuation.definition.comment.vala
//  ^^^^^^^^^^^^^ comment.line.vala

/////////////////////////////////////////////////////////////////////
// BLOCK COMMENTS
/////////////////////////////////////////////////////////////////////

    /* sdfdsfsdf */
//  ^^ punctuation.definition.comment.begin.vala
//  ^^^^^^^^^^^^^^^ comment.block.vala
//               ^^ comment.block.vala punctuation.definition.comment.end.vala

    /*
//  ^^ comment.block.vala punctuation.definition.comment.begin.vala

    thing
//  ^^^^^^ comment.block.vala

    */
//  ^^ comment.block.vala punctuation.definition.comment.end.vala
//    ^ -comment -punctuation

/////////////////////////////////////////////////////////////////////
// PRIMITIVE TYPES
/////////////////////////////////////////////////////////////////////

    bool;
//  ^^^^ storage.type.vala

    char; uchar; short; ushort; int; uint; long;
//  ^^^^ storage.type.vala
//        ^^^^^ storage.type.vala
//               ^^^^^ storage.type.vala
//                      ^^^^^^ storage.type.vala
//                              ^^^ storage.type.vala
//                                   ^^^^ storage.type.vala
//                                         ^^^^ storage.type.vala

    ulong; size_t; ssize_t; int8; uint8; int16;
//  ^^^^^ storage.type.vala
//         ^^^^^^ storage.type.vala
//                 ^^^^^^^ storage.type.vala
//                          ^^^^ storage.type.vala
//                                ^^^^^ storage.type.vala
//                                       ^^^^^ storage.type.vala

    uint16; int32; uint32; int64; uint64; unichar;
//  ^^^^^^ storage.type.vala
//          ^^^^^ storage.type.vala
//                 ^^^^^^ storage.type.vala
//                         ^^^^^ storage.type.vala
//                                ^^^^^^ storage.type.vala
//                                        ^^^^^^^ storage.type.vala

    float; double;
//  ^^^^^ storage.type.vala
//         ^^^^^^ storage.type.vala

    string;
//  ^^^^^^ storage.type.vala

/////////////////////////////////////////////////////////////////////
// INTEGERS
/////////////////////////////////////////////////////////////////////

    1; 523453245345;
//  ^ constant.numeric.integer.vala
//     ^^^^^^^^^^^^ constant.numeric.integer.vala

/////////////////////////////////////////////////////////////////////
// FLOATS
/////////////////////////////////////////////////////////////////////

    1.2; 3.1446346; 55555555.334;
//  ^^^ constant.numeric.float.vala
//   ^ punctuation.separator.decimal.vala
//       ^^^^^^^^^ constant.numeric.float.vala
//        ^ punctuation.separator.decimal.vala
//                  ^^^^^^^^^^^^ constant.numeric.float.vala
//                          ^ punctuation.separator.decimal.vala

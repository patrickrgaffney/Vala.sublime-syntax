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
//               ^^ punctuation.definition.comment.end.vala

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
// LANGUAGE CONSTANTS
/////////////////////////////////////////////////////////////////////

    true; false; null;
//  ^^^^ constant.language.vala
//        ^^^^^ constant.language.vala
//               ^^^^ constant.language.vala

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

/////////////////////////////////////////////////////////////////////
// STRINGS
/////////////////////////////////////////////////////////////////////

    "string"; "s1""s2";
//  ^ punctuation.definition.string.begin.vala
//  ^^^^^^^^ string.quoted.double.vala
//         ^ punctuation.definition.string.end.vala
//            ^ punctuation.definition.string.begin.vala
//               ^ punctuation.definition.string.end.vala
//                ^ punctuation.definition.string.begin.vala
//                   ^ punctuation.definition.string.end.vala
//            ^^^^^^^^ string.quoted.double.vala

    "\n \t \f \r \t \v \" \p"
//  ^ punctuation.definition.string.begin.vala
//   ^^ constant.character.escape.vala
//      ^^ constant.character.escape.vala
//         ^^ constant.character.escape.vala
//            ^^ constant.character.escape.vala
//               ^^ constant.character.escape.vala
//                  ^^ constant.character.escape.vala
//                     ^^ constant.character.escape.vala
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.vala

    "
//  ^ string.quoted.double.vala punctuation.definition.string.begin.vala
    " 
// <- invalid.illegal.vala
 // <- invalid.illegal.vala
  // <- invalid.illegal.vala
// ^ invalid.illegal.vala
//  ^ invalid.illegal.vala punctuation.definition.string.end.vala
//   ^^ -string -invalid

    """no escapes \n, \t, \\, etc"""
//  ^^^ punctuation.definition.string.begin.vala
//                               ^^^ punctuation.definition.string.end.vala
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.triple.vala

    """
//  ^^^ string.quoted.triple.vala punctuation.definition.string.begin.vala
    over
//  ^^^^^ string.quoted.triple.vala
    multiple lines
//  ^^^^^^^^^^^^^^^ string.quoted.triple.vala
    """
//  ^^^ string.quoted.triple.vala punctuation.definition.string.end.vala

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
// DOC COMMENTS
/////////////////////////////////////////////////////////////////////

    /** basic doc comment */
//  ^^^ punctuation.definition.comment.begin.vala
//  ^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//                        ^^ punctuation.definition.comment.end.vala


    /** Include newlines<<BR>> */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//                      ^^^^^^ constant.character.escape.vala
//                             ^^ punctuation.definition.comment.end.vala

    /** ''bold'' */
//  ^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.bold.begin.vala
//      ^^^^^^^^ markup.bold.vala
//            ^^ punctuation.definition.bold.end.vala
//               ^^ punctuation.definition.comment.end.vala

    /** //italic// */
//  ^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.italic.begin.vala
//      ^^^^^^^^^^ markup.italic.vala
//              ^^ punctuation.definition.italic.end.vala
//                 ^^ punctuation.definition.comment.end.vala

    /** __underline__ */
//  ^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.underline.begin.vala
//      ^^^^^^^^^^^^^ markup.underline.vala
//                 ^^ punctuation.definition.underline.end.vala
//                    ^^ punctuation.definition.comment.end.vala

    /** ``blockquote`` */
//  ^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.blockquote.begin.vala
//      ^^^^^^^^^^^^^^ markup.quote.vala
//                  ^^ punctuation.definition.blockquote.end.vala
//                     ^^ punctuation.definition.comment.end.vala

    /** ''//__bold italic underlined__//'' */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.bold.begin.vala
//        ^^ punctuation.definition.italic.begin.vala
//          ^^ punctuation.definition.underline.begin.vala
//            ^^^^^^^^^^^^^^^^^^^^^^ markup.bold.vala markup.italic.vala markup.underline.vala
//                                  ^^ punctuation.definition.underline.end.vala
//                                    ^^ punctuation.definition.italic.end.vala
//                                      ^^ punctuation.definition.bold.end.vala
//                                         ^^ punctuation.definition.comment.end.vala


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

    1; 523453245345; -67;
//  ^ constant.numeric.integer.vala
//     ^^^^^^^^^^^^ constant.numeric.integer.vala
//                   ^ keyword.operator.arithmetic.vala
//                    ^^ constant.numeric.integer.vala

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

    "\n \t \f \r \t \v \" \p";
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
    ";
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
    """;
//  ^^^ string.quoted.triple.vala punctuation.definition.string.end.vala

/////////////////////////////////////////////////////////////////////
// OPERATORS
/////////////////////////////////////////////////////////////////////

    1 + 2; -3.4 - +5; 5++; --7;
//    ^ keyword.operator.arithmetic.vala
//         ^ keyword.operator.arithmetic.vala
//              ^ keyword.operator.arithmetic.vala
//                ^ keyword.operator.arithmetic.vala
//                     ^^ keyword.operator.arithmetic.vala
//                         ^^ keyword.operator.arithmetic.vala

    1*2; 4 / 5; 5 % 6.1;
//   ^ keyword.operator.arithmetic.vala
//         ^ keyword.operator.arithmetic.vala
//                ^ keyword.operator.arithmetic.vala

    1 != 2; 3 == 4;
//    ^^ keyword.operator.comparison.vala
//            ^^ keyword.operator.comparison.vala

    1<3; 1<=4; 1>4; 4>=1;
//   ^ keyword.operator.comparison.vala
//        ^^ keyword.operator.comparison.vala
//              ^ keyword.operator.comparison.vala
//                   ^^ keyword.operator.comparison.vala

    3 || 4; 4 && 4; !3;
//    ^^ keyword.operator.logical.vala
//            ^^ keyword.operator.logical.vala
//                  ^ keyword.operator.logical.vala

    1|1; 1^1; 1&1; ~1; 1<<1; 1>>1;
//   ^ keyword.operator.bitwise.vala
//        ^ keyword.operator.bitwise.vala
//             ^ keyword.operator.bitwise.vala
//                 ^ keyword.operator.bitwise.vala
//                      ^^ keyword.operator.bitwise.vala
//                            ^^ keyword.operator.bitwise.vala

    1 = 2; 1+=2; 1-=2; 1*=2; 1/=2; 1%=2;
//    ^ keyword.operator.assignment.vala
//          ^^ keyword.operator.assignment.vala
//                ^^ keyword.operator.assignment.vala
//                      ^^ keyword.operator.assignment.vala
//                            ^^ keyword.operator.assignment.vala
//                                  ^^ keyword.operator.assignment.vala

    1|=2; 1&=2; 1^=2; 1<<=2: 1>>=2;
//   ^^ keyword.operator.assignment.vala
//         ^^ keyword.operator.assignment.vala
//               ^^ keyword.operator.assignment.vala
//                     ^^^ keyword.operator.assignment.vala
//                            ^^^ keyword.operator.assignment.vala

    1 == 2 ? 3 : 4; 4 ?? 3;
//    ^^ keyword.operator.comparison.vala
//         ^ keyword.operator.vala
//             ^ keyword.operator.vala
//                    ^^ keyword.operator.vala

/////////////////////////////////////////////////////////////////////
// NAMESPACES
/////////////////////////////////////////////////////////////////////

/** Matches keywords and assigns meta scopes **/

    namespace Ns1 { /* c */ }
//  ^^^^^^^^^ storage.type.vala
//            ^^^ entity.name.namespace.vala
//  ^^^^^^^^^^^^^^ meta.namespace.vala
//                ^ punctuation.section.block.begin.vala
//                  ^^ punctuation.definition.comment.begin.vala
//                  ^^^^^^^ comment.block.vala
//                       ^^ punctuation.definition.comment.end.vala
//                          ^ punctuation.section.block.end.vala
//                ^^^^^^^^^^^ meta.namespace.vala meta.block.vala

/** Allows nesting namespaces **/

    namespace Ns1 {
//  ^^^^^^^^^ storage.type.vala
//            ^^^ entity.name.namespace.vala
//                ^ meta.block.vala punctuation.section.block.begin.vala
//  ^^^^^^^^^^^^^^^^ meta.namespace.vala
        namespace Ns2 { /* c */ }
//      ^^^^^^^^^ storage.type.vala
//                ^^^ entity.name.namespace.vala
//      ^^^^^^^^^^^^^^ meta.namespace.vala meta.block.vala meta.namespace.vala
//                    ^ punctuation.section.block.begin.vala
//                      ^^ punctuation.definition.comment.begin.vala
//                      ^^^^^^^ comment.block.vala
//                           ^^ punctuation.definition.comment.end.vala
//                              ^ punctuation.section.block.end.vala
//                    ^^^^^^^^^^^ meta.namespace.vala meta.block.vala meta.namespace.vala meta.block.vala
    }
//  ^ meta.namespace.vala meta.block.vala punctuation.section.block.end.vala
//   ^ -meta

/** Allows subclass syntax instead of nesting blocks **/

    namespace Ns1.Ns2 { /* c */ }
//  ^^^^^^^^^ storage.type.vala
//            ^^^ entity.name.namespace.vala
//               ^ punctuation.separator.vala
//                ^^^ entity.name.namespace.vala 
//  ^^^^^^^^^^^^^^^^^^ meta.namespace.vala
//                    ^ punctuation.section.block.begin.vala
//                      ^^ punctuation.definition.comment.begin.vala
//                           ^^ punctuation.definition.comment.end.vala
//                              ^ punctuation.section.block.end.vala
//                    ^^^^^^^^^^^ meta.namespace.vala meta.block.vala 

/** Allows field declarations */

    namespace ns1 {
        string s = "string";
//      ^^^^^^ storage.type.vala
//             ^ variable.other.readwrite.vala
//               ^ keyword.operator.assignment.vala
//                 ^^^^^^^^ string.quoted.double.vala
//                         ^ punctuation.terminator.vala
// ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.vala meta.block.vala
        public int ns_int = 4;
//      ^^^^^^ storage.modifier.vala
//             ^^^ storage.type.vala
//                 ^^^^^^ variable.other.readwrite.vala
//                        ^ keyword.operator.assignment.vala
//                          ^ constant.numeric.integer.vala
//                           ^ punctuation.terminator.vala
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.vala meta.block.vala
        private char c = "c";
//      ^^^^^^^ storage.modifier.vala
//              ^^^^ storage.type.vala
//                   ^ variable.other.readwrite.vala
//                     ^ keyword.operator.assignment.vala
//                       ^^^string.quoted.double.vala
//                          ^ punctuation.terminator.vala
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.vala meta.block.vala
    }
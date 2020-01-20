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

    /** ''force <<BR>>newline'' */
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.bold.begin.vala
//      ^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala markup.bold.vala
//              ^^^^^^ comment.block.documentation.vala markup.bold.vala constant.character.escape.vala
//                           ^^ punctuation.definition.bold.end.vala
//                              ^^  punctuation.definition.comment.end.vala

    /** inline {@link thing} */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//             ^ punctuation.section.braces.begin.vala
//              ^^^^^ storage.type.vala
//                    ^^^^^ entity.name.section.vala
//                         ^ punctuation.section.braces.end.vala
//                           ^^ punctuation.definition.comment.end.vala

    /** {@inheritDoc} */
//  ^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^ punctuation.section.braces.begin.vala
//       ^^^^^^^^^^^ storage.type.vala
//                  ^ punctuation.section.braces.end.vala
//                    ^^ punctuation.definition.comment.end.vala

    /**
     * ordered and unordered lists
     *
     *  1. numbered list
//      ^^ markup.list.numbered.vala
     *
     *  # numbered list
//      ^ markup.list.numbered.vala
     *
     *  i. numbered list
//      ^^ markup.list.numbered.vala
     *
     *  I. numbered list
//      ^^ markup.list.numbered.vala
     *
     *  a. alphabetical list
//      ^^ markup.list.numbered.vala
     *
     *  A. alphabetical list
//      ^^ markup.list.numbered.vala
     *
     *  * doted list
//      ^ markup.list.unnumbered.vala
     *
     *  A. alphabetical list
//      ^^ markup.list.numbered.vala
     *    a. alphabetical list
//        ^^ markup.list.numbered.vala
     */

    /**
     * Code blocks
     *
     * {{{
//     ^^^ punctuation.section.braces.begin.vala
     *   static int main (string[] arg) {
     *      return 0;
     *   }
     * }}}
//     ^^^ punctuation.section.braces.end.vala
     *
     */

    /** [[http://google.at|google]] */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.section.brackets.begin.vala
//                        ^ punctuation.separator.vala
//                               ^^ punctuation.section.brackets.end.vala
//                                  ^^ punctuation.definition.comment.end.vala

    /** [[http://google.at]] */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.section.brackets.begin.vala
//                        ^^ punctuation.section.brackets.end.vala
//                           ^^ punctuation.definition.comment.end.vala

    /** {{/images/favicon.png}} */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.section.brackets.begin.vala
//                           ^^ punctuation.section.brackets.end.vala
//                              ^^ punctuation.definition.comment.end.vala


    /** {{/images/favicon.png|alt-message}} */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.section.brackets.begin.vala
//                           ^ punctuation.separator.vala
//                                       ^^ punctuation.section.brackets.end.vala
//                                          ^^ punctuation.definition.comment.end.vala

    /**
     * Short description
     *
     * || ''headline'' || ''headline'' ||
//     ^^ punctuation.separator.vala
//        ^^^^^^^^^^^^ markup.bold.vala
//        ^^ punctuation.definition.bold.begin.vala
//                  ^^ punctuation.definition.bold.end.vala
//                     ^^ punctuation.separator.vala
//                        ^^^^^^^^^^^^ markup.bold.vala
//                        ^^ punctuation.definition.bold.begin.vala
//                                  ^^ punctuation.definition.bold.end.vala
//                                     ^^ punctuation.separator.vala
     * || one cell || one cell ||
//     ^^ punctuation.separator.vala
//                 ^^ punctuation.separator.vala
//                             ^^ punctuation.separator.vala
     *
     */

    /**
    * = headline 1 =
//    ^ punctuation.definition.heading.vala
//      ^^^^^^^^^^^ markup.heading.vala
//                 ^ punctuation.definition.heading.vala
    * == healdline 2 ==
//    ^^ punctuation.definition.heading.vala
//       ^^^^^^^^^^^^ markup.heading.vala
//                   ^^ punctuation.definition.heading.vala
    * === healdline 3 ===
//    ^^^ punctuation.definition.heading.vala
//        ^^^^^^^^^^^^ comment.block.documentation.vala markup.heading.vala
//                    ^^^ punctuation.definition.heading.vala
    * ==== healdline 4 ====
//    ^^^^ punctuation.definition.heading.vala
//         ^^^^^^^^^^^^ markup.heading.vala
//                     ^^^^ punctuation.definition.heading.vala
    */

    /** @deprecated v1.0.0 */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^^^^^^^^ storage.type.vala
//                         ^^ punctuation.definition.comment.end.vala

    /** @see other_section */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^ storage.type.vala
//           ^^^^^^^^^^^^^ entity.name.section.vala
//                         ^^ punctuation.definition.comment.end.vala

    /** @param name description */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^^^ storage.type.vala
//             ^^^^ variable.parameter.vala
//                              ^^ punctuation.definition.comment.end.vala

    /** @since v1.1.1 */
//  ^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^^^ storage.type.vala
//                    ^^ punctuation.definition.comment.end.vala

    /** @return description */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^^^^ storage.type.vala
//                          ^^ punctuation.definition.comment.end.vala

    /** @throws type description */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^^^^ storage.type.vala
//              ^^^^ entity.name.type.vala
//                               ^^ punctuation.definition.comment.end.vala

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

    global::thing;
//  ^^^^^^^^ keyword.operator.word.vala

/////////////////////////////////////////////////////////////////////
// NAMESPACES
/////////////////////////////////////////////////////////////////////

/** Matches keywords and assigns meta scopes **/

    namespace Ns1 { /* c */ }
//  ^^^^^^^^^ storage.type.vala
//            ^^^ entity.name.namespace.vala
//  ^^^^^^^^^^^^^^ meta.namespace.vala
//                ^ punctuation.section.block.begin.vala
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
//                    ^^^^^^^^^^^ meta.namespace.vala meta.block.vala 

/** Allows field declarations */

    namespace ns1 {
        string s = "string";
//      ^^^^^^ storage.type.vala
//             ^ variable.other.readwrite.vala
//               ^ keyword.operator.assignment.vala
//                 ^^^^^^^^ string.quoted.double.vala
//                         ^ punctuation.terminator.vala

        my_string a = "g";
//      ^^^^^^^^^ support.type.vala
//                ^ variable.other.readwrite.vala
//                  ^ keyword.operator.assignment.vala
//                    ^^^ string.quoted.double.vala
//                       ^ punctuation.terminator.vala

        public int ns_int;
//      ^^^^^^ storage.modifier.vala
//             ^^^ storage.type.vala
//                 ^^^^^^ variable.other.readwrite.vala
//                       ^ punctuation.terminator.vala

        private char c;
//      ^^^^^^^ storage.modifier.vala
//              ^^^^ storage.type.vala
//                   ^ variable.other.readwrite.vala
//                    ^ punctuation.terminator.vala

        string s2 = global::other_string;
//      ^^^^^^ storage.type.vala
//             ^^ variable.other.readwrite.vala
//                ^ keyword.operator.assignment.vala
//                  ^^^^^^^^ keyword.operator.word.vala
//                          ^^^^^^^^^^^^ variable.other.readwrite.vala
//                                      ^ punctuation.terminator.vala
        const string s = 3;
//      ^^^^^ storage.modifier.vala
//            ^^^^^^ storage.type.vala
//                   ^ variable.other.readwrite.vala
//                     ^ keyword.operator.assignment.vala
//                       ^ constant.numeric.integer.vala
//                        ^ punctuation.terminator.vala

        public const Scratch.Widgets.HeaderBar s = 3;
//      ^^^^^^ storage.modifier.vala
//             ^^^^^ storage.modifier.vala
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^ support.type.vala
//                                             ^ variable.other.readwrite.vala
//                                               ^ keyword.operator.assignment.vala
//                                                 ^ constant.numeric.integer.vala
//                                                  ^ punctuation.terminator.vala
    }

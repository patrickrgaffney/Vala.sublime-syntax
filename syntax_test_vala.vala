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


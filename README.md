
# Lean Prover UI built on the Lurch Web Platform

## Introduction

This is an example application built on the
[Lurch Web Platform](https://github.com/lurchmath/lurch),
to show developers how to use that platform.  It assumes you've already
seen and understood the simpler examples,
[one](https://github.com/lurchmath/lwp-example-simple),
[two](https://github.com/lurchmath/lwp-example-complex), and
[three](https://github.com/lurchmath/lwp-example-math).

For those unfamiliar with Lean, see its website
[here](https://leanprover.github.io/).

## How to use the app

[Visit the app here.](https://lurchmath.github.io/lwp-example-lean)

[See the full tutorial here.](https://lurchmath.github.io/lwp-example-lean/site)

Read the (heavily commented) code here:

 * [App code](lwp-example-lean.litcoffee) for this specific example
 * [HTML code](index.html) that loads the platform and application

## A very abridged tutorial

Create a term:

 * In a new document, type a single natural number, such as 123.
 * Highlight that natural number and click the black `[ ]` button on the
   toolbar to make it a term.

Create a type:

 * Outside that new group, on the same line, type the Lean expression that
   means "natural number," which is the word `nat`.
 * Highlight that word and click the green `[ ]` button on the toolbar to
   make it a type.

Connect the two:

 * While your cursor is inside the green group, click the arrow button on
   the toolbar (to the right of the three bracket buttons).
 * Next, click inside the black group containing the natural number.
 * You should see an arrow connecting them, indicating that you claim the
   type "nat" applies to the number.

Giving Lean a command:

 * To have lean check what you've done, you must instruct it that "checking"
   is what you're looking for.
 * Place your cursor inside the black group containing the natural number.
 * Right-click the natural number and choose "Edit command..." from the
   popup menu.
 * Type the word `check` (lower case, no spaces) in the blank and press
   Enter.

Running Lean:

 * Click the Run Lean button on the toolbar and wait a few seconds for Lean
   to load and execute.
 * You should see green check marks next to both of your groups in the
   document, indicating that Lean agrees with you: 123 is a natural number.

## Bug fixes and/or enhancements

Here are the planned to-dos for this demo application.

### Bugs

 * The `termGroupToCode` function uses `contentsAsText`, which ignores
   paragraph breaks, as if they were not whitespace; this is problematic.
   Use `contentAsCode` instead, which respects paragraph breaks.

### Enhancements

 * How might we work Lean's `notation` definitions in with MathQuill
   widgets in the document?

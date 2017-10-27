
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

There is an extensive tutorial on how to use this application, but it is in
the process of getting migrated to this new repository.  For that reason, we
content ourselves with a very tiny demo of how you can talk to Lean through
this app.  Full tutorial to be imported in the future.

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
 * Click the bubble tag that appears, and choose "Edit command" from the
   popup menu.
 * Type the word `check` (lower case, no spaces) in the blank and press
   Enter.

Running Lean:

 * Click the Run Lean button on the toolbar and wait a few seconds for Lean
   to load and execute.
 * You should see green check marks next to both of your groups in the
   document, indicating that Lean agrees with you: 123 is a natural number.

A full tutorial will be imported here later.

Read the (heavily commented) code here:

 * [App code](lwp-example-lean.litcoffee) for this specific example
 * [HTML code](index.html) that loads the platform and application

There is also a very simple [build process](gulpfile.litcoffee).

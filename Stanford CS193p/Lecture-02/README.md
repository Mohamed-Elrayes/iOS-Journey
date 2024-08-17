# Stanford | CS193p - Developing Apps for iOS

## Lecture 2: More SwiftUI

## Summary

Development on Memorize continues. Creating custom Views. Handling a tap gesture. Adding buttons. Factoring shared code.

## Assignment

## Objective

The goal of this assignment is to recreate the demonstration given in the first two lectures and then make some small enhancements. It is important that you understand what you are doing with each step of recreating the demo from the lecture so that you are prepared to do those enhancements. Mostly this is about experiencing the creation of a project in Xcode and typing code in from scratch. **Do not copy/paste any of the code from anywhere.** Type it in and watch what Xcode does as you do so.

Be sure to review the Hints section below!

Also, check out the Evaluation section to make sure you understand what you are going to be evaluated on with this assignment.

## Due

This assignment is due before lecture 3.

## Materials

- Install Xcode 14 using the App Store on your Mac (previous versions of Xcode will not work).
- Watch the first two lectures to recreate the demo.
- Optionally, download the SF Symbols application from [Apple Developer](https://developer.apple.com/sf-symbols).

## Required Tasks

1. Get the Memorize game working as demonstrated in lectures 1 and 2. Type in all the code. Do not copy/paste from anywhere.
2. Optionally remove the ⊖ and ⊕ buttons at the bottom of the screen and all the code that supports it.
3. Add a title "Memorize!" to the top of the screen in a large font.
4. Add at least 3 "theme choosing" buttons to your UI, each of which replaces all the cards' emojis with new emojis from the chosen theme.
5. Ensure the face-up or face-down state of the cards does not change when the user changes the theme.
6. Each of your 3 themes should have a different number of pairs of cards, but no fewer than 4 pairs.
7. The cards should be shuffled each time a theme button is chosen.
8. The theme-choosing buttons must include an image representing the theme and text describing the theme, stacked vertically.
9. The image portion of each theme-choosing button must be created using an SF Symbol that evokes the theme.
10. The text description of the theme-choosing buttons must use a noticeably smaller font than the font for the emoji on the cards.
11. Change the code so that cards appear face down by default rather than face up.
12. Your UI should work in portrait or landscape on any iPhone and look good in light mode and dark mode.

## Hints

1. We are only prototyping the components of our UI this week. We’ll implement our actual game play next week.
2. It’s fine if your application starts blank until the user chooses one of your theme buttons.
3. Make `emojis` in your `ContentView` a `@State` var since you’re going to be changing its contents as you choose themes.
4. You will not need the `cardCount` var anymore, and you will have to fix up the `ForEach`.
5. You can combine two arrays with a `+` sign, e.g., `let combinedArray = array1 + array2`.
6. Variables in your `View` cannot be initialized using the values of other variables in your `View`.
7. Shuffling the cards might be easier than you think; familiarize yourself with the documentation for `Array`.
8. You are not expected to use any aspect of Swift/SwiftUI that was not shown in lecture.
9. Avoid repeating code by creating the `cardCountAdjuster` function, or use a computed var.
10. Avoid choosing function parameter names that are exactly the same as the name of a variable in your `View`.
11. The size of an SF Symbol Image is affected by `.font()` and `.imageScale()` modifiers.
12. Align the baselines of the Text part of your theme-chooser buttons.

## Things to Learn

1. Xcode 14
2. Swift 5.8
3. Writing code in the in-line function that supplies the value of a View’s `body` var
4. Syntax for passing closures as arguments
5. Understanding the syntax of a `ViewBuilder` function
6. Using basic building block Views like `Text`, `Button`, `Spacer`, etc.
7. Putting Views together using `VStack`, `HStack`, etc.
8. Modifying Views using `.font()`, etc.
9. Using `@State`
10. Simple use of `Array`
11. The SF Symbols application
12. Putting system images into your UI using `Image(systemName:)`
13. Looking things up in the documentation (e.g., `Array`, `Font`)
14. `Int.random(in:)` (Extra Credit)

## Evaluation

Common reasons assignments are marked down:

- Project does not build.
- One or more Required Tasks were not satisfied.
- A fundamental concept was not understood.
- Project builds with warnings.
- Code is visually sloppy and hard to read.
- Code is difficult to understand due to lack of comments, poor naming, poor structure, etc.

**Commenting**: Your code must be easily and completely understandable by anyone reading it. Assume the reader knows the SwiftUI API and the Memorize game code from lectures 1 and 2 but does not know your solution to the assignment.

## Extra Credit (Optional)

1. Associate a Color with each theme (e.g., .orange for Halloween, .blue for Water).
2. Make a random number of pairs of cards appear each time a theme button is chosen.
3. Create an equation that relates the number of cards in the game to the width passed when creating your `LazyVGrid`’s `GridItem(.adaptive(minimum:maximum:))`.

---

CS193P iOS Application Development Spring 2023

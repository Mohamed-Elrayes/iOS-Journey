## Assignment

### Required Tasks

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

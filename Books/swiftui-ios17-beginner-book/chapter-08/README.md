# Beginning iOS Programming with Swift and SwiftUI

## Chapter 8: Enhancing User Interactions with Alerts and Favorites

<img width="1174" alt="image" src="https://github.com/user-attachments/assets/2874da15-b6b5-457e-83c9-3fcd01ea8b3e">

## Summary
Chapter 8 explores improving user interactions in a SwiftUI app through alerts and favorites functionality. It explains how to use the `.alert` modifier for notifications about unavailable features and how to manage a list of favorites with state management. Additionally, it covers previewing different row layouts.

## Key Highlights
- **Displaying Alerts:** 
  - Utilized `.alert` to inform users when a feature is not available.
  - Controlled alert visibility with a `@State` variable.

- **Mark as Favorite Feature:**
  - Implemented a Boolean array to track favorite items.
  - Used `@Binding` to synchronize favorite status between views.
  - Added a heart icon to indicate favorite items.

- **State Management:**
  - Managed dynamic state updates using `@State` and `@Binding`.

- **Previewing Layouts:**
  - Previewed row layouts using `#Preview` with the `.sizeThatFitsLayout` trait.

## Exercise #1
Update the `FullImageRow` layout to support the "Mark as Favorite" feature. Ensure consistent functionality with `BasicTextImageRow`.

<img width="899" alt="image" src="https://github.com/user-attachments/assets/43952d3f-efce-404d-8efd-72b88a92c144">

## Exercise #2
Implement the ability to toggle the heart icon for favorite items. Modify the button title based on whether the item is a favorite or not.

<img width="530" alt="image" src="https://github.com/user-attachments/assets/5ab26976-8b63-4b99-ab6e-0f8dc07bcc0a">

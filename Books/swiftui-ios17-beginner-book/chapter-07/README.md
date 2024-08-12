# Beginning iOS Programming with Swift and SwiftUI

## Chapter 7: Customizing List Views

<img width="1308" alt="image" src="https://github.com/user-attachments/assets/f4d5d632-2152-4934-bd3f-8be1150df9c8">

In Chapter 7, we began building the **FoodPin** app by customizing a basic list view to create a more stylish and functional interface for displaying a list of restaurants. Below are the key highlights:

### Key Highlights

1. **Xcode Project Setup:**

   - Created a new project named `FoodPin`.
   - Renamed `ContentView.swift` to `RestaurantListView.swift`.
   - Set the deployment target to iOS 16.0.

2. **Displaying Restaurant Names:**

   - Introduced an array `restaurantNames` to hold restaurant names.
   - Used a `List` and `ForEach` loop to display the restaurant names in a list view.

3. **Adding Restaurant Images:**

   - Added an array `restaurantImages` to store image filenames.
   - Updated the list to display each restaurant's name alongside its corresponding image using `HStack`.

4. **Redesigning the Row Layout:**

   - Enhanced the layout by making the restaurant images larger, rounding the corners, and adding more information (e.g., location and type).
   - Used `HStack` and `VStack` for layout management, aligning text and images for a polished look.

5. **Dark Mode Support:**

   - Tested the app's interface in Dark Mode using SwiftUI's preview and Xcode's simulator options to ensure it looks great in both light and dark themes.

6. **Exercises:**
   - Updated the list view to show specific restaurant types and locations.
   - Redesigned the row layout for an enhanced visual presentation.

### Summary

This chapter emphasizes the importance of mastering the `List` view, a foundational element in many iOS apps. By customizing the list and experimenting with SwiftUI's layout tools, you gain the skills needed to build more sophisticated and visually appealing interfaces.

## Exercise #1

the app displays "Location" and "Type" for all rows. As an exercise, I will leave it up to you to resolve this issue. You can edit the source code to update the location and type labels. Below are the two arrays you need for this task

## Exercise #2

The previous exercise may be too easy for you. Here is another challenge. Try to redesign the row layout and see if you can create an app like this.

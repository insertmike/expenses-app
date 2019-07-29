# Expenses App - Flutter

- Simple Cross-Platform application written in Dart using the Flutter framework
- The app is built for learning purposes 
## Features
- Adaptive (  *Screen Orientation* , *Device Platform Specific*  )
- Responsive ( *Screen Size* )
 
 ## Project Overview
- ### Overall Approach
   - The app is split into multiple widgets for better performance and maintainability.
   - There is Default Visual Properties set ( *Theme Data* ) to control the look globally.
   
- ### Adding expense  
   - Simple and straitforward design
   - Used the *material package* provided Date Picker
   
   ![adding_expense](https://user-images.githubusercontent.com/45242072/62085833-37da3880-b265-11e9-92e2-41e4e5770be9.gif)

- ### Removing expense
   - With the help of the flutter's *Media Query class* an Icon label is rendered conditionally depending on the device screen size.
   
   ![removing_expenses](https://user-images.githubusercontent.com/45242072/62086769-1890da80-b268-11e9-8ff7-1e205d71c051.gif)
   
- ### Adaptivness
   - With the help of the flutter's *Orientation* class an alternative landscape content is rendered when the device is in landscape mode.
   
   ![responsive](https://user-images.githubusercontent.com/45242072/62087034-ec298e00-b268-11e9-94ad-ce65b843637a.gif)


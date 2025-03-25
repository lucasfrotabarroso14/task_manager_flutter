# Task Hub

### Video Demo:
https://share.vidyard.com/watch/MgHyEz8xbvFWcYHxNKjMF6

---

### Description:

**Task Hub** is a mobile task management application developed using **Flutter**. It allows users to efficiently organize their tasks by adding them with a difficulty level and a status, and then tracking overall progress through a visual dashboard.

Each task includes:
- A name (up to 50 characters)
- A difficulty level: **Easy**, **Medium**, or **Hard**
- A status: **Queued**, **Doing**, **Reviewing**, or **Completed**

The main screen (**Dashboard**) shows:
- Colorful tiles indicating how many tasks are in each status
- A circular chart giving a visual breakdown of task distribution

On the **Tasks** screen, users can view a list of all tasks, each labeled with its current status and difficulty level. New tasks can be added by tapping the floating "+" button, where users select the difficulty and status from dropdown menus. The task is also saved with the current date.

The interface is clean, intuitive, and mobile-friendly, using Flutter widgets like `Card`, `Chip`, `DropdownButton`, and a third-party `Pie Chart` to create an organized and visually appealing layout.

---

**Design and Motivation**

The motivation behind Task Hub came from a personal need to visualize tasks in a more intuitive way. Most to-do list apps are text-heavy or cluttered. Task Hub takes a different approach by using color-coded tiles and charts to display information clearly and quickly. It was designed to be simple to use, but still powerful enough to give users a good overview of what they need to work on.

The visual nature of the dashboard provides an at-a-glance summary of how tasks are progressing. Seeing too many tasks in the “Queued” or “Doing” sections serves as a reminder that work needs to be completed. The pie chart visualization makes the progress even more obvious and engaging.

---

**Development Process**

The project was developed entirely in Flutter due to its cross-platform capabilities, fast development cycle, and expressive UI toolkit. I structured the app using the default folder conventions and modularized the screens and widgets to keep the code clean and maintainable.

During development, I focused on making the interface responsive and easy to interact with. The task creation screen uses dropdowns for selecting both difficulty and status, which helps avoid input errors and keeps the flow smooth. Buttons like "Save" and "Reset" were styled to align with the app's soft color palette, making them both accessible and visually pleasant.

---

**Challenges and Learnings**

Some of the challenges I faced included managing the task state across different screens and integrating the chart widget to display dynamic data based on user input. I initially considered using a state management package like Provider or Riverpod, but for the current project scope, I managed the state locally using `setState`, which proved sufficient.

Another challenge was creating the pie chart to reflect real-time task data. It took some experimentation to configure the chart layout and data mapping correctly. Through this, I gained a deeper understanding of Flutter packages and widget composition.

---

**Future Improvements**

If I had more time, I would add the ability to:
- Edit or delete tasks
- Persist data locally using SQLite or Hive
- Sync data to the cloud (e.g., Firebase)
- Add user authentication and user-specific task lists
- Add notifications for upcoming tasks or due dates
- Implement drag-and-drop to change task status visually

These features would make Task Hub a more powerful productivity tool while preserving the simplicity that makes it appealing.

---

### How to Run the Project:

1. Ensure you have the **Flutter SDK** installed.  
   👉 [Flutter installation guide](https://docs.flutter.dev/get-started/install)

2. Clone the repository:

```bash
git clone https://github.com/your-username/task_hub_flutter.git

```
3. Navigate into the project folder:

```bash
cd task_hub_flutter

```

4. Get the dependencies:

```bash
flutter pub get


```

4. Run the app

```bash
flutter run


```
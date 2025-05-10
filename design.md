# Kanbash

- should manage tasks in a column based kanban board
    - tasks have a title and a body
    - optionally front-matter (do I need this to start?)
    - columns: todo, doing, done
    - also: archive tasks
- prints out board, then asks for action
    - every task has an ID?
    - action interface: `task ls`, `task todo`, `task doing <id>`, `task done <id>`, `task archive <id>`
- should store markdown files in a directory
    - dir path should be able to set via env variable
    - all files are stored next to each other
    - columns are handles by filename prefixes, like so
        - `1-todo-01-do-laundry.md`
        - `2-doing-01-write-todo-app.md`
        - `3-done-01-take-shower.md`
    - when moving files
        - inside column: user defines current and target location, current is moved to temp, all between are moved one towards current, temp is moved to target
        - between columns: current is moved to temp, following tasks in old file are moved one up, all in new column are moved one down, temp is moved to top of new

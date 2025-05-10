# Kanbash

- should manage tasks in a column based kanban board
    - tasks have a title and a body
    - board only shows title
    - columns: todo, doing, done
    - also: archive tasks
- `ls` command to print out board
- `new` command to create new task in todo column
- `mv` command to move task up or down in column, or left or right to new column
- markdown files are stored like this:
    - all next to each other in the same directory
    - columns are handled by filename prefixes, like so
        - `1-todo-01-do-laundry.md`
        - `2-doin-01-write-todo-app.md`
        - `3-done-01-take-shower.md`
    - ID (3rd field in name) is updated on every file movement

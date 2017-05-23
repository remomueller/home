## 1.0.0

### Enhancements
- **Box Changes**
  - Boxes can now be described, opened, and closed
- **Item Changes**
  - Items can now be created on a spreadsheet
    - `box`: The current box they are in
    - `name`: The name of the item
    - `location`: The place where the item should end up (kitchen, bedroom, etc)
    - `description`: Additional text to help find the item when searching for item
  - Updated cells in spreadsheet now indicate if they were saved successfully or
    not
- **Gem Changes**
  - Updated to rails 5.1.1
  - Updated to haml 5.0.1
  - Updated to kaminari 1.0.1

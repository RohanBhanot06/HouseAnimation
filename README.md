# House Animation (Processing)

This project is a **2D animated scene** built in **Processing**, starting from a static house drawing and adding multiple moving elements:

- A car driving across the road
- A blimp flying across the sky with text
- Falling apples around the tree
- Chimney smoke rising from the house

Created as an ICS2O1 assignment.

---

## Animation Overview

The sketch runs in an infinite loop using `draw()`, and animates several independent objects over a static background.

### Static Background Elements (drawn every frame)

These are objects that do **not move**, but are redrawn every frame:

- **Sky** (light blue background)
- **Sun** at the top-right corner
- **Grass** at the bottom
- **Driveway** leading to the house
- **Clouds** across the sky
- **House**:
  - Main rectangular body
  - Roof (triangle)
  - Chimney
  - Door and doorknob
  - Left and right windows
- **Tree**:
  - Trunk
  - Leaf canopy with layered ellipses and alpha transparency
- **Road** at the very bottom
- **“Stable apples”** on the tree (fixed decorative apples that don’t move)

All of these are drawn using Processing primitives like `rect()`, `ellipse()`, `triangle()`, and `quad()` with various colors and transparency (`alpha`) settings.

---

## Moving Objects

The fun part of the sketch comes from **animated elements** that change their position over time using global variables.

### 1. Car (Moving Along the Road)

**Variables:**
- `float x` – horizontal position of the car (starts at `0`).

**Logic:**

- On each frame:  
  ```java
  x = x + 2;

# Humanoid_Creation

This MATLAB script generates a 3D animation of a human body using basic geometric shapes to represent body parts. The animation demonstrates rotations of the body parts at various joints, providing a visual representation of human movement.

## Overview

The script creates a 3D model of the human body with the following body parts:
- Head
- Shoulders
- Elbows
- Hands
- Hips
- Knees
- Feet

Each body part is represented by a geometric shape (e.g., sphere for head, cylinder for limbs) and connected to adjacent parts by lines representing joints.

## Usage

1. Ensure you have MATLAB installed on your system.
2. Run the script in MATLAB.
3. The animation will be displayed in a 3D plot window.

## Functionality

- **Body Parts Generation**: Geometric shapes are used to represent different body parts, positioned relative to each other to form a human-like figure.
- **Joint Rotation**: Body parts can be rotated at various joints (e.g., shoulders, elbows, knees) to simulate movement.
- **Animation**: The script animates the rotations of body parts over time, providing a dynamic representation of human motion.

## Dependencies

This script requires MATLAB with the Image Processing Toolbox for 3D visualization and animation capabilities.

## Example

```matlab
% Copy and paste the provided code into a MATLAB script file
% Run the script to generate the 3D human body animation
animate_human_body;
```

## Acknowledgements
This implementation is part of the Assignment for the course EE5611:Computer Graphics.

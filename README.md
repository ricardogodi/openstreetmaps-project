# Project Overview (Access to Full Repository Available Upon Request)

## Description
This project focuses on the backend operations of a navigation system, similar to popular navigation apps, but tailored to navigating between UIC buildings on the East campus using footpaths. Although this implementation does not include graphical display capabilities, it effectively handles map loading, graph construction, and computation of the shortest weighted paths between two points.

## Source Maps
The maps used are open-source, sourced from [OpenStreetMap](https://www.openstreetmap.org/). Specifically, we focus on UIC’s East campus. Nodes represent points on the map, such as building corners or path junctions, while Ways represent paths like footways between nodes.

## Graph Data Structure

The `graph.h` header defines a graph class using an adjacency list instead of an adjacency matrix, improving performance for sparse graphs. This implementation allows dynamic addition of vertices and edges and provides quick lookup for neighbors and edge weights, suitable for efficient map navigation.

## Application Implementation
The application, defined in `application.cpp`, leverages the redesigned `graph.h` to simulate navigation between designated points on UIC’s East campus. Users can input two starting locations and the application will compute the optimal meeting point using Dijkstra’s algorithm to determine the shortest paths.

### Steps Performed by the Application
1. Load the campus map data.
2. Parse nodes and footways to establish the graph structure.
3. Allow user inputs for starting locations and compute the optimal meeting point.
4. Calculate and display the shortest paths to the meeting point.

## Usage
The application runs in a console environment. Users start by specifying a map filename(`uic.osm` is suggested), with `map.osm` as the default if no file is entered. After loading the map, the program displays operational statistics including the number of nodes, footways, and buildings processed. Users then choose between the standard navigation feature (`a`) or a creative component (`c`). Following the selection, the application performs the chosen navigation tasks and concludes with a completion message.

## Compilation

To build and run the application, follow the instructions provided by the makefile:

- Compile the Application**: Execute `make all` or simply `make` to build the application. This command compiles all necessary source files to create the executable.
- Run the Application**: Once compiled, launch the application by entering `./application` in the terminal.
- Clean the Build**: To remove all compiled files and clean your build environment, use the command `make clean`. This will delete all object files and the executable, preparing for a fresh compilation.

## Code Availability

Due to copyright restrictions, the complete source code is not included in this public repository. However, if you are interested in reviewing the full code, I can provide access to the entire private repository. Please contact me directly, and I will be happy to grant you permission to read the repository.


## Contributions
The contributions to this project are specific to `application.cpp` for the application logic and `graph.h` for the data structure used to manage the navigation graph.

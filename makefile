# Variables
CXX = g++
CXXFLAGS = -Wall -std=c++11
LDFLAGS = 

# List of sources 
SOURCES = application.cpp dist.cpp osm.cpp tinyxml2.cpp
HEADERS = dist.h graph.h osm.h tinyxml2.h

# Default target
all: application

# Application binary
application: application.o dist.o osm.o tinyxml2.o
	$(CXX) $(LDFLAGS) -o $@ $^

# Object files
%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up
clean:
	rm -f *.o application

# Dependencies 
application.o: application.cpp dist.h osm.h tinyxml2.h
dist.o: dist.cpp dist.h
osm.o: osm.cpp osm.h tinyxml2.h graph.h
tinyxml2.o: tinyxml2.cpp tinyxml2.h

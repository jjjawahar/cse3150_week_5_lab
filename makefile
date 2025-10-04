CXX := g++
CXXFLAGS := -std=c++17 -g -O2 -Wall -Wextra
TARGET := solution

all: $(TARGET)

$(TARGET): solution.cpp
	$(CXX) $(CXXFLAGS) -o $(TARGET) solution.cpp

clean:
	rm -f $(TARGET) *.o game_output.csv

test:
	pytest -q
# The binary this exercise builds
NAME := game

# Compiler and the gauntlet's mandatory flags
CXX      := c++
CXXFLAGS := -Wall -Wextra -Werror -std=c++17

BUILD_DIR := build

SRCS := main.cpp
OBJS := $(addprefix $(BUILD_DIR)/, $(SRCS:.cpp=.o))

# `make` / `make all`: build the binary
all: $(NAME)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(NAME): $(BUILD_DIR) $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(NAME)

# Compile each .cpp into a .o
$(BUILD_DIR)/%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# `make clean`: remove object files
clean:
	rm -rf $(BUILD_DIR)

# `make fclean`: remove objects AND the binary
fclean: clean
	rm -f $(NAME)

# `make re`: rebuild everything from scratch
re: fclean all

.PHONY: all clean fclean re

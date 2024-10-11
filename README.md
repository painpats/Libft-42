# Libft-42

## Description

Libft is a personal C library that I developed as part of my common core at 42. This project aims to recreate some usual functions from the standard C library. I will use this as a base library for several project in the common core.

![Libft results](Assets/libft.png)
 
## Features

Libft includes the following functions:

- String manipulation functions:
  - `ft_strlen`
  - `ft_strcpy`
  - `ft_strncpy`
  - `ft_strcat`
  - `ft_strncmp`
  - `ft_strdup`
  
- Memory management functions:
  - `ft_memset`
  - `ft_bzero`
  - `ft_memcpy`
  - `ft_memmove`
  - `ft_memchr`
  - `ft_memcmp`
  - `ft_calloc`
  
- Conversion functions:
  - `ft_atoi`
  - `ft_itoa`
  
- List management functions:
  - `ft_lstnew`
  - `ft_lstadd_front`
  - `ft_lstadd_back`
  - `ft_lstdelone`
  - `ft_lstclear`
  - `ft_lstiter`
  - `ft_lstmap`

## Upgrades

### ft_printf
`ft_printf` is a custom implementation of the standard `printf` function from the C library.

![ft_printf results](Assets/ft_printf.png)

The `ft_printf` function supports the following format specifiers:

- `%c` - Print a character
- `%s` - Print a string
- `%p` - Print a pointer address
- `%d` - Print an integer (decimal)
- `%i` - Print an integer (same as `%d`)
- `%u` - Print an unsigned integer
- `%x` - Print a hexadecimal number (lowercase)
- `%X` - Print a hexadecimal number (uppercase)
- `%%` - Print a percent sign


### get_next_line
`get_next_line` is a function designed to read a line from a file descriptor, including support for reading from standard input.

![gnl results](Assets/gnl.png)

- Reads a line from a file descriptor, returning the line as a string.
- Handles multiple file descriptors simultaneously.
- Supports reading from standard input.
- Automatically manages memory allocation and deallocation.


## Installation

To use Libft, simply clone the repository and compile it:

```bash
git clone https://github.com/painpats/Libft-42.git
cd Libft-42
make

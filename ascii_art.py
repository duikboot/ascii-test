import string

import characters


def index_character(char):
    index = string.ascii_uppercase.index(char.upper())
    return index


def get_ascii_character(index):
    return characters.characters[index]


if __name__ == "__main__":
    text = input("What? ")
    for i in text:
        index = index_character(i)
        print(get_ascii_character(index), sep="")

import characters


def get_ascii_character(index):
    """Return the ascii character of the index."""

    return characters.characters[index]


def get_zipped_chars(text):
    """Return zipped list of ascii characters, so we can iterate over it."""
    characters_list = []

    for index in text:
        ascii_char = get_ascii_character(ord(index))
        characters_list.append(ascii_char.splitlines())

    return zip(*characters_list)


def print_ascii(chars):
    for lines in chars:
        for line in lines:
            print(line, end="")
        print()


def main():
    user_text = input("Give text for ascii art: ")
    zipped_chars = get_zipped_chars(user_text)
    print_ascii(zipped_chars)


if __name__ == "__main__":
    main()

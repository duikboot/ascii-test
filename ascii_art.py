import characters


def index_character(char):
    """Return the Unicode code point for a one-character string. """
    return ord(char)


def get_ascii_character(index):
    """Return the ascii character of the index."""
    return characters.characters[index]


def get_zipped_chars(text):
    characters_list = []

    for i in text:
        ascii_char = get_ascii_character(index_character(i))
        characters_list.append(ascii_char.splitlines())

    return zip(*characters_list)


if __name__ == "__main__":
    user_text = input("Give text for ascii art: ")
    zipped_chars = get_zipped_chars(user_text)

    for line in zipped_chars:
        for c in line:
            print(c, end="")
        print()

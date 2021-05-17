#!/usr/bin/env python3

from sys import argv, exit, stderr


colors = {
    "black": ["#1c1e1f", "237", "DarkGrey"],
    "bg0": ["#273136", "235", "Black"],
    "bg1": ["#313b42", "236", "DarkGrey"],
    "bg2": ["#353f46", "236", "DarkGrey"],
    "bg3": ["#3a444b", "237", "DarkGrey"],
    "bg4": ["#414b53", "237", "Grey"],
    "bg_red": ["#ff6d7e", "203", "Red"],
    "diff_red": ["#55393d", "52", "DarkRed"],
    "bg_green": ["#a2e57b", "107", "Green"],
    "diff_green": ["#394634", "22", "DarkGreen"],
    "bg_blue": ["#7cd5f1", "110", "Blue"],
    "diff_blue": ["#354157", "17", "DarkBlue"],
    "diff_yellow": ["#4e432f", "54", "DarkMagenta"],
    "fg": ["#e1e2e3", "250", "White"],
    "red": ["#f76c7c", "203", "Red"],
    "orange": ["#f3a96a", "215", "Orange"],
    "yellow": ["#e3d367", "179", "Yellow"],
    "green": ["#9cd57b", "107", "Green"],
    "blue": ["#78cee9", "110", "Blue"],
    "purple": ["#baa0f8", "176", "Magenta"],
    "grey": ["#82878b", "246", "LightGrey"],
    "none": ["NONE", "NONE", "NONE"],
    ""
}


def parse(s: str) -> str:
    idx = s.index("(")
    if idx == -1:
        return ""

    s = s[idx + 1 :]
    if s[-1] == ")":
        s = s[:-1]

    vals = s.split(", ")

    name = vals[0].strip(" '")

    fg = vals[1].strip()
    if fg.startswith("s:palette."):
        fg = fg[10:]
    if fg not in colors:
        print("fg:", fg, file=stderr)
        return ""

    bg = vals[2].strip()
    if bg.startswith("s:palette."):
        bg = bg[10:]
    if bg not in colors:
        print(f"bg:", bg, file=stderr)
        return ""

    a1 = vals[3].strip(" '") if len(vals) > 3 else "NONE"
    if a1 == "undercurl":
        a1 = "underline"

    a2 = vals[4].strip() if len(vals) > 4 else "none"
    if a2.startswith("s:palette."):
        a2 = a2[10:]
    if a2 not in colors:
        print(f"a2:", a2, file=stderr)
        return ""

    return f"hi {name} ctermfg={colors[fg][1]} ctermbg={colors[bg][1]} guifg={colors[fg][0]} guibg={colors[bg][0]} cterm={a1} gui={a1} guisp={colors[a2][1]}"


def main():
    if len(argv) == 1:
        print("input file is required", file=stderr)
        exit(1)

    with open(argv[1], "r") as f:
        lines = f.readlines()

    for i, line in enumerate(lines):
        cleanline = line.strip()
        if cleanline.startswith("call sonokai#highlight"):
            pl = parse(cleanline)
            if pl == "":
                print(i + 1)
                exit(1)
            sl = ""
            idx = line.index("call")
            if idx != 0:
                if line[0] == "\t":
                    sl = "\t" * idx
                elif line[0] == " ":
                    sl = "\t" * (idx // 2)
            lines[i] = f"{sl}{pl}\n"
            # print(f"{i+1}:", pl)

    outfile = argv[2] if len(argv) > 2 else "highlight.vim"
    with open(outfile, "w") as f:
        f.writelines(lines)


if __name__ == "__main__":
    main()

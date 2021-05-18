#!/usr/bin/env python3

from sys import argv, exit, stderr


STARTLINE = 29

headlines = [
    "\" https://github.com/osamai/vim-minisonokai",
    "\" minisonokai is a minimal version of sonokai (https://github.com/sainnhe/sonokai)\n",
    "let g:colors_name = 'minisonokai'\n",
    "if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256",
    "\tfinish",
    "endif\n\n",
]

colors = {
    "black": ["#181819", "237", "DarkGrey"],
    "bg0": ["#2c2e34", "235", "Black"],
    "bg1": ["#33353f", "236", "DarkGrey"],
    "bg2": ["#363944", "236", "DarkGrey"],
    "bg3": ["#3b3e48", "237", "DarkGrey"],
    "bg4": ["#414550", "237", "Grey"],
    "bg_red": ["#ff6077", "203", "Red"],
    "diff_red": ["#55393d", "52", "DarkRed"],
    "bg_green": ["#a7df78", "107", "Green"],
    "diff_green": ["#394634", "22", "DarkGreen"],
    "bg_blue": ["#85d3f2", "110", "Blue"],
    "diff_blue": ["#354157", "17", "DarkBlue"],
    "diff_yellow": ["#4e432f", "54", "DarkMagenta"],
    "fg": ["#e2e2e3", "250", "White"],
    "red": ["#fc5d7c", "203", "Red"],
    "orange": ["#f39660", "215", "Orange"],
    "yellow": ["#e7c664", "179", "Yellow"],
    "green": ["#9ed072", "107", "Green"],
    "blue": ["#76cce0", "110", "Blue"],
    "purple": ["#b39df3", "176", "Magenta"],
    "grey": ["#7f8490", "246", "LightGrey"],
    "none": ["NONE", "NONE", "NONE"],
}
colors["s:configuration.cursor]"] = colors["none"]

replacemap = [
    ("s:configuration.", "g:minisonokai_"),
    ("highlight!", "hi"),
    ("highlight clear", "hi clear"),
]


def parse_highlight(s: str) -> str:
    idx = s.index("(")
    if idx == -1:
        return ""

    s = s[idx + 1 :]
    if s[-1] == ")":
        s = s[:-1]

    vals = s.split(", ")

    name = vals[0].strip(" '")

    fg = vals[1].strip()
    if fg.startswith("s:palette"):
        fg = fg[10:]
    if fg not in colors:
        print("fg:", fg, file=stderr)
        return ""

    bg = vals[2].strip()
    if bg.startswith("s:palette"):
        bg = bg[10:]
    if bg not in colors:
        print(f"bg:", bg, file=stderr)
        return ""

    a1 = vals[3].strip(" '") if len(vals) > 3 else "NONE"
    if a1 == "undercurl":
        a1 = "underline"

    a2 = vals[4].strip() if len(vals) > 4 else "none"
    if a2.startswith("s:palette"):
        a2 = a2[10:]
    if a2 not in colors:
        print(f"a2:", a2, file=stderr)
        return ""

    return f"hi {name} ctermfg={colors[fg][1]} ctermbg={colors[bg][1]} guifg={colors[fg][0]} guibg={colors[bg][0]} cterm={a1} gui={a1} guisp={colors[a2][0]}"


def main():
    if len(argv) == 1:
        print("input file is required", file=stderr)
        exit(1)

    with open(argv[1], "r") as f:
        lines = f.readlines()[STARTLINE-1:]

    for i, line in enumerate(lines):
        cleanline = line.strip()
        if cleanline.startswith("call sonokai#highlight"):
            pl = parse_highlight(cleanline)
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

    content = "".join(lines)
    for k, v in replacemap:
        content = content.replace(k, v)

    content = "\n".join(headlines) + content

    outfile = argv[2] if len(argv) > 2 else "minisonokai.vim"
    with open(outfile, "w") as f:
        f.write(content)


if __name__ == "__main__":
    main()

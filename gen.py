#!/usr/bin/env python3

from sys import argv, exit, stderr


STARTLINE = 29

headlines = [
    "\" https://github.com/osamai/vim-minisonokai",
    "\" minisonokai is a minimal version of sonokai (https://github.com/sainnhe/sonokai)\n",
    "let g:colors_name = 'minisonokai'\n",
    "if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256",
    "\tfinish",
    "endif\n",
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

ftplugins = ("netrw")


def indent_line(line: str, text: str, startidx: int) -> str:
    if line == "" or text == "" or startidx == -1:
        return ""
    if startidx == 0:
        return text

    ind = ""
    if line[0] == "\t":
        ind = "\t" * startidx
    elif line[0] == " ":
        ind = "\t" * (startidx//2)

    return ind + text


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


def parse_terminal_color(s: str) -> str:
    s = s.strip()
    if not s.startswith("s:terminal."):
        return ""

    idx = s.index("[")
    if idx == -1 or len(s) != idx+3:
        return ""

    cn = s[11:idx]
    if cn == "cyan":
        cn = "orange"
    elif cn == "white":
        cn = "fg"

    try:
        cx = int(s[idx+1])
        if cx >= len(colors[cn]):
            cx = 0
    except (ValueError, IndexError):
        pass

    return colors[cn][cx]


def main():
    if len(argv) == 1:
        print("input file is required", file=stderr)
        exit(1)

    with open(argv[1], "r") as f:
        lines = f.readlines()[STARTLINE-1:]

    terminal_startline = 0
    terminal_implline = 0
    terminal_endline = 0
    terminal_after_else = False
    terminal_done = False

    ftstack = 0
    ftcur = ""

    for i, line in enumerate(lines):
        cleanline = line.strip()

        if cleanline.startswith("\" ft_begin:") and cleanline.endswith("{{{"):
            if lines[i+1].startswith("\"") and "builtin:" not in lines[i+1]:
                print(line,lines[i+1])
                continue
            #print(line,lines[i+1])

        #if line.startswith("\""):
        #    if "ft_begin" in line:
        #        print(line, lines[i+1])
        #    if line.endswith("{{{"):
        #        ftstack += 1
        #    elif line.endswith("}}}"):
        #        ftstack -= 1
        #    if len(lines) != i+1:
        #        lines[i] = ""

        if cleanline.startswith("call sonokai#highlight"):
            phi = parse_highlight(cleanline)
            if phi == "":
                print(i + 1)
                exit(1)
            lines[i] = indent_line(line, phi, line.index("call")) + "\n"

        if not terminal_done:
            if terminal_startline == 0 and cleanline == "\" Terminal: {{{":
                terminal_startline = i + 1
            elif terminal_implline == 0 and terminal_startline != 0 and cleanline == "\" Implementation: {{{":
                terminal_implline = i + 1
            elif terminal_endline == 0 and terminal_startline != 0 and terminal_implline != 0 and line == "\" }}}\n":
                terminal_endline = i + 1

            if terminal_startline != 0 and terminal_implline != 0 and terminal_endline == 0:
                if cleanline == "\" }}}":
                    lines[i] = ""
                elif cleanline == "else":
                    terminal_after_else = True
                    continue
                elif line == "endif" and terminal_after_else:
                    terminal_done = True
                    continue

                if terminal_after_else:
                    try:
                        eqidx = line.index("=")
                    except ValueError:
                        continue
                    termvar = line[eqidx+2:-1]
                    termcolor = parse_terminal_color(termvar)
                    lines[i] = indent_line(line, cleanline.replace(termvar, f"'{termcolor}'"), line.index("let")) + "\n"
                    #print(lines[i][:-1])
                elif cleanline.startswith("let g:terminal_ansi_colors"):
                    lc = 1
                    arrline = cleanline[30:]
                    while not arrline.endswith("]]"):
                        arrline += lines[i+lc].strip("\\ \t\n")
                        lc += 1

                    arrsp = arrline[:-1].split(",")
                    for j, v in enumerate(arrsp):
                        arrsp[j] = "'" + parse_terminal_color(v) + "'"

                    full_line = cleanline[:cleanline.index("[")+1] +  ", ".join(arrsp) + "]"
                    lines[i:i+lc] = [indent_line(line, full_line, line.index("let")) + "\n"]

    lines[terminal_startline+1:terminal_implline] = []

    content = "".join(lines)
    for k, v in replacemap:
        content = content.replace(k, v)

    content = "\n".join(headlines) + "\n" + content

    outfile = argv[2] if len(argv) > 2 else "minisonokai.vim"
    with open(outfile, "w") as f:
        f.write(content)


if __name__ == "__main__":
    main()

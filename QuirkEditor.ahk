SetWorkingDir %A_ScriptDir%

Lettera = a
Letterb = b
Letterc = c
Letterd = d
Lettere = e
Letterf = f
Letterg = g
Letterh = h
Letteri = i
Letterj = j
Letterk = k
Letterl = l
Letterm = m
Lettern = n
Lettero = o
Letterp = p
Letterq = q
Letterr = r
Letters = s
Lettert = t
Letteru = u
Letterv = v
Letterw = w
Letterx = x
Lettery = y
Letterz = z
Letteraa = A
Letterbb = B
Lettercc = C
Letterdd = D
Letteree = E
Letterff = F
Lettergg = G
Letterhh = H
Letterii = I
Letterjj = J
Letterkk = K
Letterll = L
Lettermm = M
Letternn = N
Letteroo = O
Letterpp = P
Letterqq = Q
Letterrr = R
Letterss = S
Lettertt = T
Letteruu = U
Lettervv = V
Letterww = W
Letterxx = X
Letteryy = Y
Letterzz = Z
Letter1 = 1
Letter2 = 2
Letter3 = 3
Letter4 = 4
Letter5 = 5
Letter6 = 6
Letter7 = 7
Letter8 = 8
Letter9 = 9
Letter0 = 0
LetterS1 = -
LetterS2 = =
LetterS3 = !
LetterS4 = @
LetterS5 = #
LetterS6 = $
LetterS7 = `%
LetterS8 = ^
LetterS9 = &
LetterS10 = *
LetterS11 = (
LetterS12 = )
LetterS13 = _
LetterS14 = +
LetterS15 = [
LetterS16 = ]
LetterS17 = \
LetterS18 = `;
LetterS19 = '
LetterS20 = ,
LetterS21 = .
LetterS22 = /
LetterS23 = {
LetterS24 = }
LetterS25 = |
LetterS26 = :
LetterS27 = "
LetterS28 = <
LetterS29 = >
LetterS30 = ?
LetterS31 = `
LetterS32 = ~

Alternate = Alternate false
WordStart = WordStart false
SentenceStart = SentenceStart false

Alt = 0
Word = 0
Sentence = 0

Prefix = no prefix

StaticReplacements = 
DynamicReplacements = 

Gui, Add, Button, w100, New
Gui, Add, Button, ys w100, Load
Gui, Show,, Quirk Editor
Return

ButtonNew:
    EditWindow()
return

ButtonLoad:
    FileSelectFile, CurrentQuirk
    LoadFile()
    EditWindow()
return




EditWindow()
{
    global
    
    Gui, Destroy
    
    Gui, Add, Text,, a
    Gui, Add, Text,, b
    Gui, Add, Text,, c
    Gui, Add, Text,, d
    Gui, Add, Text,, e
    Gui, Add, Text,, f
    Gui, Add, Text,, g
    Gui, Add, Text,, h
    Gui, Add, Text,, i
    Gui, Add, Text,, j
    Gui, Add, Text,, k
    Gui, Add, Text,, l
    Gui, Add, Text,, m
    Gui, Add, Text,, n
    Gui, Add, Text,, o
    Gui, Add, Text,, p
    Gui, Add, Text,, q
    Gui, Add, Text,, r
    Gui, Add, Text,, s
    Gui, Add, Text,, t
    Gui, Add, Text,, u
    Gui, Add, Text,, v
    Gui, Add, Text,, w
    Gui, Add, Text,, x
    Gui, Add, Text,, y
    Gui, Add, Text,, z
    
    Gui, Add, Edit, ys w30 vLettera, %Lettera%
    Gui, Add, Edit, w30 vLetterb, %Letterb%
    Gui, Add, Edit, w30 vLetterc, %Letterc%
    Gui, Add, Edit, w30 vLetterd, %Letterd%
    Gui, Add, Edit, w30 vLettere, %Lettere%
    Gui, Add, Edit, w30 vLetterf, %Letterf%
    Gui, Add, Edit, w30 vLetterg, %Letterg%
    Gui, Add, Edit, w30 vLetterh, %Letterh%
    Gui, Add, Edit, w30 vLetteri, %Letteri%
    Gui, Add, Edit, w30 vLetterj, %Letterj%
    Gui, Add, Edit, w30 vLetterk, %Letterk%
    Gui, Add, Edit, w30 vLetterl, %Letterl%
    Gui, Add, Edit, w30 vLetterm, %Letterm%
    Gui, Add, Edit, w30 vLettern, %Lettern%
    Gui, Add, Edit, w30 vLettero, %Lettero%
    Gui, Add, Edit, w30 vLetterp, %Letterp%
    Gui, Add, Edit, w30 vLetterq, %Letterq%
    Gui, Add, Edit, w30 vLetterr, %Letterr%
    Gui, Add, Edit, w30 vLetters, %Letters%
    Gui, Add, Edit, w30 vLettert, %Lettert%
    Gui, Add, Edit, w30 vLetteru, %Letteru%
    Gui, Add, Edit, w30 vLetterv, %Letterv%
    Gui, Add, Edit, w30 vLetterw, %Letterw%
    Gui, Add, Edit, w30 vLetterx, %Letterx%
    Gui, Add, Edit, w30 vLettery, %Lettery%
    Gui, Add, Edit, w30 vLetterz, %Letterz%
    
    Gui, Add, Text,ys, A
    Gui, Add, Text,, B
    Gui, Add, Text,, C
    Gui, Add, Text,, D
    Gui, Add, Text,, E
    Gui, Add, Text,, F
    Gui, Add, Text,, G
    Gui, Add, Text,, H
    Gui, Add, Text,, I
    Gui, Add, Text,, J
    Gui, Add, Text,, K
    Gui, Add, Text,, L
    Gui, Add, Text,, M
    Gui, Add, Text,, N
    Gui, Add, Text,, O
    Gui, Add, Text,, P
    Gui, Add, Text,, Q
    Gui, Add, Text,, R
    Gui, Add, Text,, S
    Gui, Add, Text,, T
    Gui, Add, Text,, U
    Gui, Add, Text,, V
    Gui, Add, Text,, W
    Gui, Add, Text,, X
    Gui, Add, Text,, Y
    Gui, Add, Text,, Z
    
    Gui, Add, Edit, ys w30 vLetteraa, %Letteraa%
    Gui, Add, Edit, w30 vLetterbb, %Letterbb%
    Gui, Add, Edit, w30 vLettercc, %Lettercc%
    Gui, Add, Edit, w30 vLetterdd, %Letterdd%
    Gui, Add, Edit, w30 vLetteree, %Letteree%
    Gui, Add, Edit, w30 vLetterff, %Letterff%
    Gui, Add, Edit, w30 vLettergg, %Lettergg%
    Gui, Add, Edit, w30 vLetterhh, %Letterhh%
    Gui, Add, Edit, w30 vLetterii, %Letterii%
    Gui, Add, Edit, w30 vLetterjj, %Letterjj%
    Gui, Add, Edit, w30 vLetterkk, %Letterkk%
    Gui, Add, Edit, w30 vLetterll, %Letterll%
    Gui, Add, Edit, w30 vLettermm, %Lettermm%
    Gui, Add, Edit, w30 vLetternn, %Letternn%
    Gui, Add, Edit, w30 vLetteroo, %Letteroo%
    Gui, Add, Edit, w30 vLetterpp, %Letterpp%
    Gui, Add, Edit, w30 vLetterqq, %Letterqq%
    Gui, Add, Edit, w30 vLetterrr, %Letterrr%
    Gui, Add, Edit, w30 vLetterss, %Letterss%
    Gui, Add, Edit, w30 vLettertt, %Lettertt%
    Gui, Add, Edit, w30 vLetteruu, %Letteruu%
    Gui, Add, Edit, w30 vLettervv, %Lettervv%
    Gui, Add, Edit, w30 vLetterww, %Letterww%
    Gui, Add, Edit, w30 vLetterxx, %Letterxx%
    Gui, Add, Edit, w30 vLetteryy, %Letteryy%
    Gui, Add, Edit, w30 vLetterzz, %Letterzz%
    
    Gui, Add, Text,ys, 1
    Gui, Add, Text,, 2
    Gui, Add, Text,, 3
    Gui, Add, Text,, 4
    Gui, Add, Text,, 5
    Gui, Add, Text,, 6
    Gui, Add, Text,, 7
    Gui, Add, Text,, 8
    Gui, Add, Text,, 9
    Gui, Add, Text,, 0
    Gui, Add, Text,, -
    Gui, Add, Text,, =
    Gui, Add, Text,, !
    Gui, Add, Text,, @
    Gui, Add, Text,, #
    Gui, Add, Text,, $
    Gui, Add, Text,, `%
    Gui, Add, Text,, ^
    Gui, Add, Text,, &&
    Gui, Add, Text,, *
    Gui, Add, Text,, (
    Gui, Add, Text,, )
    Gui, Add, Text,, _
    Gui, Add, Text,, +
    Gui, Add, Text,, [
    Gui, Add, Text,, ]
    
    Gui, Add, Edit, ys w30 vLetter1, %Letter1%
    Gui, Add, Edit, w30 vLetter2, %Letter2%
    Gui, Add, Edit, w30 vLetter3, %Letter3%
    Gui, Add, Edit, w30 vLetter4, %Letter4%
    Gui, Add, Edit, w30 vLetter5, %Letter5%
    Gui, Add, Edit, w30 vLetter6, %Letter6%
    Gui, Add, Edit, w30 vLetter7, %Letter7%
    Gui, Add, Edit, w30 vLetter8, %Letter8%
    Gui, Add, Edit, w30 vLetter9, %Letter9%
    Gui, Add, Edit, w30 vLetter0, %Letter0%
    Gui, Add, Edit, w30 vLetterS1, %LetterS1%
    Gui, Add, Edit, w30 vLetterS2, %LetterS2%
    Gui, Add, Edit, w30 vLetterS3, %LetterS3%
    Gui, Add, Edit, w30 vLetterS4, %LetterS4%
    Gui, Add, Edit, w30 vLetterS5, %LetterS5%
    Gui, Add, Edit, w30 vLetterS6, %LetterS6%
    Gui, Add, Edit, w30 vLetterS7, %LetterS7%
    Gui, Add, Edit, w30 vLetterS8, %LetterS8%
    Gui, Add, Edit, w30 vLetterS9, %LetterS9%
    Gui, Add, Edit, w30 vLetterS10, %LetterS10%
    Gui, Add, Edit, w30 vLetterS11, %LetterS11%
    Gui, Add, Edit, w30 vLetterS12, %LetterS12%
    Gui, Add, Edit, w30 vLetterS13, %LetterS13%
    Gui, Add, Edit, w30 vLetterS14, %LetterS14%
    Gui, Add, Edit, w30 vLetterS15, %LetterS15%
    Gui, Add, Edit, w30 vLetterS16, %LetterS16%
    
    Gui, Add, Text,ys, \
    Gui, Add, Text,, `;
    Gui, Add, Text,, '
    Gui, Add, Text,, ,
    Gui, Add, Text,, .
    Gui, Add, Text,, /
    Gui, Add, Text,, {
    Gui, Add, Text,, }
    Gui, Add, Text,, |
    Gui, Add, Text,, :
    Gui, Add, Text,, "
    Gui, Add, Text,, <
    Gui, Add, Text,, >
    Gui, Add, Text,, ?
    Gui, Add, Text,, ``
    Gui, Add, Text,, ~
    
    Gui, Add, Edit, ys w30 vLetterS17, %LetterS17%
    Gui, Add, Edit, w30 vLetterS18, %LetterS18%
    Gui, Add, Edit, w30 vLetterS19, %LetterS19%
    Gui, Add, Edit, w30 vLetterS20, %LetterS20%
    Gui, Add, Edit, w30 vLetterS21, %LetterS21%
    Gui, Add, Edit, w30 vLetterS22, %LetterS22%
    Gui, Add, Edit, w30 vLetterS23, %LetterS23%
    Gui, Add, Edit, w30 vLetterS24, %LetterS24%
    Gui, Add, Edit, w30 vLetterS25, %LetterS25%
    Gui, Add, Edit, w30 vLetterS26, %LetterS26%
    Gui, Add, Edit, w30 vLetterS27, %LetterS27%
    Gui, Add, Edit, w30 vLetterS28, %LetterS28%
    Gui, Add, Edit, w30 vLetterS29, %LetterS29%
    Gui, Add, Edit, w30 vLetterS30, %LetterS30%
    Gui, Add, Edit, w30 vLetterS31, %LetterS31%
    Gui, Add, Edit, w30 vLetterS32, %LetterS32%
    
    Gui, Add, Text,, Capitalization:
    if Alt = 1
    {
        Gui, Add, Checkbox, Checked vAlt, Alternate Letters
    }
    else
    {
        Gui, Add, Checkbox, vAlt, Alternate Letters
    }
    if Word = 1
    {
        Gui, Add, Checkbox, Checked vWord, Words
    }
    else
    {
        Gui, Add, Checkbox, vWord, Words
    }
    if Sentence = 1
    {
        Gui, Add, Checkbox, Checked vSentence, Sentences
    }
    else
    {
        Gui, Add, Checkbox, vSentence, Sentences
    }
    
    Gui, Add, Edit, w75 vPrefix, %Prefix%
    
    Gui, Add, Text,ys, Static Replacements(Replaces the entire word: to - two)
    Gui, Add, Text,, Format: to:.:two
    Gui, Add, Edit,w350 h300 vStaticReplacements, %StaticReplacements%
    
    Gui, Add, Text,, Dynamic Replacements(Replaces part of a word: ee - 33, like in need - n33d)
    Gui, Add, Text,, Format: ee:.:33
    Gui, Add, Edit,w350 h300 vDynamicReplacements, %DynamicReplacements%
    
    Gui, Add, Button, ys w200, Load
    Gui, Add, Button, w200, Save
    
    Gui, Show,, Quirk Editor

    Return
}

ButtonSave:
    FileSelectFile, CurrentQuirk, S,,,Documents (*.txt)
    SaveFile()
    EditWindow()
return

GuiClose:
ExitApp

LoadFile()
{
    global

    FileReadLine, Lettera, %CurrentQuirk%, 1
    FileReadLine, Letterb, %CurrentQuirk%, 2
    FileReadLine, Letterc, %CurrentQuirk%, 3
    FileReadLine, Letterd, %CurrentQuirk%, 4
    FileReadLine, Lettere, %CurrentQuirk%, 5
    FileReadLine, Letterf, %CurrentQuirk%, 6
    FileReadLine, Letterg, %CurrentQuirk%, 7
    FileReadLine, Letterh, %CurrentQuirk%, 8
    FileReadLine, Letteri, %CurrentQuirk%, 9
    FileReadLine, Letterj, %CurrentQuirk%, 10 
    FileReadLine, Letterk, %CurrentQuirk%, 11
    FileReadLine, Letterl, %CurrentQuirk%, 12
    FileReadLine, Letterm, %CurrentQuirk%, 13
    FileReadLine, Lettern, %CurrentQuirk%, 14
    FileReadLine, Lettero, %CurrentQuirk%, 15
    FileReadLine, Letterp, %CurrentQuirk%, 16
    FileReadLine, Letterq, %CurrentQuirk%, 17
    FileReadLine, Letterr, %CurrentQuirk%, 18
    FileReadLine, Letters, %CurrentQuirk%, 19
    FileReadLine, Lettert, %CurrentQuirk%, 20
    FileReadLine, Letteru, %CurrentQuirk%, 21
    FileReadLine, Letterv, %CurrentQuirk%, 22
    FileReadLine, Letterw, %CurrentQuirk%, 23
    FileReadLine, Letterx, %CurrentQuirk%, 24
    FileReadLine, Lettery, %CurrentQuirk%, 25
    FileReadLine, Letterz, %CurrentQuirk%, 26
    FileReadLine, Letteraa, %CurrentQuirk%, 27
    FileReadLine, Letterbb, %CurrentQuirk%, 28
    FileReadLine, Lettercc, %CurrentQuirk%, 29
    FileReadLine, Letterdd, %CurrentQuirk%, 30
    FileReadLine, Letteree, %CurrentQuirk%, 31
    FileReadLine, Letterff, %CurrentQuirk%, 32
    FileReadLine, Lettergg, %CurrentQuirk%, 33
    FileReadLine, Letterhh, %CurrentQuirk%, 34
    FileReadLine, Letterii, %CurrentQuirk%, 35
    FileReadLine, Letterjj, %CurrentQuirk%, 36
    FileReadLine, Letterkk, %CurrentQuirk%, 37
    FileReadLine, Letterll, %CurrentQuirk%, 38
    FileReadLine, Lettermm, %CurrentQuirk%, 39
    FileReadLine, Letternn, %CurrentQuirk%, 40
    FileReadLine, Letteroo, %CurrentQuirk%, 41
    FileReadLine, Letterpp, %CurrentQuirk%, 42
    FileReadLine, Letterqq, %CurrentQuirk%, 43
    FileReadLine, Letterrr, %CurrentQuirk%, 44
    FileReadLine, Letterss, %CurrentQuirk%, 45
    FileReadLine, Lettertt, %CurrentQuirk%, 46
    FileReadLine, Letteruu, %CurrentQuirk%, 47
    FileReadLine, Lettervv, %CurrentQuirk%, 48
    FileReadLine, Letterww, %CurrentQuirk%, 49
    FileReadLine, Letterxx, %CurrentQuirk%, 50
    FileReadLine, Letteryy, %CurrentQuirk%, 51
    FileReadLine, Letterzz, %CurrentQuirk%, 52
    FileReadLine, Letter1, %CurrentQuirk%, 53
    FileReadLine, Letter2, %CurrentQuirk%, 54
    FileReadLine, Letter3, %CurrentQuirk%, 55
    FileReadLine, Letter4, %CurrentQuirk%, 56
    FileReadLine, Letter5, %CurrentQuirk%, 57
    FileReadLine, Letter6, %CurrentQuirk%, 58
    FileReadLine, Letter7, %CurrentQuirk%, 59
    FileReadLine, Letter8, %CurrentQuirk%, 60
    FileReadLine, Letter9, %CurrentQuirk%, 61  
    FileReadLine, Letter0, %CurrentQuirk%, 62
    FileReadLine, LetterS1, %CurrentQuirk%, 63
    FileReadLine, LetterS2, %CurrentQuirk%, 64
    FileReadLine, LetterS3, %CurrentQuirk%, 65
    FileReadLine, LetterS4, %CurrentQuirk%, 66
    FileReadLine, LetterS5, %CurrentQuirk%, 67
    FileReadLine, LetterS6, %CurrentQuirk%, 68
    FileReadLine, LetterS7, %CurrentQuirk%, 69
    FileReadLine, LetterS8, %CurrentQuirk%, 70
    FileReadLine, LetterS9, %CurrentQuirk%, 71
    FileReadLine, LetterS10, %CurrentQuirk%, 72
    FileReadLine, LetterS11, %CurrentQuirk%, 73
    FileReadLine, LetterS12, %CurrentQuirk%, 74
    FileReadLine, LetterS13, %CurrentQuirk%, 75
    FileReadLine, LetterS14, %CurrentQuirk%, 76
    FileReadLine, LetterS15, %CurrentQuirk%, 77
    FileReadLine, LetterS16, %CurrentQuirk%, 78
    FileReadLine, LetterS17, %CurrentQuirk%, 79
    FileReadLine, LetterS18, %CurrentQuirk%, 80
    FileReadLine, LetterS19, %CurrentQuirk%, 81
    FileReadLine, LetterS20, %CurrentQuirk%, 82
    FileReadLine, LetterS21, %CurrentQuirk%, 83
    FileReadLine, LetterS22, %CurrentQuirk%, 84
    FileReadLine, LetterS23, %CurrentQuirk%, 85
    FileReadLine, LetterS24, %CurrentQuirk%, 86
    FileReadLine, LetterS25, %CurrentQuirk%, 87
    FileReadLine, LetterS26, %CurrentQuirk%, 88
    FileReadLine, LetterS27, %CurrentQuirk%, 89
    FileReadLine, LetterS28, %CurrentQuirk%, 90
    FileReadLine, LetterS29, %CurrentQuirk%, 91
    FileReadLine, LetterS30, %CurrentQuirk%, 92
    FileReadLine, LetterS31, %CurrentQuirk%, 93
    FileReadLine, LetterS32, %CurrentQuirk%, 94
    
    
    FileReadLine, Alternate, %CurrentQuirk%, 95
    FileReadLine, WordStart, %CurrentQuirk%, 96
    FileReadLine, SentenceStart, %CurrentQuirk%, 97
    
    if (Alternate = "Alternate true")
    {
        Alt = 1
    }
    else
        Alt = 0
    if(WordStart = "WordStart true")
    {
        Word = 1
    }
    else
        Word = 0
    if(SentenceStart = "SentenceStart true")
    {
        Sentence = 1
    }
    else
        Sentence = 0
    
    FileReadLine, Prefix, %CurrentQuirk%, 98
    
    ReadStaticReplacements()
    ReadDynamicReplacements()
}

ReadStaticReplacements()
{
    global
    
    StaticReplacements =
    
    beginReadStatic = 0
    Loop, read, %CurrentQuirk%
    {
        if (A_Index > 94)
        {
            if (beginReadStatic = 1)
            {
                if (A_LoopReadLine = ":::")
                {
                    break
                }
                StringReplace, srri, A_LoopReadLine, :.:, ``, All
                StringSplit, addToReplace, srri, ``
                
                StaticReplacements := StaticReplacements . addToReplace1 . ":.:" . addToReplace2
                StaticReplacements =%StaticReplacements%`r`n
            }
            if (A_LoopReadLine = ":::")
            {
                beginReadStatic = 1
            }
        }
    }
}

ReadDynamicReplacements()
{
    global
    
    DynamicReplacements =
    
    beginReadDynamic = 0
    Loop, read, %CurrentQuirk%
    {
        if (A_Index > 94)
        {
            if (beginReadDynamic = 1)
            {
                if (A_LoopReadLine = ";;;")
                {
                    break
                }
                StringReplace, drri, A_LoopReadLine, :.:, ``, All
                StringSplit, addToReplace, drri, ``
                
                DynamicReplacements := DynamicReplacements . addToReplace1 . ":.:" . addToReplace2
                DynamicReplacements =%DynamicReplacements%`r`n
            }
            if (A_LoopReadLine = ";;;")
            {
                beginReadDynamic = 1
            }
        }
    }
}

SaveFile()
{
    global
    
    IfNotInString, CurrentQuirk, .txt
    {
        CurrentQuirk =%CurrentQuirk%.txt
    }
    
    Gui, Submit
    
    FileDelete, %CurrentQuirk%
    
    FileAppend, %Lettera%`r`n, %CurrentQuirk%
    FileAppend, %Letterb%`r`n, %CurrentQuirk%
    FileAppend, %Letterc%`r`n, %CurrentQuirk%
    FileAppend, %Letterd%`r`n, %CurrentQuirk%
    FileAppend, %Lettere%`r`n, %CurrentQuirk%
    FileAppend, %Letterf%`r`n, %CurrentQuirk%
    FileAppend, %Letterg%`r`n, %CurrentQuirk%
    FileAppend, %Letterh%`r`n, %CurrentQuirk%
    FileAppend, %Letteri%`r`n, %CurrentQuirk%
    FileAppend, %Letterj%`r`n, %CurrentQuirk%
    FileAppend, %Letterk%`r`n, %CurrentQuirk%
    FileAppend, %Letterl%`r`n, %CurrentQuirk%
    FileAppend, %Letterm%`r`n, %CurrentQuirk%
    FileAppend, %Lettern%`r`n, %CurrentQuirk%
    FileAppend, %Lettero%`r`n, %CurrentQuirk%
    FileAppend, %Letterp%`r`n, %CurrentQuirk%
    FileAppend, %Letterq%`r`n, %CurrentQuirk%
    FileAppend, %Letterr%`r`n, %CurrentQuirk%
    FileAppend, %Letters%`r`n, %CurrentQuirk%
    FileAppend, %Lettert%`r`n, %CurrentQuirk%
    FileAppend, %Letteru%`r`n, %CurrentQuirk%
    FileAppend, %Letterv%`r`n, %CurrentQuirk%
    FileAppend, %Letterw%`r`n, %CurrentQuirk%
    FileAppend, %Letterx%`r`n, %CurrentQuirk%
    FileAppend, %Lettery%`r`n, %CurrentQuirk%
    FileAppend, %Letterz%`r`n, %CurrentQuirk%
    FileAppend, %Letteraa%`r`n, %CurrentQuirk%
    FileAppend, %Letterbb%`r`n, %CurrentQuirk%
    FileAppend, %Lettercc%`r`n, %CurrentQuirk%
    FileAppend, %Letterdd%`r`n, %CurrentQuirk%
    FileAppend, %Letteree%`r`n, %CurrentQuirk%
    FileAppend, %Letterff%`r`n, %CurrentQuirk%
    FileAppend, %Lettergg%`r`n, %CurrentQuirk%
    FileAppend, %Letterhh%`r`n, %CurrentQuirk%
    FileAppend, %Letterii%`r`n, %CurrentQuirk%
    FileAppend, %Letterjj%`r`n, %CurrentQuirk%
    FileAppend, %Letterkk%`r`n, %CurrentQuirk%
    FileAppend, %Letterll%`r`n, %CurrentQuirk%
    FileAppend, %Lettermm%`r`n, %CurrentQuirk%
    FileAppend, %Letternn%`r`n, %CurrentQuirk%
    FileAppend, %Letteroo%`r`n, %CurrentQuirk%
    FileAppend, %Letterpp%`r`n, %CurrentQuirk%
    FileAppend, %Letterqq%`r`n, %CurrentQuirk%
    FileAppend, %Letterrr%`r`n, %CurrentQuirk%
    FileAppend, %Letterss%`r`n, %CurrentQuirk%
    FileAppend, %Lettertt%`r`n, %CurrentQuirk%
    FileAppend, %Letteruu%`r`n, %CurrentQuirk%
    FileAppend, %Lettervv%`r`n, %CurrentQuirk%
    FileAppend, %Letterww%`r`n, %CurrentQuirk%
    FileAppend, %Letterxx%`r`n, %CurrentQuirk%
    FileAppend, %Letteryy%`r`n, %CurrentQuirk%
    FileAppend, %Letterzz%`r`n, %CurrentQuirk%
    FileAppend, %Letter1%`r`n, %CurrentQuirk%
    FileAppend, %Letter2%`r`n, %CurrentQuirk%
    FileAppend, %Letter3%`r`n, %CurrentQuirk%
    FileAppend, %Letter4%`r`n, %CurrentQuirk%
    FileAppend, %Letter5%`r`n, %CurrentQuirk%
    FileAppend, %Letter6%`r`n, %CurrentQuirk%
    FileAppend, %Letter7%`r`n, %CurrentQuirk%
    FileAppend, %Letter8%`r`n, %CurrentQuirk%
    FileAppend, %Letter9%`r`n, %CurrentQuirk%  
    FileAppend, %Letter0%`r`n, %CurrentQuirk%
    FileAppend, %LetterS1%`r`n, %CurrentQuirk%
    FileAppend, %LetterS2%`r`n, %CurrentQuirk%
    FileAppend, %LetterS3%`r`n, %CurrentQuirk%
    FileAppend, %LetterS4%`r`n, %CurrentQuirk%
    FileAppend, %LetterS5%`r`n, %CurrentQuirk%
    FileAppend, %LetterS6%`r`n, %CurrentQuirk%
    FileAppend, %LetterS7%`r`n, %CurrentQuirk%
    FileAppend, %LetterS8%`r`n, %CurrentQuirk%
    FileAppend, %LetterS9%`r`n, %CurrentQuirk%
    FileAppend, %LetterS10%`r`n, %CurrentQuirk%
    FileAppend, %LetterS11%`r`n, %CurrentQuirk%
    FileAppend, %LetterS12%`r`n, %CurrentQuirk%
    FileAppend, %LetterS13%`r`n, %CurrentQuirk%
    FileAppend, %LetterS14%`r`n, %CurrentQuirk%
    FileAppend, %LetterS15%`r`n, %CurrentQuirk%
    FileAppend, %LetterS16%`r`n, %CurrentQuirk%
    FileAppend, %LetterS17%`r`n, %CurrentQuirk%
    FileAppend, %LetterS18%`r`n, %CurrentQuirk%
    FileAppend, %LetterS19%`r`n, %CurrentQuirk%
    FileAppend, %LetterS20%`r`n, %CurrentQuirk%
    FileAppend, %LetterS21%`r`n, %CurrentQuirk%
    FileAppend, %LetterS22%`r`n, %CurrentQuirk%
    FileAppend, %LetterS23%`r`n, %CurrentQuirk%
    FileAppend, %LetterS24%`r`n, %CurrentQuirk%
    FileAppend, %LetterS25%`r`n, %CurrentQuirk%
    FileAppend, %LetterS26%`r`n, %CurrentQuirk%
    FileAppend, %LetterS27%`r`n, %CurrentQuirk%
    FileAppend, %LetterS28%`r`n, %CurrentQuirk%
    FileAppend, %LetterS29%`r`n, %CurrentQuirk%
    FileAppend, %LetterS30%`r`n, %CurrentQuirk%
    FileAppend, %LetterS31%`r`n, %CurrentQuirk%
    FileAppend, %LetterS32%`r`n, %CurrentQuirk%
    
    if Alt = 1
    {
        FileAppend,Alternate true`r`n, %CurrentQuirk%
    }
    else
    {
        FileAppend,Alternate false`r`n, %CurrentQuirk%
    }
    if Word = 1
    {
        FileAppend,WordStart true`r`n, %CurrentQuirk%
    }
    else
    {
        FileAppend,WordStart false`r`n, %CurrentQuirk%
    }
    if Sentence = 1
    {
        FileAppend,SentenceStart true`r`n, %CurrentQuirk%
    }
    else
    {
        FileAppend,SentenceStart false`r`n, %CurrentQuirk%
    }
    
    FileAppend,%Prefix%`r`n, %CurrentQuirk%
    
    
    
    FileAppend,:::`r`n,%CurrentQuirk%
    FileAppend,%StaticReplacements%`r`n,%CurrentQuirk%
    FileAppend,:::`r`n,%CurrentQuirk%
    
    FileAppend,;;;`r`n,%CurrentQuirk%
    FileAppend,%DynamicReplacements%`r`n,%CurrentQuirk%
    FileAppend,;;;,%CurrentQuirk%
}
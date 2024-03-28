#UseHook

SetWorkingDir %A_ScriptDir%
LetterCount = 0
CurrentQuirk = normal.txt

FavF9 =
FavF10 =
FavF11 =
FavF12 =

lastTitle = 

LastCap = 1
LastSpace = 0

LetterCount = 0
NewSentence = 1

currentWord =

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

Prefix = no prefix

DynamicReplacements = 0
StaticReplacements = 0

guiItem = 2
maxGuiItem = 0

Loop, %A_ScriptDir%\Quirks\*.png, , 1  ; Recurse into subfolders.
{
    maxGuiItem:=maxGuiItem+1
}

BuildGUI()
Return

BuildGUI()
{
    global

    Gui, Destroy
    
    gui, font, s12, Verdana
    
    StringReplace, CurrentQuirkImage, CurrentQuirk, .txt, .png, All
    
    Gui, Add, Picture, x0 y0 w800 h600, img/Background.png
    
    Gui, Add, Text, x10 y10 w130 +BackgroundTrans, Current Quirk:
    Gui, Add, Picture, vCurrentImage x0 y50 w150 h200 +BackgroundTrans, %CurrentquirkImage%
    
    Gui, Add, Button, x10 y450 w130 h40 +BackgroundTrans gButtonSelect, Select File
    Gui, Add, Button, x10 y500 w130 h40 +BackgroundTrans, Reset
    Gui, Add, Button, x10 y550 w130 h40 +BackgroundTrans, Exit
    
    Gui, Add, Button, x660 y500 w130 h40 +BackgroundTrans gOpenHelp, Open Help
    Gui, Add, Button, x660 y550 w130 h40 +BackgroundTrans gOpenEditor, Open Editor
    
    guiItemLess:=guiItem-1
    guiItemMore:=guiItem+1
    
    Loop, %A_ScriptDir%\Quirks\*.png, , 1  ; Recurse into subfolders.
    {
        if(A_Index = guiItemLess)
        {
            Gui, Add, Picture, vQuirkImageo x153 y335 w150 h200 +BackgroundTrans, %A_LoopFileFullPath%
        }
        if(A_Index = guiItem)
        {
            Gui, Add, Picture, vQuirkImaget x325 y335 w150 h200 +BackgroundTrans, %A_LoopFileFullPath%
        }
        if(A_Index = guiItemMore)
        {
            Gui, Add, Picture, vQuirkImageh x497 y335 w150 h200 +BackgroundTrans, %A_LoopFileFullPath%
        }
    }
    Gui, Add, Button, x153 y560 w100 h40 +BackgroundTrans, Back
    Gui, Add, Button, x547 y560 w100 h40 +BackgroundTrans, More
    
    Gui, Add, Button, x153 y272 w150 h40 +BackgroundTrans gUseOne, use
    Gui, Add, Button, x325 y272 w150 h40 +BackgroundTrans gUseTwo, use
    Gui, Add, Button, x497 y272 w150 h40 +BackgroundTrans gUseThree, use
    
    Gui, Show, w800 h600 Center, QA
    
}

GuiClose:
ExitApp

guiUpdateImages()
{
    global
    
    guiItemLess:=guiItem-1
    guiItemMore:=guiItem+1
    
    Loop, %A_ScriptDir%\Quirks\*.png, , 1  ; Recurse into subfolders.
    {
        if(A_Index = guiItemLess)
        {
            GuiControl,, QuirkImageo, %A_LoopFileFullPath%
        }
        if(A_Index = guiItem)
        {
            GuiControl,, QuirkImaget, %A_LoopFileFullPath%
        }
        if(A_Index = guiItemMore)
        {
            GuiControl,, QuirkImageh, %A_LoopFileFullPath%
        }
    }
}

ButtonMore:
    if(guiItem < maxGuiItem-1)
    {
        guiItem:=guiItem+1
        guiUpdateImages()
    }
return

ButtonBack:
    if(guiItem > 2)
    {
        guiItem:=guiItem-1
        guiUpdateImages()
    }
return

UseOne:
    Loop, %A_ScriptDir%\Quirks\*.png, , 1  ; Recurse into subfolders.
    {
        if(A_Index = guiItemLess)
        {
            StringReplace, CurrentQuirk, A_LoopFileFullPath, .png, .txt, All
        }
    }
    ApplyQuirk()
return
    
UseTwo:
    Loop, %A_ScriptDir%\Quirks\*.png, , 1  ; Recurse into subfolders.
    {
        if(A_Index = guiItem)
        {
            StringReplace, CurrentQuirk, A_LoopFileFullPath, .png, .txt, All
        }
    }
    ApplyQuirk()
return

UseThree:
    Loop, %A_ScriptDir%\Quirks\*.png, , 1  ; Recurse into subfolders.
    {
        if(A_Index = guiItemMore)
        {
            StringReplace, CurrentQuirk, A_LoopFileFullPath, .png, .txt, All
        }
    }
    ApplyQuirk()
return

OpenEditor:
    Run, QuirkEditor.exe, %A_ScriptDir%
return

OpenHelp:
    run notepad Help File.txt 
return

ButtonSelect:
    ResetReplacements()
    
    FileSelectFile, CurrentQuirk

    ApplyQuirk()
    
    Return
return

ButtonReset:
    
    ResetReplacements()
    
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
    
    Prefix = no prefix
    
    CurrentQuirk = normal.txt
    
	BuildGUI()
    Return
    
return

ButtonExit:
MsgBox Goodbye!
ExitApp
return

ApplyQuirk()
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
    
    FileReadLine, Prefix, %CurrentQuirk%, 98
    
    ReadStaticReplacements()
    ReadDynamicReplacements()
    
    StringReplace, CurrentQuirkImage, CurrentQuirk, .txt, .png, All
    GuiControl,, CurrentImage, %CurrentQuirkImage%
}

ReadFavorite()
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
    
    FileReadLine, Prefix, %CurrentQuirk%, 98
    
    ReadStaticReplacements()
    ReadDynamicReplacements()
    
    
	BuildGUI()
    Return
}

ResetQuirk()
{
    global
    
    ResetReplacements()
    
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
    
    Prefix = no prefix
    
    CurrentQuirk = normal.txt
    
	StringReplace, CurrentQuirkImage, CurrentQuirk, .txt, .png, All
    GuiControl,, CurrentImage, %CurrentQuirkImage%
}

ReadStaticReplacements()
{
    global
    
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
                
                StaticReplacements += 1
                
                SR%StaticReplacements% := addToReplace1
                SRW%StaticReplacements% := addToReplace2
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
                
                DynamicReplacements += 1
                
                DR%DynamicReplacements% := addToReplace1
                DRW%DynamicReplacements% := addToReplace2
            }
            if (A_LoopReadLine = ";;;")
            {
                beginReadDynamic = 1
            }
        }
    }
}


ResetReplacements()
{
    global
    
    Loop DynamicReplacements
    {
        DR%A_Index% =
        DRW%A_Index% =
    }
    DynamicReplacements = 0
    
    Loop StaticReplacements
    {
        SR%A_Index% =
        SRW%A_Index% =
    }
    StaticReplacements = 0
}


CheckCaps(currently)
{
    global
    
    if (GetKeyState("Capslock", "T"))
    {
        return 0
    }
    
    isCap = currently
    
    if (Alternate = "Alternate true")
    {
        if LastCap = 1
        {
            LastCap = 0
            isCap = 0
        }
        else if LastCap = 0
        {
            LastCap = 1
        }
    }
    
    
    if(WordStart = "WordStart true")
    {
        if(LetterCount = 0)
        {
            isCap = 0
        }
    }
    
    if(SentenceStart = "SentenceStart true")
    {
        if(NewSentence = 1)
        {
            isCap = 0
            NewSentence = 0
        }
    }
    
;    LetterCount += 1
    LastSpace = 0
    
    return isCap
}

CheckDynamicReplace(KEY,isCap)
{
    global
    
    if(isCap = 1)
    {
        StringSplit, CC, KEY
        LetterCount += CC0
    }
    if(isCap = 2)
    {
        StringSplit, CC, KEY
        LetterCount += CC0
    }
    if(isCap = "S")
    {
        LetterCount += 1
    }
    
    currentWord := currentWord . KEY
}

CheckStaticReplace(WORD)
{
    global
    
    Loop %StaticReplacements%
    {
        checkSR := SR%A_Index%
        checkSRW := SRW%A_Index%
        
        if checkSR = %WORD%
        {
            Loop %LetterCount%
            {
                Send `b
            }
            SendInput, %checkSRW%
            WORD = %checkSRW%
            
            break
        }
    }
    
    Loop %DynamicReplacements%
    {
        checkThis := DR%A_Index%
        IfInString, WORD, %checkThis%
        {
            DRbecome := DRW%A_Index%
            StringReplace, newWord, WORD, %checkThis%, %DRbecome%, All
            StringLen, newCount, WORD
            Loop %newCount%
            {
                Send `b
            }
            SendInput, %newWord%
            WORD := newWord
        }
    }
    
    currentWord =
}


a::
    if (CheckCaps(1))
    {
        StringSplit, sendThese, Lettera
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettera,1)
    }
    else
    {
        StringSplit, sendThese, Letteraa
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettera,2)
    }
return

b::
    if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterb
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterb,1)
    }
    else
    {
        StringSplit, sendThese, Letterbb
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterb,2)
    }
return

c::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterc
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterc,1)
    }
    else
    {
        StringSplit, sendThese, Lettercc
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterc,2)
    }
return

d::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterd
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterd,1)
    }
    else
    {
        StringSplit, sendThese, Letterdd
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterd,2)
    }    
return

e::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Lettere
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettere,1)
    }
    else
    {
        StringSplit, sendThese, Letteree
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettere,2)
    }    
return

f::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterf
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterf,1)
    }
    else
    {
        StringSplit, sendThese, Letterff
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterf,2)
    }    
return

g::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterg
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterg,1)
    }
    else
    {
        StringSplit, sendThese, Lettergg
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterg,2)
    }    
return

h::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterh
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterh,1)
    }
    else
    {
        StringSplit, sendThese, Letterhh
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterh,2)
    }  
return

i::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letteri
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letteri,1)
    }
    else
    {
        StringSplit, sendThese, Letterii
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letteri,2)
    }
return

j::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterj
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterj,1)
    }
    else
    {
        StringSplit, sendThese, Letterjj
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterj,2)
    }
return

k::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterk
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterk,1)
    }
    else
    {
        StringSplit, sendThese, Letterkk
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterk,2)
    }
return

l::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterl
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterl,1)
    }
    else
    {
        StringSplit, sendThese, Letterll
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterl,2)
    }
return

m::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterm
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterm,1)
    }
    else
    {
        StringSplit, sendThese, Lettermm
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterm,2)
    }    
return

n::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Lettern
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettern,1)
    }
    else
    {
        StringSplit, sendThese, Letternn
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettern,2)
    }    
return

o::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Lettero
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettero,1)
    }
    else
    {
        StringSplit, sendThese, Letteroo
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettero,2)
    }    
    
return

p::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterp
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterp,1)
    }
    else
    {
        StringSplit, sendThese, Letterpp
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterp,2)
    }    
    
return

q::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterq
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterq,1)
    }
    else
    {
        StringSplit, sendThese, Letterqq
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterq,2)
    }
return

r::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterr
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterr,1)
    }
    else
    {
        StringSplit, sendThese, Letterrr
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterr,2)
    }    
return

s::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letters
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letters,1)
    }
    else
    {
        StringSplit, sendThese, Letterss
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letters,2)
    }    
return

t::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Lettert
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettert,1)
    }
    else
    {
        StringSplit, sendThese, Lettertt
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettert,2)
    }
return

u::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letteru
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letteru,1)
    }
    else
    {
        StringSplit, sendThese, Letteruu
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letteru,2)
    }
return

v::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterv
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterv,1)
    }
    else
    {
        StringSplit, sendThese, Lettervv
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterv,2)
    }
return

w::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterw
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterw,1)
    }
    else
    {
        StringSplit, sendThese, Letterww
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterw,2)
    }
return

x::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterx
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterx,1)
    }
    else
    {
        StringSplit, sendThese, Letterxx
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterx,2)
    }
return

y::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Lettery
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettery,1)
    }
    else
    {
        StringSplit, sendThese, Letteryy
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Lettery,2)
    }
return

z::
	if (CheckCaps(1))
    {
        StringSplit, sendThese, Letterz
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterz,1)
    }
    else
    {
        StringSplit, sendThese, Letterzz
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
        CheckDynamicReplace(Letterz,2)
    }
return

+a::
	StringSplit, sendThese, Letteraa
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letteraa,2)
return

+b::
	StringSplit, sendThese, Letterbb
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letteraa,2)
return

+c::
	StringSplit, sendThese, Lettercc
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Lettercc,2)
return

+d::
	StringSplit, sendThese, Letterdd
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterdd,2)
return

+e::
	StringSplit, sendThese, Letteree
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letteree,2)
return

+f::
	StringSplit, sendThese, Letterff
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterff,2)
return

+g::
	StringSplit, sendThese, Lettergg
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Lettergg,2)
return

+h::
	StringSplit, sendThese, Letterhh
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterhh,2)
return

+i::
	StringSplit, sendThese, Letterii
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterii,2)
return

+j::
	StringSplit, sendThese, Letterjj
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterjj,2)
return

+k::
	StringSplit, sendThese, Letterkk
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterkk,2)
return

+l::
	StringSplit, sendThese, Letterll
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterll,2)
return

+m::
	StringSplit, sendThese, Lettermm
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Lettermm,2)
return

+n::
	StringSplit, sendThese, Letternn
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letternn,2)
return

+o::
	StringSplit, sendThese, Letteroo
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letteroo,2)
return

+p::
	StringSplit, sendThese, Letterpp
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterpp,2)
return

+q::
	StringSplit, sendThese, Letterqq
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterqq,2)
return

+r::
	StringSplit, sendThese, Letterrr
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterrr,2)
return

+s::
	StringSplit, sendThese, Letterss
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterss,2)
return

+t::
	StringSplit, sendThese, Lettertt
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Lettertt,2)
return

+u::
	StringSplit, sendThese, Letteruu
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letteruu,2)
return

+v::
	StringSplit, sendThese, Lettervv
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Lettervv,2)
return

+w::
	StringSplit, sendThese, Letterww
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterww,2)
return

+x::
	StringSplit, sendThese, Letterxx
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterxx,2)
return

+y::
	StringSplit, sendThese, Letteryy
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letteryy,2)
return

+z::
	StringSplit, sendThese, Letterzz
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letterzz,2)
return

1::
	StringSplit, sendThese, Letter1
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letter1,1)
return

2::
	StringSplit, sendThese, Letter2
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letter2,1)
return

3::
	StringSplit, sendThese, Letter3
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letter3,1)
return

4::
	StringSplit, sendThese, Letter4
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letter4,1)
return

5::
	StringSplit, sendThese, Letter5
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letter5,1)
return

6::
	StringSplit, sendThese, Letter6
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letter6,1)
return

7::
	StringSplit, sendThese, Letter7
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letter7,1)
return

8::
	StringSplit, sendThese, Letter8
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letter8,1)
return

9::
	StringSplit, sendThese, Letter9
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letter9,1)
return

0::
	StringSplit, sendThese, Letter0
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(Letter0,1)
return

-::
	StringSplit, sendThese, LetterS1
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS1,"S")
return

=::
	StringSplit, sendThese, LetterS2
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS2,"S")
return

!::
	StringSplit, sendThese, LetterS3
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS3,"S")
return

@::
	StringSplit, sendThese, LetterS4
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS4,"S")
return

#::
	StringSplit, sendThese, LetterS5
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS5,"S")
return

$::
	StringSplit, sendThese, LetterS6
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS6,"S")
return

%::
	StringSplit, sendThese, LetterS7
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS7,"S")
return

^::
	StringSplit, sendThese, LetterS8
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS8,"S")
return

&::
	StringSplit, sendThese, LetterS9
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS9,"S")
return

*::
	StringSplit, sendThese, LetterS10
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS10,"S")
return

(::
	StringSplit, sendThese, LetterS11
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS11,"S")
return

)::
	StringSplit, sendThese, LetterS12
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS12,"S")
return

_::
	StringSplit, sendThese, LetterS13
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS13,"S")
return

+::
	StringSplit, sendThese, LetterS14
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS14,"S")
return

[::
	StringSplit, sendThese, LetterS15
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS15,"S")
return

]::
	StringSplit, sendThese, LetterS16
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS16,"S")
return

\::
	StringSplit, sendThese, LetterS17
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS17,"S")
return

`;::
	StringSplit, sendThese, LetterS18
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS18,"S")
return

'::
	StringSplit, sendThese, LetterS19
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS19,"S")
return

,::
	StringSplit, sendThese, LetterS20
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS20,"S")
return

.::
	StringSplit, sendThese, LetterS21
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    NewSentence = 1
    
    CheckDynamicReplace(LetterS21,"S")
return

/::
	StringSplit, sendThese, LetterS22
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS22,"S")
return

{::
	StringSplit, sendThese, LetterS23
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS23,"S")
return

}::
	StringSplit, sendThese, LetterS24
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS24,"S")
return

|::
	StringSplit, sendThese, LetterS25
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS25,"S")
return

`:::
	StringSplit, sendThese, LetterS26
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS26,"S")
return

"::
	StringSplit, sendThese, LetterS27
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS27,"S")
return

<::
	StringSplit, sendThese, LetterS28
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS28,"S")
return

>::
	StringSplit, sendThese, LetterS29
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS29,"S")
return

?::
	StringSplit, sendThese, LetterS30
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS30,"S")
return

`::
	StringSplit, sendThese, LetterS31
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS31,"S")
return

~::
	StringSplit, sendThese, LetterS32
        Loop %sendThese0%
        {
            sendThis := sendThese%A_Index%
            
            SendInput, {%sendThis%}
        }
    
    CheckDynamicReplace(LetterS32,"S")
return

backspace::
	Hotkey, backspace, Off
	
    if (Alternate = "Alternate true")
    {
        if(LastSpace = 0)
        {
            if(LastCap = 1)
            {
                LastCap = 0
            }
            else
            {
                LastCap = 1
            }
        }
    }
    
    if(LastSpace = 0)
    {
        LetterCount -= 1
    }
    
    StringSplit, BC, currentWord
    currentWord=
    Loop, BC0-1
    {
        currentWord := currentWord . BC%A_Index%
    }
    
	Send `b
	Hotkey, backspace, On
return

space::
	Hotkey, space, Off
	
    CheckStaticReplace(currentWord)
    
    LastSpace = 1
    
    LetterCount = 0
    
	Send {Space}
	Hotkey, space, On
return

Control::
    if(Prefix != "no prefix")
    {
        SendInput, %Prefix% 
    }
return

Enter::
	Hotkey, Enter, Off
    
    CheckStaticReplace(currentWord)
    
    if(Prefix != "no prefix")
    {
        Send {Enter}
        SendInput, %Prefix% 
    }
    else
    {
        Send {Enter}
    }
    
    LetterCount = 0
	
	Hotkey, Enter, On
return


F9::
    if(FavF9 = "")
    {
        FileSelectFile, FavF9
    }
    else
    {
        CurrentQuirk := FavF9
        WinGetActiveTitle, lastTitle
        ReadFavorite()
        WinActivate, %lastTitle%
    }
return
Shift & F9::
    FileSelectFile, FavF9
return

F10::
    if(FavF10 = "")
    {
        FileSelectFile, FavF10
    }
    else
    {
        CurrentQuirk := FavF10
        WinGetActiveTitle, lastTitle
        ReadFavorite()
        WinActivate, %lastTitle%
    }
return
Shift & F10::
    FileSelectFile, FavF10
return

F11::
    if(FavF11 = "")
    {
        FileSelectFile, FavF11
    }
    else
    {
        CurrentQuirk := FavF11
        WinGetActiveTitle, lastTitle
        ReadFavorite()
        WinActivate, %lastTitle%
    }
return
Shift & F11::
    FileSelectFile, FavF11
return

F12::
    if(FavF12 = "")
    {
        FileSelectFile, FavF12
    }
    else
    {
        CurrentQuirk := FavF12
        WinGetActiveTitle, lastTitle
        ReadFavorite()
        WinActivate, %lastTitle%
    }
return
Shift & F12::
    FileSelectFile, FavF12
return

F3::
    WinGetActiveTitle, lastTitle
    ResetQuirk()
    WinActivate, %lastTitle%
return


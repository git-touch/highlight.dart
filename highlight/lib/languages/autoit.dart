// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `autoit`.
Mode autoit(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  final Mode mode8 = Mode();
  final Mode mode9 = Mode();
  final Mode mode10 = Mode();
  final Mode mode11 = Mode();
  final Mode mode12 = Mode();
  final Mode mode13 = Mode();
  final Mode mode14 = Mode();
  final Mode mode15 = Mode();
  final Mode mode16 = Mode();
  final Mode mode17 = Mode();
  final Mode mode18 = Mode();
  mode0.variants = [mode1, mode4, mode7];
  mode1.scope = r'comment';
  mode1.begin = r';';
  mode1.end = r'$';
  mode1.contains = [mode2, mode3];
  mode1.relevance = 0;
  mode2.scope = r'doctag';
  mode2.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode2.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode2.excludeBegin = true;
  mode2.relevance = 0;
  mode3.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode4.scope = r'comment';
  mode4.begin = r'#cs';
  mode4.end = r'#ce';
  mode4.contains = [mode5, mode6];
  mode5.scope = r'doctag';
  mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode5.excludeBegin = true;
  mode5.relevance = 0;
  mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode7.scope = r'comment';
  mode7.begin = r'#comments-start';
  mode7.end = r'#comments-end';
  mode7.contains = [mode8, mode9];
  mode8.scope = r'doctag';
  mode8.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode8.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode8.excludeBegin = true;
  mode8.relevance = 0;
  mode9.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode10.begin = r'\$[A-z0-9_]+';
  mode11.scope = r'string';
  mode11.variants = [mode12, mode14];
  mode12.begin = r'"';
  mode12.end = r'"';
  mode12.contains = [mode13];
  mode13.begin = r'""';
  mode13.relevance = 0;
  mode14.begin = r"'";
  mode14.end = r"'";
  mode14.contains = [mode15];
  mode15.begin = r"''";
  mode15.relevance = 0;
  mode16.variants = [mode17, mode18];
  mode17.scope = r'number';
  mode17.begin = r'\b(0b[01]+)';
  mode17.relevance = 0;
  mode18.scope = r'number';
  mode18.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  mode18.relevance = 0;
  return Mode(
    name: r'AutoIt',
    caseInsensitive: true,
    illegal: r'\/\*',
    keywords: {
      r'keyword':
          r'ByRef Case Const ContinueCase ContinueLoop Dim Do Else ElseIf EndFunc EndIf EndSelect EndSwitch EndWith Enum Exit ExitLoop For Func Global If In Local Next ReDim Return Select Static Step Switch Then To Until Volatile WEnd While With',
      r'built_in':
          r'Abs ACos AdlibRegister AdlibUnRegister Asc AscW ASin Assign ATan AutoItSetOption AutoItWinGetTitle AutoItWinSetTitle Beep Binary BinaryLen BinaryMid BinaryToString BitAND BitNOT BitOR BitRotate BitShift BitXOR BlockInput Break Call CDTray Ceiling Chr ChrW ClipGet ClipPut ConsoleRead ConsoleWrite ConsoleWriteError ControlClick ControlCommand ControlDisable ControlEnable ControlFocus ControlGetFocus ControlGetHandle ControlGetPos ControlGetText ControlHide ControlListView ControlMove ControlSend ControlSetText ControlShow ControlTreeView Cos Dec DirCopy DirCreate DirGetSize DirMove DirRemove DllCall DllCallAddress DllCallbackFree DllCallbackGetPtr DllCallbackRegister DllClose DllOpen DllStructCreate DllStructGetData DllStructGetPtr DllStructGetSize DllStructSetData DriveGetDrive DriveGetFileSystem DriveGetLabel DriveGetSerial DriveGetType DriveMapAdd DriveMapDel DriveMapGet DriveSetLabel DriveSpaceFree DriveSpaceTotal DriveStatus EnvGet EnvSet EnvUpdate Eval Execute Exp FileChangeDir FileClose FileCopy FileCreateNTFSLink FileCreateShortcut FileDelete FileExists FileFindFirstFile FileFindNextFile FileFlush FileGetAttrib FileGetEncoding FileGetLongName FileGetPos FileGetShortcut FileGetShortName FileGetSize FileGetTime FileGetVersion FileInstall FileMove FileOpen FileOpenDialog FileRead FileReadLine FileReadToArray FileRecycle FileRecycleEmpty FileSaveDialog FileSelectFolder FileSetAttrib FileSetEnd FileSetPos FileSetTime FileWrite FileWriteLine Floor FtpSetProxy FuncName GUICreate GUICtrlCreateAvi GUICtrlCreateButton GUICtrlCreateCheckbox GUICtrlCreateCombo GUICtrlCreateContextMenu GUICtrlCreateDate GUICtrlCreateDummy GUICtrlCreateEdit GUICtrlCreateGraphic GUICtrlCreateGroup GUICtrlCreateIcon GUICtrlCreateInput GUICtrlCreateLabel GUICtrlCreateList GUICtrlCreateListView GUICtrlCreateListViewItem GUICtrlCreateMenu GUICtrlCreateMenuItem GUICtrlCreateMonthCal GUICtrlCreateObj GUICtrlCreatePic GUICtrlCreateProgress GUICtrlCreateRadio GUICtrlCreateSlider GUICtrlCreateTab GUICtrlCreateTabItem GUICtrlCreateTreeView GUICtrlCreateTreeViewItem GUICtrlCreateUpdown GUICtrlDelete GUICtrlGetHandle GUICtrlGetState GUICtrlRead GUICtrlRecvMsg GUICtrlRegisterListViewSort GUICtrlSendMsg GUICtrlSendToDummy GUICtrlSetBkColor GUICtrlSetColor GUICtrlSetCursor GUICtrlSetData GUICtrlSetDefBkColor GUICtrlSetDefColor GUICtrlSetFont GUICtrlSetGraphic GUICtrlSetImage GUICtrlSetLimit GUICtrlSetOnEvent GUICtrlSetPos GUICtrlSetResizing GUICtrlSetState GUICtrlSetStyle GUICtrlSetTip GUIDelete GUIGetCursorInfo GUIGetMsg GUIGetStyle GUIRegisterMsg GUISetAccelerators GUISetBkColor GUISetCoord GUISetCursor GUISetFont GUISetHelp GUISetIcon GUISetOnEvent GUISetState GUISetStyle GUIStartGroup GUISwitch Hex HotKeySet HttpSetProxy HttpSetUserAgent HWnd InetClose InetGet InetGetInfo InetGetSize InetRead IniDelete IniRead IniReadSection IniReadSectionNames IniRenameSection IniWrite IniWriteSection InputBox Int IsAdmin IsArray IsBinary IsBool IsDeclared IsDllStruct IsFloat IsFunc IsHWnd IsInt IsKeyword IsNumber IsObj IsPtr IsString Log MemGetStats Mod MouseClick MouseClickDrag MouseDown MouseGetCursor MouseGetPos MouseMove MouseUp MouseWheel MsgBox Number ObjCreate ObjCreateInterface ObjEvent ObjGet ObjName OnAutoItExitRegister OnAutoItExitUnRegister Ping PixelChecksum PixelGetColor PixelSearch ProcessClose ProcessExists ProcessGetStats ProcessList ProcessSetPriority ProcessWait ProcessWaitClose ProgressOff ProgressOn ProgressSet Ptr Random RegDelete RegEnumKey RegEnumVal RegRead RegWrite Round Run RunAs RunAsWait RunWait Send SendKeepActive SetError SetExtended ShellExecute ShellExecuteWait Shutdown Sin Sleep SoundPlay SoundSetWaveVolume SplashImageOn SplashOff SplashTextOn Sqrt SRandom StatusbarGetText StderrRead StdinWrite StdioClose StdoutRead String StringAddCR StringCompare StringFormat StringFromASCIIArray StringInStr StringIsAlNum StringIsAlpha StringIsASCII StringIsDigit StringIsFloat StringIsInt StringIsLower StringIsSpace StringIsUpper StringIsXDigit StringLeft StringLen StringLower StringMid StringRegExp StringRegExpReplace StringReplace StringReverse StringRight StringSplit StringStripCR StringStripWS StringToASCIIArray StringToBinary StringTrimLeft StringTrimRight StringUpper Tan TCPAccept TCPCloseSocket TCPConnect TCPListen TCPNameToIP TCPRecv TCPSend TCPShutdown, UDPShutdown TCPStartup, UDPStartup TimerDiff TimerInit ToolTip TrayCreateItem TrayCreateMenu TrayGetMsg TrayItemDelete TrayItemGetHandle TrayItemGetState TrayItemGetText TrayItemSetOnEvent TrayItemSetState TrayItemSetText TraySetClick TraySetIcon TraySetOnEvent TraySetPauseIcon TraySetState TraySetToolTip TrayTip UBound UDPBind UDPCloseSocket UDPOpen UDPRecv UDPSend VarGetType WinActivate WinActive WinClose WinExists WinFlash WinGetCaretPos WinGetClassList WinGetClientSize WinGetHandle WinGetPos WinGetProcess WinGetState WinGetText WinGetTitle WinKill WinList WinMenuSelectItem WinMinimizeAll WinMinimizeAllUndo WinMove WinSetOnTop WinSetState WinSetTitle WinSetTrans WinWait WinWaitActive WinWaitClose WinWaitNotActive',
      r'literal': r'True False And Null Not Or Default',
    },
    contains: [
      mode0,
      mode10,
      mode11,
      mode16,
      Mode(
        scope: r'meta',
        begin: r'#',
        end: r'$',
        keywords: {
          r'keyword': [
            r'EndRegion',
            r'forcedef',
            r'forceref',
            r'ignorefunc',
            r'include',
            r'include-once',
            r'NoTrayIcon',
            r'OnAutoItStartRegister',
            r'pragma',
            r'Region',
            r'RequireAdmin',
            r'Tidy_Off',
            r'Tidy_On',
            r'Tidy_Parameters',
          ],
        },
        contains: [
          Mode(begin: r'\\\n', relevance: 0),
          Mode(
            beginKeywords: r'include',
            keywords: {r'keyword': r'include'},
            end: r'$',
            contains: [
              mode11,
              Mode(
                scope: r'string',
                variants: [
                  Mode(begin: r'<', end: r'>'),
                  Mode(
                    begin: r'"',
                    end: r'"',
                    contains: [Mode(begin: r'""', relevance: 0)],
                  ),
                  Mode(
                    begin: r"'",
                    end: r"'",
                    contains: [Mode(begin: r"''", relevance: 0)],
                  ),
                ],
              ),
            ],
          ),
          mode11,
          mode0,
        ],
      ),
      Mode(scope: r'symbol', begin: r'@[A-z0-9_]+'),
      Mode(
        beginKeywords: r'Func',
        end: r'$',
        illegal: r'\$|\[|%',
        contains: [
          Mode(scope: r'title.function', begin: r'[a-zA-Z_]\w*', relevance: 0),
          Mode(
            scope: r'params',
            begin: r'\(',
            end: r'\)',
            contains: [mode10, mode11, mode16],
          ),
        ],
      ),
    ],
  );
}

// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode autoit(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  final Mode _mode7 = Mode();
  final Mode _mode8 = Mode();
  final Mode _mode9 = Mode();
  final Mode _mode10 = Mode();
  final Mode _mode11 = Mode();
  final Mode _mode12 = Mode();
  final Mode _mode13 = Mode();
  final Mode _mode14 = Mode();
  final Mode _mode15 = Mode();
  final Mode _mode16 = Mode();
  final Mode _mode17 = Mode();
  final Mode _mode18 = Mode();
  _mode0.variants = [_mode1, _mode4, _mode7];
  _mode1.scope = r'comment';
  _mode1.begin = r';';
  _mode1.end = r'$';
  _mode1.contains = [_mode2, _mode3];
  _mode1.relevance = 0;
  _mode2.scope = r'doctag';
  _mode2.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode2.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode2.excludeBegin = true;
  _mode2.relevance = 0;
  _mode3.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode4.scope = r'comment';
  _mode4.begin = r'#cs';
  _mode4.end = r'#ce';
  _mode4.contains = [_mode5, _mode6];
  _mode5.scope = r'doctag';
  _mode5.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode5.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode5.excludeBegin = true;
  _mode5.relevance = 0;
  _mode6.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode7.scope = r'comment';
  _mode7.begin = r'#comments-start';
  _mode7.end = r'#comments-end';
  _mode7.contains = [_mode8, _mode9];
  _mode8.scope = r'doctag';
  _mode8.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  _mode8.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  _mode8.excludeBegin = true;
  _mode8.relevance = 0;
  _mode9.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  _mode10.begin = r'\$[A-z0-9_]+';
  _mode11.scope = r'string';
  _mode11.variants = [_mode12, _mode14];
  _mode12.begin = r'"';
  _mode12.end = r'"';
  _mode12.contains = [_mode13];
  _mode13.begin = r'""';
  _mode13.relevance = 0;
  _mode14.begin = r"'";
  _mode14.end = r"'";
  _mode14.contains = [_mode15];
  _mode15.begin = r"''";
  _mode15.relevance = 0;
  _mode16.variants = [_mode17, _mode18];
  _mode17.scope = r'number';
  _mode17.begin = r'\b(0b[01]+)';
  _mode17.relevance = 0;
  _mode18.scope = r'number';
  _mode18.begin =
      r'(-?)(\b0[xX][a-fA-F0-9]+|(\b\d+(\.\d*)?|\.\d+)([eE][-+]?\d+)?)';
  _mode18.relevance = 0;
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
      _mode0,
      _mode10,
      _mode11,
      _mode16,
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
              _mode11,
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
          _mode11,
          _mode0,
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
            contains: [_mode10, _mode11, _mode16],
          ),
        ],
      ),
    ],
  );
}

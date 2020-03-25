%include "macros/setsym.inc"

; Memory
setcglob 0x007C8E17, new
setcglob 0x007CA090, memcpy
setcglob 0x007CA090, _memcpy
setcglob 0x00, memset
setcglob 0x00, _controlfp

; House
setcglob 0x00A8022C, HouseClassArray
;setcglob 0x00, HouseClassArray_Vector
setcglob 0x00A80238, HouseClassArray_Count
setcglob 0x00A83C9C, HouseTypesArray
;setcglob 0x00, HouseClass__Assign_Handicap
setcglob 0x004F9B50, HouseClass__Make_Ally
;setcglob 0x00, HouseClass__Make_Ally_House
;setcglob 0x00, HouseClass__Is_Ally
;setcglob 0x00, HouseClass__Is_Ally_HI
;setcglob 0x00, HouseClass__Is_Ally_HH
;setcglob 0x00, HouseClass__Is_Ally_Techno
;setcglob 0x00, HouseClass__Is_Player
;setcglob 0x00, HouseClass__Manual_Place
;setcglob 0x00, HouseClass__Begin_Production
;setcglob 0x00, HouseClass__MPlayer_Defeated
;setcglob 0x00, HouseClass__Blowup_All
;setcglob 0x00, HouseClass__House_From_HouseType
;setcglob 0x00, HouseTypeClass__From_Name
;setcglob 0x00, FactoryClass__Get_Product
;setcglob 0x00, FactoryClass__Has_Completed
setcglob 0x00687F10, Assign_Houses
;setcglob 0x005EEF70, Get_MP_Color
;setcglob 0x00, HouseType_From_Name
;setcglob 0x00, Read_Scenario_Houses
;setcglob 0x00, Player_Active
;setcglob 0x00, WaypointPathClass_GetWaypoint

; TechnoClass
;setcglob 0x00, TechnoClass_What_Weapon_Should_I_Use
;setcglob 0x00, TechnoClass__Can_Player_Fire
;setcglob 0x00, ObjectClass__InAir
;setcglob 0x00, Is_Techno
;setcglob 0x00, ObjectClass__Who_Can_Build_Me

; FootClass
;setcglob 0x00, Is_Foot

; AircraftClass
;setcglob 0x00, AircraftClass__Mission_Attack

; Arrays
;setcglob 0x00, UnitClassArray_Count
;setcglob 0x00, TeamTypesArray_Count
;setcglob 0x00, TeamTypesArray
;setcglob 0x00, PlayerColorMap
;setcglob 0x00, DynamicVectorClass_AircraftClass
;setcglob 0x00, CurrentObjectsArray
;setcglob 0x00, CurrentObjectsArray_Vector
;setcglob 0x00, CurrentObjectsArray_Count
;setcglob 0x00, SearchDirs
;setcglob 0x00, ArmorNames

; INI
setcglob 0x00535B30, INIClass__INIClass
setcglob 0x004741F0, INIClass__Load
setcglob 0x005295F0, INIClass__GetBool
setcglob 0x005276D0, INIClass__GetInt
setcglob 0x00528A10, INIClass__GetString
;setcglob 0x00, INIClass__GetFixed
;setcglob 0x00, INIClass__GetEntry
;setcglob 0x00, INIClass__EntryCount
setcglob 0x008870C0, INIClass_SUN_INI
;setcglob 0x00, INIClass__PutString
;setcglob 0x00, INIClass__Save
;setcglob 0x00, INIClass__Destroy
;setcglob 0x00, INIClass__Find_Section
;setcglob 0x00, INIClass__Find_Entry
;setcglob 0x00, RulesClass__Process
;setcglob 0x00, RulesClass__Objects
;setcglob 0x00, RulesClass__AudioVisual
;setcglob 0x00, Rules

; File
setcglob 0x004739F0, FileClass__FileClass
setcglob 0x00473C50, FileClass__Is_Available
;setcglob 0x00, FileClass__Open
;setcglob 0x00, FileClass__Close
;setcglob 0x00, CCFileClass__Close
;setcglob 0x00, FileClass__Write
;setcglob 0x00, FileClass__dtor
;setcglob 0x00, FileClass__Size
;setcglob 0x00, FileClass__Read
;setcglob 0x00, MonoClass__Printf
;setcglob 0x00, CCFileClass__CCFileClass
;setcglob 0x00, CCFileClass__Destroy
;setcglob 0x00, CCFileClass__Read
;setcglob 0x00, CCFileClass__Write
;setcglob 0x00, CCFileClass__Open
;setcglob 0x00, CCFileClass__Is_Available
;setcglob 0x00, CCFileClass__Size
;setcglob 0x00, RawFileClass__Create

; Session
setcglob 0x00A8B238, SessionClass_this
setcglob 0x00697B70, SessionClass__Create_Connections
setcglob 0x00A8E9A0, GameActive
setcglob 0x00A8B238, SessionType
setcglob 0x00A8B270, UnitCount
setcglob 0x00822CF4, TechLevel
setcglob 0x00A8B274, AIPlayers
setcglob 0x00A8B278, AIDifficulty
setcglob 0x00A8B31D, HarvesterTruce
setcglob 0x00A8B260, BridgeDestroy
setcglob 0x00A8B31F, FogOfWar
setcglob 0x00A8B261, Crates
setcglob 0x00A8B262, ShortGame
setcglob 0x00A8B258, Bases
setcglob 0x00A8B320, MCVRedeploy
setcglob 0x00A8B25C, Credits
setcglob 0x00A8EB60, GameSpeed
setcglob 0x00A8B26C, MultiEngineer
;setcglob 0x00, AlliesAllowed
setcglob 0x00A8ED84, Frame
;setcglob 0x00, GameIDNumber
setcglob 0x00A8B394, PlayerColor
;setcglob 0x00, TournamentGame
;setcglob 0x00, WOL_SERVER_PORT ; Hijacking this for Mumble

; EventClass
;setcglob 0x00, EventClass__EventClass_PlayerID
;setcglob 0x00, EventClass__EventClass_noarg
;setcglob 0x00, EventClass__EventClass_produce
;setcglob 0x00, EventClass__EventClass_Execute
;setcglob 0x00, Queue_Exit
;setcglob 0x00, DoList
;setcglob 0x00, OutList
;setcglob 0x00, FramesPerMinute
;setcglob 0x00, EventType_Offset
;setcglob 0x00, Print_CRCs

; Random
setcglob 0x00A8ED94, Seed
setcglob 0x0052FC20, Init_Random
;setcglob 0x00, Random2Class__operator

; Message
;setcglob 0x007E2C34, MessageListClass_this
setcglob 0x00A83D4C, PlayerPtr
;#setcglob 0x00572FE0, MessageListClass__Add_Message
;setcglob 0x00, MessageListClass__Concat_Message
;#setcglob 0x006B2330, Get_Message_Delay_Or_Duration
;setcglob 0x00, Message_Input_Player_Dead
;setcglob 0x00, Message_Input
;setcglob 0x00, MessageListClass__Manage
;setcglob 0x00, MessageListClass__Draw
;setcglob 0x00, MessageToIPaddr
;setcglob 0x00, MessageToPort
;setcglob 0x00, MessageToAFI


; Network
setcglob 0x00841F30, ListenPort
setcglob 0x007B2DB0, UDPInterfaceClass__UDPInterfaceClass
setcglob 0x00887628, WinsockInterface_this
setcglob 0x007B1DE0, WinsockInterfaceClass__Init
setcglob 0x007B30B0, UDPInterfaceClass__Open_Socket
setcglob 0x007B1BC0, WinsockInterfaceClass__Start_Listening
setcglob 0x007B1CA0, WinsockInterfaceClass__Discard_In_Buffers
setcglob 0x007B1D10, WinsockInterfaceClass__Discard_Out_Buffers
setcglob 0x00A8E9C0, IPXManagerClass_this
setcglob 0x00540C60, IPXManagerClass__Set_Timing
;setcglob 0x00, IPXManagerClass__Response_Time
setcglob 0x0053ECB0, IPXAddressClass__IPXAddressClass
;setcglob 0x00, IPXManagerClass__Connection_Name

setcglob 0x00A8B550, MaxAhead
setcglob 0x00A8B568, MaxMaxAhead
setcglob 0x00A8B554, FrameSendRate
setcglob 0x00A8DB9C, LatencyFudge
setcglob 0x00A8B558, RequestedFPS
;setcglob 0x00, PreCalcFrameRate
;setcglob 0x00, PreCalcMaxAhead
;setcglob 0x00, FramesPerSecond
;setcglob 0x00, AverageFPS
;setcglob 0x00, AverageFPS2
;setcglob 0x00, GameStartTime
setcglob 0x00A8B24C, ProtocolVersion
;setcglob 0x00, OutOfSync
setcglob 0x005DA6C0, Init_Network
setcglob 0x00A8DA84, NameNodes_CurrentSize
setcglob 0x00A8B54C, HumanPlayers
;setcglob 0x00, HumanNode_ActiveCount
;setcglob 0x00, GameOptionsClass_GameSpeed

; Scenario
setcglob 0x00A8B8E0, ScenarioName
setcglob 0x00683AB0, Start_Scenario
setcglob 0x00A8DA74, NameNodeVector
setcglob 0x00477EC0, NameNodeVector_Add
setcglob 0x00699980, SessionClass__Read_Scenario_Descriptions
;setcglob 0x00, ScenarioStuff
;setcglob 0x00, SelectedDifficulty
;setcglob 0x00, SpecialClass__Special
;setcglob 0x00, Create_Units
;setcglob 0x00, CriticalRandomNumber
;setcglob 0x00, MapSeed

; Save games
;setcglob 0x00, Load_Game

; Mouse
setcglob 0x00887640, WWMouseClas_Mouse
setcglob 0x0087F7E8, MouseClass_Map
;setcglob 0x00, WWKeyboard
;setcglob 0x00, Left_Shift_Key
;setcglob 0x00, Right_Shift_Key
;setcglob 0x00, WWKeyboardClass__Down
;setcglob 0x00, PrettyPrintKey
;setcglob 0x00, ForceFire1
;setcglob 0x00, ForceFire2
;setcglob 0x00, Left_Alt_Key
;setcglob 0x00, Right_Alt_Key
;setcglob 0x00, QMove_Key1
;setcglob 0x00, QMove_Key2

; MapClass
;setcglob 0x00, MapClass__GetCellFloorHeight
;setcglob 0x00, MapClass__Get_Target_Coord
;setcglob 0x00, MapClass__Cell_Is_Shrouded
;setcglob 0x00, MapClass__Coord_Cell
;setcglob 0x00, MapClass__Reveal_The_Map
;setcglob 0x00, MapClass__Fill_Map_With_Fog
;setcglob 0x00, GScreenClass__Input
;setcglob 0x00, GScreenClass__Render
;setcglob 0x00, TActionClass__Zoom_Out
;setcglob 0x00, TActionClass__Zoom_In
;setcglob 0x00, GScreenClass__Flag_To_Redraw
;setcglob 0x00, DisplayClass__Init_IO


; Tactical
;setcglob 0x00, TacticalClassMap
;setcglob 0x00, CellHeight
;setcglob 0x00, CellWidth
;setcglob 0x00, ViewPort_Dimensions
;setcglob 0x00, ViewPort_Dimensions_Left
;setcglob 0x00, ViewPort_Dimensions_Top
;setcglob 0x00, ViewPort_Dimensions_Right
;setcglob 0x00, ViewPort_Dimensions_Bottom
;setcglob 0x00, Tactical_618050
;setcglob 0x00, Tactical_AdjustForZ
;setcglob 0x00, Tactical_60F0F0


; Statistics
;setcglob 0x00, StatisticsPacketSent
;setcglob 0x00, WOLGameID
;setcglob 0x00, MultiScore__Present

; Others
;setcglob 0x00, VideoWindowed
;setcglob 0x00, VideoBackBuffer
;setcglob 0x00, ScreenHeight
;setcglob 0x00, ScreenWidth
;setcglob 0x00, MultiplayerDebug
;setcglob 0x00, ViewPortRect
;setcglob 0x00, VisibleRect
;setcglob 0x00, VisibleRect__FromLeft
;setcglob 0x00, VisibleRect__FromTop
;setcglob 0x00, VisibleRect__Width
;setcglob 0x00, VisibleRect__Height
;setcglob 0x00, Multiplayer_Debug_Print
setcglob 0x004068E0, WWDebug_Printf
;setcglob 0x00, hWndParent
;setcglob 0x00, Fancy_Text_Print
;setcglob 0x00, Simple_Text_Print
;setcglob 0x00, WndProc

; Sidebar
;setcglob 0x00, SidebarClass_Redraw_Buttons
;setcglob 0x00, SidebarLoc
;setcglob 0x00, LEFT_STRIP
;setcglob 0x00, RIGHT_STRIP
;setcglob 0x00, SidebarClass__StripClass__Flag_To_Redraw
;setcglob 0x00, SidebarClass__Blit
;setcglob 0x00, SidebarClass__Draw_It
;setcglob 0x00, SidebarClass__Init_IO
;setcglob 0x00, SidebarClass__Init_For_House

; clib
setcglob 0x7C8D20, __strcmpi
setcglob 0x7CDA90, strcmp
;setcglob 0x00, _strtok
;setcglob 0x00, strtok
setcglob 0x007C8EF4, _sprintf
setcglob 0x007C8EF4, sprintf
setcglob 0x007CB7BA, vsprintf
setcglob 0x007CA7D8, fprintf
setcglob 0x007C9602, fwrite

setcglob 0x007CA4B0, stristr_
;setcglob 0x00, strlen
;setcglob 0x00, strcpy
setcglob 0x007CB550, strncat
setcglob 0x007D5408, strdup
setcglob 0x007CA4B0, strstr
setcglob 0x007C8E17, operator_new
setcglob 0x007C8B3D, operator_delete
setcglob 0x007CA530, sscanf
;setcglob 0x00, atoi
setcglob 0x007D3374, calloc
setcglob 0x007C93E8, free
;setcglob 0x00, tolower
setcglob 0x007C9430, _malloc    ;don't declare malloc without a prefix, this will break SyringeSupport
;setcglob 0x00, realloc
setcglob 0x007CA845, fopen
setcglob 0x007CA75B, fclose
setcglob 0x007CB19C, fflush 

; winapi
setcglob 0x007C89B0, sendto
setcglob 0x007C89AA, recvfrom
setcglob 0x007C8962, htonl
setcglob 0x007C8968, htons

;;;
;setcglob 0x00, DynamicVectorClass__CommandClass
;setcglob 0x00, DynamicVectorClass__CommandClass__Add
setcglob 0x687CE0, MapSnapshot
;setcglob 0x00, Load_Keyboard_Hotkeys
;setcglob 0x00, Hotkeys
;setcglob 0x00, Hotkeys_Vector
;setcglob 0x00, Hotkeys_ActiveCount
;setcglob 0x00, Hotkeys_VectorMax
;setcglob 0x00, CCINIClass_Vector_Resize
;setcglob 0x00, AllianceCommandClass
;setcglob 0x00, CenterREventCommandClass
;setcglob 0x00, TogglePowerCommandClass
;setcglob 0x00, GuardCommandClass
;setcglob 0x00, ToggleSellCommandClass
;setcglob 0x00, DeployCommandClass
;setcglob 0x00, StopCommandClass
;setcglob 0x00, ScatterCommandClass
;setcglob 0x00, CenterBaseCommandClass
;setcglob 0x00, SelectViewCommandClass
;setcglob 0x00, ToggleRepairCommandClass
;setcglob 0x00, OptionsCommandClass
;setcglob 0x00, SetView1CommandClass
;setcglob 0x00, View1CommandClass
;setcglob 0x00, FollowCommandClass
;setcglob 0x00, WaypointCommandClass
;setcglob 0x00, DeleteWayPointCommandClass
;setcglob 0x00, SelectSameTypeCommandClass
;setcglob 0x00, SelectTeamCommandClass
;setcglob 0x00, CreateTeamCommandClass_Execute
;setcglob 0x00, CenterTeamCommandClass_Execute
;setcglob 0x00, ScreenCaptureCommandClass_Execute
;setcglob 0x00, Queue_Options

;WSOCK32
setcglob 0x007E1558, _imp__sendto
setcglob 0x007E154C, _imp__recvfrom

setcglob 0x007E1280, _imp__GetCommandLineA
setcglob 0x007E1220, _imp__LoadLibraryA
setcglob 0x007E1250, _imp__GetProcAddress
setcglob 0x007E11A4, _imp__GetCurrentProcess
setcglob 0x007E1530, _imp__timeGetTime
setcglob 0x007E12CC, _imp__GetStdHandle
setcglob 0x007E1344, _imp__WriteConsoleA
setcglob 0x007E1218, _imp__AllocConsole
setcglob 0x007E11E0, _imp__CloseHandle
setcglob 0x007E11C4, _imp__MultiByteToWideChar
setcglob 0x007E1240, _imp__GetModuleHandleA
setcglob 0x007E11A8, _imp__GetModuleFileNameA
setcglob 0x007E13E0, _imp__GetAsyncKeyState
setcglob 0x007E13F0, _imp__SetWindowPos
setcglob 0x007E1454, _imp__GetKeyNameTextA
setcglob 0x007E13E8, _imp__MapVirtualKeyA
setcglob 0x007E13E4, _imp__ToAscii
setcglob 0x007E13F0, SetWindowPos
setcglob 0x007E13CC, _imp__SetFocus
setcglob 0x007E13CC, SetFocus
;setcglob 0x00, InvalidateRect
;setcglob 0x00, _imp__ShowWindow
;setcglob 0x00, _imp__SetWindowLongA
;setcglob 0x00, _imp__GetWindowLongA
;setcglob 0x00, Top_Level_Exception_Filter
;setcglob 0x00, PrintException
setcglob 0x007E11F0, _imp__Sleep
setcglob 0x007E13EC, _imp__GetSystemMetrics
;setcglob 0x00, _imp__timeSetEvent
setcglob 0x007E1248, _imp__CreateMutexA
setcglob 0x007E1168, _imp__CreateEventA
setcglob 0x007E11F8, _imp__CreateThread
setcglob 0x007E11DC, _imp__WaitForSingleObject
setcglob 0x007E1198, _imp__ReleaseMutex
setcglob 0x007E1178, _imp__ResetEvent
setcglob 0x007E1234, _imp__SetEvent


; Theme
;setcglob 0x00, Theme__Stop

; Tutorial
;setcglob 0x00, TUTORIAL_INI_Name
;setcglob 0x00, Tutorials
;setcglob 0x00, TutorialActiveCount
;setcglob 0x00, TutorialMax
;setcglob 0x00, TutorialSorted

; Strings
;setcglob 0x00, Fetch_String

;KERNEL32
setcglob 0x007E111C, _imp__ReadFile
setcglob 0x007E11C0, _imp__SetFilePointer
setcglob 0x007E11BC, _imp__CreateFileA 


;setcglob 0x00, Current_Waypoint
;setcglob 0x00, Delete_Waypoint

;setcglob 0x00, CC_Draw_Shape
;setcglob 0x00, MixFileClass__CCFileClass__Retrieve
;setcglob 0x00, PrimarySurface
;setcglob 0x00, SidebarSurface
;setcglob 0x00, TempSurface
;setcglob 0x00, CompositeSurface
;setcglob 0x00, AlternateSurface
;setcglob 0x00, HiddenSurface
;setcglob 0x00, DSurface_FillRect
;setcglob 0x00, DSurface_Conversion_Type
;setcglob 0x00, Write_PCX_File


;=======================================
setcglob 0x007CD80F, start
setcglob 0x006BB9A0, WinMain@16
setcglob 0x007C899E, _imp__socket
setcglob 0x007CC2AC, mbstowcs
setcglob 0x00AC10C8, ObserverMode
setcglob 0x00A8B29C, PlayersCountries
setcglob 0x00A8B2BC, PlayersColors
setcglob 0x00A8B2DC, PlayersSpawns
setcglob 0x00A8B27C, PlayersHandicaps
setcglob 0x00A8B2FC, PlayersTeams
setcglob 0x005D5F30, Set_Game_Mode
setcglob 0x00A8B263, SuperWeapons
setcglob 0x00A8B23C, GameMode
setcglob 0x00A8DA78, NameNode
setcglob 0x008254DC, str_Options
setcglob 0x00833160, str_Video
setcglob 0x0089F978, WindowedMode
setcglob 0x008870C0, INIClass_RA2md_INI

;=======================================
setcglob 0x0050B6F0, HouseClass_ControlledByPlayer
setcglob 0x0050B730, HouseClass_ControlledByHuman
setcglob 0x00510ED0, HouseClass_FindByIndex
setcglob 0x004F9A50, HouseClass_IsAlliedWith
setcglob 0x004FAE50, HouseClass_Fire_SW
setcglob 0x0050BD10, HouseClass_ReshroudMap

setcglob 0x0087F7E8, MapClass_Instance
setcglob 0x00577D90, MapClass_Reveal
setcglob 0x00577AB0, MapClass_Reshroud

setcglob 0x00410A40, WarheadTypeClass_CompareByID


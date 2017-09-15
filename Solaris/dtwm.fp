###############################################################################
#
#  dtwm.fp
#
#  This file contains a full definition for the default front panel.
#
#  (c) Copyright 1993, 1994, 1995 Hewlett-Packard Company
#  (c) Copyright 1993, 1994, 1995 International Business Machines Corp.
#  Copyright (c) 1993, 2011, Oracle and/or its affiliates. All rights reserved.
#  (c) Copyright 1993, 1994, 1995 Novell, Inc.
#
# ident	"@(#)dtwm.fp.src	1.57	11/03/07 SMI"
#
###############################################################################
set DtDbVersion=1.0

PANEL FrontPanel
{
  DISPLAY_HANDLES	 True
  DISPLAY_MENU		 True
  DISPLAY_MINIMIZE	 True
  CONTROL_BEHAVIOR	 single_click
  DISPLAY_CONTROL_LABELS False
  HELP_TOPIC		 FPOnItemFrontPanel
  HELP_VOLUME		 FPanel
}


BOX Top
{
  CONTAINER_NAME	FrontPanel
  POSITION_HINTS	first
  HELP_TOPIC		FPOnItemBox
  HELP_VOLUME		FPanel
}


CONTROL Clock
{
  TYPE			clock
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	1
  ICON                  SDtEarth
  LABEL                 Web Browser
  PUSH_ACTION		WebBrowser
  DROP_ACTION		WebBrowser
  HELP_TOPIC		FPOnItemClock
  HELP_VOLUME		FPanel
}

SUBPANEL Links
{
  CONTAINER_NAME	Clock
  TITLE			Links
}

CONTROL PersonalBookmarks
{
  TYPE			icon
  CONTAINER_NAME	Links
  CONTAINER_TYPE	SUBPANEL
  ICON			SDturlfile
  POSITION_HINTS	3
  LABEL			Personal Bookmarks
  PUSH_ACTION		SDtPersonalBookmarks
  DROP_ACTION		SDtPersonalBookmarksAppend
  HELP_TOPIC		FPOnItemHome
  HELP_VOLUME		FPanel
}

CONTROL FindWebPage
{
	TYPE		file
	CONTAINER_NAME	Links
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	last
	FILE_NAME	/usr/dt/share/examples/bookmarks/Find_Web_Page
	ICON		SDtFindLink
	LABEL		Find Web Page
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL Date
{
  TYPE			date
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	2
  ICON			FpCM
  LABEL                 Calendar
  DATE_FORMAT		%b%n%e
  PUSH_ACTION		Dtcm
  PUSH_RECALL		True
  DROP_ACTION		DtcmInsert
  CLIENT_NAME		dtcm
  HELP_TOPIC		FPOnItemDate
  HELP_VOLUME		FPanel
}

SUBPANEL Cards
{
  CONTAINER_NAME	Date
  TITLE			Cards
}

CONTROL FindCard
{
	TYPE		icon
	CONTAINER_NAME	Cards
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	last
	ICON		SDtFindCard
	LABEL		Find Card
	PUSH_ACTION	ADDRESS_CARD_Find
	DROP_ACTION	ADDRESS_CARD_Find
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL Home
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	3
  ICON			Fphome
  LABEL			Home Folder
  PUSH_ACTION		DtfileHome
  DROP_ACTION		Dtfile
  HELP_TOPIC		FPOnItemHome
  HELP_VOLUME		FPanel
}

SUBPANEL Home
{
  CONTAINER_NAME	Home
  TITLE			Files
}

CONTROL OpenMedia
{
  TYPE                  icon
  CONTAINER_NAME        Home
  CONTAINER_TYPE        SUBPANEL
  POSITION_HINTS        2
  ICON                  SDtmedia.rmm
  LABEL                 Removable Media Manager
  PUSH_ACTION           Dtmediamgr     
  HELP_TOPIC            FPOnItemHome
  HELP_VOLUME           FPanel
}

CONTROL OpenFloppy
{
  TYPE                  icon
  CONTAINER_NAME        Home
  CONTAINER_TYPE        SUBPANEL
  POSITION_HINTS        2
  ICON                  SDtRM.ofp
  LABEL                 Open Floppy
  PUSH_ACTION           OpenFloppy
  HELP_TOPIC            FPOnItemHome
  HELP_VOLUME           FPanel
}


CONTROL Archive
{
	TYPE		icon
	CONTAINER_NAME	Home
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS  7
	ICON		Dtmagtp
	LABEL		Archive
	PUSH_ACTION	Tar
	DROP_ACTION	Tar
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL Crypt
{
	TYPE		icon
	CONTAINER_NAME	Home
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS  5
	ICON		Dtkey
	LABEL		Encryption...
	PUSH_ACTION	Crypt
	DROP_ACTION	Crypt
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL FileProperties
{
	TYPE		icon
	CONTAINER_NAME	Home
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS  4
	ICON		SDtF.prop
	LABEL		Properties...
	PUSH_ACTION	FileProperties
	DROP_ACTION	FileProperties
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL Compress
{
	TYPE		icon
	CONTAINER_NAME	Home
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS  6
	ICON		Dtcmprs
	LABEL		Compress File
	PUSH_ACTION	Compress
	DROP_ACTION	Compress
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL FindFile
{
	TYPE		icon
	CONTAINER_NAME	Home
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	last
	ICON		SDtFindFile
	LABEL		Find File
	PUSH_ACTION	SDtFind
	DROP_ACTION	SDtFind
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL Note
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	4
  ICON			SDtNoteEditor
  LABEL			Text Note
  PUSH_ACTION		Note
  DROP_ACTION		PutOnWorkspace
  HELP_TOPIC		TourSubpanels
  HELP_VOLUME		FPanel
}

SUBPANEL PersAppsSubpanel
{
  CONTAINER_NAME	Note
  TITLE			Applications
}

CONTROL TextEditor
{
  TYPE			icon
  CONTAINER_NAME	PersAppsSubpanel
  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	2
  ICON			Fppenpd
  LABEL			Text Editor
  PUSH_ACTION		Dtpad
  DROP_ACTION		Dtpad
  HELP_TOPIC		FPOnItemTextEditor
  HELP_VOLUME		FPanel
}

CONTROL Record
{
	TYPE		icon
	CONTAINER_NAME	PersAppsSubpanel
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	3
	ICON		SDtNoteRecorder
	LABEL		Voice Note
	PUSH_ACTION	Record
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL Applications
{
  TYPE			icon
  CONTAINER_NAME	PersAppsSubpanel
  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	last
  ICON			Fpapps
  LABEL			Applications
  PUSH_ACTION		Dtappmgr
  HELP_TOPIC		FPOnItemAppMgr
  HELP_VOLUME		FPanel
}

CONTROL Mail
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	5
  ICON			DtMail
  LABEL                 Mail
  ALTERNATE_ICON	DtMnew
  MONITOR_TYPE		mail
  DROP_ACTION       	Compose
  PUSH_ACTION		Dtmail
  PUSH_RECALL		true
  CLIENT_NAME		dtmail
  HELP_TOPIC		FPOnItemMail
  HELP_VOLUME		FPanel
}

SUBPANEL Mail
{
	CONTAINER_NAME	Mail
	TITLE		Mail
}

SWITCH           Switch
{
  CONTAINER_NAME	Top
  POSITION_HINTS	7
  NUMBER_OF_ROWS	2
  HELP_TOPIC		FPOnItemSwitch
  HELP_VOLUME		FPanel
}



CONTROL Lock
{
  TYPE			icon
  CONTAINER_NAME	Switch
  CONTAINER_TYPE	SWITCH
  POSITION_HINTS	1
  ICON			Fplock
  LABEL			Lock
  PUSH_ACTION		LockDisplay
  HELP_TOPIC		FPOnItemLock
  HELP_VOLUME		FPanel
}


CONTROL Busy
{
  TYPE			busy
  CONTAINER_NAME	Switch
  CONTAINER_TYPE	SWITCH
  POSITION_HINTS	2
  ICON			SDtEarth.s
  PUSH_ACTION		Do
  LABEL			Go...
  HELP_TOPIC		FPOnItemBusy
  HELP_VOLUME		FPanel
}


CONTROL Blank
{
  TYPE			blank
  CONTAINER_NAME	Switch
  CONTAINER_TYPE	SWITCH
  POSITION_HINTS	3
  ICON			FpblnkS
  HELP_TOPIC		FPOnItemSwitch
  HELP_VOLUME		FPanel
}


CONTROL Exit
{
  TYPE			icon
  CONTAINER_NAME	Switch
  CONTAINER_TYPE	SWITCH
  POSITION_HINTS	4
  ICON			Fpexit
  LABEL			Exit
  PUSH_ACTION		ExitSession
  HELP_TOPIC		FPOnItemExit
  HELP_VOLUME		FPanel
}






CONTROL Printer
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	9
  LABEL			Default
  ICON			Fpprnt
  PUSH_ACTION		DtPrint
  DROP_ACTION		DtPrint
  DROP_ANIMATION	PrinterDrop
  HELP_TOPIC		FPOnItemPrinter
  HELP_VOLUME		FPanel
}

SUBPANEL PersPrintersSubpanel
{
   CONTAINER_NAME	Printer
   TITLE		Personal Printers
}

CONTROL PrintManager
{
  TYPE			icon
  CONTAINER_NAME	PersPrintersSubpanel
  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	1
  ICON			FpPrtmg
  LABEL			Print Manager
  PUSH_ACTION		DtPrintManager
  DROP_ACTION		DtPrint
  DROP_ANIMATION	PrinterDrop
  HELP_TOPIC		_hometopic
  HELP_VOLUME		Printmgr
}

CONTROL PrinterAdministrator
{
  TYPE			icon
  CONTAINER_NAME	PersPrintersSubpanel
  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	2
  ICON			FpPrtmg
  LABEL			Printer Administrator 
  PUSH_ACTION		PrinterAdministratorDtspcd
}

CONTROL Style
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	10
  LABEL                 Desktop Controls
  ICON                  SDtactrls
  PUSH_ACTION		DtControls
  HELP_TOPIC		FPOnItemStyle
  HELP_VOLUME		FPanel
}

SUBPANEL Tools
{
	CONTAINER_NAME	Style
	TITLE		Tools
}

CONTROL DttermErrorlog
{
	TYPE		icon
	CONTAINER_NAME	Tools
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	2
	ICON		SDtErrors
	LABEL		CDE Error Log
	PUSH_ACTION	DttermErrorlog
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL CustomizeWorkspaceMenu
{
	TYPE		icon
	CONTAINER_NAME	Tools
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS  3
	ICON		SDtWsMenu
	LABEL		Customize Workspace Menu
	PUSH_ACTION	CustomizeWorkspaceMenu
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL AddItemToWorkspaceMenu
{
	TYPE		icon
	CONTAINER_NAME	Tools
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS  4
	ICON		SDtWsMenu
	LABEL		Add Item To Menu
	PUSH_ACTION	AddItemToMenu
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL FindProcess
{
	TYPE		icon
	CONTAINER_NAME	Tools
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	5
	ICON		SDtFindProcess
	LABEL		Find Process
	PUSH_ACTION	SDtProcess
	DROP_ACTION	SDtProcess
	PUSH_RECALL	true
	CLIENT_NAME	sdtprocess
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL HotkeyEditor
{
	TYPE		icon
	CONTAINER_NAME	Tools
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	last
	ICON		SDtHotkey
	LABEL		Hotkey Editor
	PUSH_ACTION	SDtHotkey
	DROP_ACTION	SDtHotkey
	PUSH_RECALL	true
	CLIENT_NAME	sdthotkey
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL PerformanceMeter
{
	TYPE		client
	CONTAINER_NAME	Top
	CONTAINER_TYPE	BOX
	POSITION_HINTS	11
	CLIENT_GEOMETRY	54x54
	CLIENT_NAME	fpperfmeter
	ICON		SDtPerf
	LABEL		Performance Meter
	PUSH_ACTION	SDtPerfmeterFrontPanel
	DROP_ACTION	SDtPerfmeter
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

#
# For compatibility, call this subpanel "Applications" instead of "Hosts".
#
SUBPANEL Applications
{
   CONTAINER_NAME	PerformanceMeter
   TITLE		Hosts
}

CONTROL ThisHost
{
	TYPE		file
	CONTAINER_NAME	Applications
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	2
	FILE_NAME	/usr/dt/share/examples/bookmarks/localhost
	ICON		Fpterm
	LABEL		This Host
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL Console
{
	TYPE		icon
	CONTAINER_NAME	Applications
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	4
	ICON		Fpterm
	LABEL		Console
	PUSH_ACTION	DttermConsole
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL SystemInfo
{
	TYPE		icon
	CONTAINER_NAME	Applications
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	3
	ICON		SDtsysinfo
	LABEL		System Info
	PUSH_ACTION	SDtWsinfo
	DROP_ACTION	SDtWsinfo
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL FindHost
{
	TYPE		icon
	CONTAINER_NAME	Applications
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	last
	ICON		SDtFindHost
	LABEL		Find Host
	PUSH_ACTION	HOST_Find
	DROP_ACTION	HOST_Find
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}


CONTROL Help
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	12
  ICON			Fphelp
  LABEL			Help Manager
  PUSH_ACTION		Dthelpview
  DROP_ACTION		Dthelpview
  HELP_TOPIC		FPOnItemHelpMgr
  HELP_VOLUME		FPanel
}

SUBPANEL HelpSubpanel
{
  CONTAINER_NAME	Help
  TITLE			Help
}

CONTROL HelpOverview
{
  TYPE			icon
  CONTAINER_NAME	HelpSubpanel
  CONTAINER_TYPE	SUBPANEL

  POSITION_HINTS	5

  ICON			Dthover
  LABEL			Desktop Introduction
  PUSH_ACTION		OpenDtIntro
  HELP_TOPIC		FPOnItemDtIntro
  HELP_VOLUME		FPanel
}

CONTROL FPHelp
{
  TYPE			icon
  CONTAINER_NAME	HelpSubpanel
  CONTAINER_TYPE	SUBPANEL

  POSITION_HINTS	6

  ICON			Fpfphlp
  LABEL			Front Panel Help
  PUSH_ACTION		FPHelp
  HELP_TOPIC		FPOnItemFPHelp
  HELP_VOLUME		FPanel
}

#
# OnItem help uses a pseudo push action FPOnItemHelp.  Dtwm is looking for
# an exact match on this push action string.  Do not localize this push action.
#

CONTROL OnItem
{
  TYPE			icon
  CONTAINER_NAME	HelpSubpanel
  CONTAINER_TYPE	SUBPANEL

  POSITION_HINTS	7

  ICON			DthonFP
  LABEL			On Item Help
  PUSH_ACTION		FPOnItemHelp
  HELP_TOPIC		FPOnItemOnItem
  HELP_VOLUME		FPanel
}

set DtAppMgrFolder=/var/dt/appconfig/appmanager/$DTUSERSESSION

CONTROL Information
{
  TYPE			file
  CONTAINER_NAME	HelpSubpanel
  CONTAINER_TYPE	SUBPANEL

  POSITION_HINTS	4

  ICON			Dtainfo
  LABEL			Information
  FILE_NAME		${DtAppMgrFolder}/Information
  HELP_TOPIC		TourSubpanels
  HELP_VOLUME		FPanel
}


CONTROL My_Oracle_Support
{
	TYPE		file
	CONTAINER_NAME	HelpSubpanel
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	3
	FILE_NAME	/usr/dt/share/examples/bookmarks/My_Oracle_Support
	ICON		SDturlweb
	LABEL		My Oracle Support
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL Oracle_Solaris_Documentation
{
	TYPE		file
	CONTAINER_NAME	HelpSubpanel
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	3
	FILE_NAME	/usr/dt/share/examples/bookmarks/Oracle_Solaris_Documentation
	ICON		SDturlweb
	LABEL		Oracle Solaris Documentation
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

CONTROL AnswerBook2
{
  TYPE			icon
  CONTAINER_NAME	HelpSubpanel
  CONTAINER_TYPE	SUBPANEL
  POSITION_HINTS	last
  ICON			SDtab2
  LABEL			AnswerBook2 
  PUSH_ACTION		SDTab2
  HELP_TOPIC		TourSubpanels
  HELP_VOLUME		FPanel
}


CONTROL Trash
{
  TYPE			icon
  CONTAINER_NAME	Top
  CONTAINER_TYPE	BOX
  POSITION_HINTS	13
  ICON			Fptrsh
  LABEL			Trash
  ALTERNATE_ICON	Fptrsh7
  FILE_NAME		$HOME/.dt/Trash/.trashinfo
  MONITOR_TYPE		file
  PUSH_ACTION		Dttrash
  DROP_ACTION		Dttrash
  DROP_ANIMATION	TrashDrop
  HELP_TOPIC		FPOnItemTrash
  HELP_VOLUME		FPanel
}

SUBPANEL Actions
{
  CONTAINER_NAME	Trash
  TITLE			Trash
}

CONTROL DtEmptyTrash
{
	TYPE		icon
	CONTAINER_NAME	Actions
	CONTAINER_TYPE	SUBPANEL
	POSITION_HINTS	last
	ICON		Fptrsh
	LABEL		Empty Trash Can
	PUSH_ACTION	DtEmptyTrash
	DROP_ACTION	DtEmptyTrash
	HELP_TOPIC	TourSubpanels
	HELP_VOLUME	FPanel
}

ANIMATION TrashDrop
{
   ANIMATION	Fptrsh1		100
   ANIMATION	Fptrsh2		200
   ANIMATION	Fptrsh3		100
   ANIMATION	Fptrsh4
   ANIMATION	Fptrsh5		800
   ANIMATION	Fptrsh6		200
   ANIMATION	Fptrsh7
   ANIMATION	Fptrsh
}

ANIMATION PrinterDrop
{
   ANIMATION	Fpprnt1		100
   ANIMATION	Fpprnt2		100
   ANIMATION	Fpprnt3		100
   ANIMATION	Fpprnt4		100
   ANIMATION	Fpprnt5		100
   ANIMATION	Fpprnt6		100
   ANIMATION	Fpprnt7		100
   ANIMATION	Fpprnt8		100
   ANIMATION	Fpprnt9		100
   ANIMATION	FpprntA		100
   ANIMATION	FpprntB		800
}


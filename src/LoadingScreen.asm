;https://trello.com/c/Q4NZKRjU/83

%include "macros/patch.inc"
%include "macros/hack.inc"
%include "macros/string.inc"

;Disable black points
@LJMP    0x640B8D, 0x640CE2

;Disable color points
@LJMP    0x640E78, 0x641071

;using PCX file instead PreviewPack
@HACK 0x55358E, PCXMapPreview
	StringZ str_PreviewFileName,   "Preview.pcx"
	push	str_PreviewFileName
	jmp 0x553597
@ENDHACK

@HACK 0x640CE2, PositionMapPreview
	xor eax,eax
	xor ecx,ecx
	mov	edx,[0x8A00A4]	;Screen width
	mov	esi,[0x8A00A8]	;Screen height
	jmp	0x640D36
@ENDHACK

@HACK 0x5539E9, LoadingScreen_SkipText
  	mov	ecx,[0xA8DA78]
  	mov	edx,[ecx]
	jmp	0x5540E7
@ENDHACK
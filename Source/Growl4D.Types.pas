unit Growl4D.Types;

interface

type
  TGrowlEnterAnimation = (geaFadeInDown, geaFadeIn, geaFadeInDownBig, geaFadeInLeft,
    geaFadeInLeftBig, geaFadeInRight, geaFadeInRightBig, geaFadeInUp, geaFadeInUpBig,
    geaBounceIn, geaBounceInDown, geaBounceInLeft, geaBounceInRight, geaBounceInUp,
    geaSlideInDown, geaSlideInLeft, geaSlideInRight, geaSlideInUp, geaFlip, geaFlipInX,
    geaFlipInY, geaLightSpeedIn, geaRotateIn, geaRotateInDownLeft, geaRotateInDownRight,
    geaRotateInUpLeft, geaRotateInUpRight, geaBounce, geaFlash, geaPulse, geaRubberBand,
    geaShake, geaSwing, geaTada, geaWobble, geaRollIn, geaZoomIn, geaZoomInDown,
    geaZoomInLeft, geaZoomInRight, geaZoomInUp);

  TGrowlExitAnimation = (geaBounceOut, geaBounceOutDown, geaBounceOutLeft, geaBounceOutRight,
    geaBounceOutUp, geaSlideOutDown, geaSlideOutLeft, geaSlideOutRight, geaSlideOutUp,
    geaFadeOut, geaFadeOutDown, geaFadeOutDownBig, geaFadeOutLeft, geaFadeOutLeftBig,
    geaFadeOutRight, geaFadeOutRightBig, geaFadeOutUp, geaFadeOutUpBig, geaFlipOutX,
    geaFlipOutY, geaLightSpeedOut, geaRotateOut, geaRotateOutDownLeft, geaRotateOutDownRight,
    geaRotateOutUpLeft, geaRotateOutUpRight, geaHinge, geaRollOut, geaZoomOut, geaZoomOutDown,
    geaZoomOutLeft, geaZoomOutRight, geaZoomOutUp);

  TGrowlIcon = (giNull, giLineconsHeart, giLineconsCloud, lineconsStar,
    giLineconsTv, giLineconsSound, giLineconsVideo, giLineconsTrash, giLineconsUser,
    giLineconsKey, giLineconsSearch, giLineconsSettings, giLineconsCamera,
    giLineconsTagd, giLineconsLock, giLineconsBulb, giLineconsPen, giLineconsDiamond,
    giLineconsDisplay, giLineconsLocation, giLineconsEye, giLineconsBubble, giLineconsStack,
    giLineconsCup, giLineconsPhone, giLineconsNews, giLineconsMail, giLineconsLike,
    giLineconsPhoto, giLineconsNoted, giLineconsClock, giLineconsPaperplane, giLineconsParams,
    giLineconsBanknote, giLineconsData, giLineconsMusic, giLineconsMegaphone, giLineconsStudy,
    giLineconsLab, giLineconsFood, giLineconsTShirt, giLineconsFire, giLineconsClip,
    giLineconsShop, giLineconsCalendar, giLineconsWalletd, giLineconsVynile,
    giLineconsTruck, giLineconsWorld, giFeatherEye, giFeatherPaperClip, giFeatherMail,
    giFeatherToggle, giFeatherLayout, giFeatherLink, giFeatherBell, giFeatherLock,
    giFeatherUnlock, giFeatherRibbon, giFeatherImage, giFeatherSignal, giFeatherTarget,
    giFeatherClipboard, giFeatherClock, giFeatherWatch, giFeatherAirPlay,
    giFeatherCamera, giFeatherVideo, giFeatherDisc, giFeatherPrinter, giFeatherMonitor,
    giFeatherServer, giFeatherCog, giFeatherHeart, giFeatherParagraph, giFeatherAlignJustify,
    giFeatherAlignLeft, giFeatherAlignCenter, giFeatherAlignRight, giFeatherBook, giFeatherLayers,
    giFeatherStack, giFeatherPaper, giFeatherPaperStack, giFeatherSearch, giFeatherZoomIn,
    giFeatherZoomOut, giFeatherReply, giFeatherCirclePlus, giFeatherCircleMinus,
    giFeatherCircleCheck, giFeatherCircleCross, giFeatherSquarePlus, giFeatherSquareMinus,
    giFeatherSquareCheck, giFeatherSquareCross, giFeatherMicrophone, giFeatherRecord,
    giFeatherSkipBack, giFeatherRewind, giFeatherPlay, giFeatherPause, giFeatherStop,
    giFeatherFastForward, giFeatherSkipForward, giFeatherShuffle, giFeatherRepeat,
    giFeatherFolder, giFeatherUmbrella, giFeatherMoon, giFeatherThermometer, giFeatherDrop,
    giFeatherSun, giFeatherCloud, giFeatherCloudUpload, giFeatherCloudDownload,
    giFeatherUpload, giFeatherDownload, giFeatherLocation, giFeatherMap, giFeatherBattery,
    giFeatherHead, giFeatherBriefcase, giFeatherSpeechBubble, giFeatherAnchor, giFeatherGlobe,
    giFeatherBox, giFeatherReload, giFeatherShare, giFeatherMarquee, giFeatherMarqueePlus,
    giFeatherMarqueeMinus, giFeatherTag, giFeatherPower, giFeatherCommand, giFeatherAlt,
    giFeatherEsc, giFeatherBarGraph, giFeatherPieGraph, giFeatherStar, giFeatherArrowLeft,
    giFeatherArrowRight, giFeatherArrowUp, giFeatherArrowDown, giFeatherVolume,
    giFeatherMute, giFeatherRight, giFeatherLeft, giFeatherGrid, giFeatherColumns,
    giFeatherLoader, giFeatherBag, giFeatherBan, giFeatherFlag, giFeatherTrash,
    giFeatherExpand, giFeatherContract, giFeatherMaximize, giFeatherMinimize, giFeatherPlus,
    giFeatherMinus, giFeatherCheck, giFeatherCross, giFeatherMove, giFeatherDelete,
    giFeatherMenu, giFeatherArchive, giFeatherInbox, giFeatherOutbox, giFeatherFile,
    giFeatherFileAdd, giFeatherFileSubtract, giFeatherHelp, giFeatherOpen, giFeatherEllipsis);

  TGrowlPosition = (gpLeft, gpCenter, gpRight, gpTop, gpBottom);

  TGrowlType = (gtInfo, gtSuccess, gtNotice, gtError, gtSimple, gtInfoSat,
    gtSuccessSat, gtNoticeSat, gtErrorSat);

  TGrowlEnterAnimationHelper = record helper for TGrowlEnterAnimation
  public
    function ToString: string;
  end;

  TGrowlExitAnimationHelper = record helper for TGrowlExitAnimation
  public
    function ToString: string;
  end;

  TGrowlPositionHelper = record helper for TGrowlPosition
  public
    function ToString: string;
  end;

  TGrowlTypeHelper = record helper for TGrowlType
  public
    function ToString: string;
  end;

implementation

{ TGrowlEnterAnimationHelper }

function TGrowlEnterAnimationHelper.ToString: string;
begin
  Result := 'fadeIn';
  case Self of
    geaFadeInDown: Result := 'fadeInDown';
    geaFadeIn: Result := 'fadeIn';
    geaFadeInDownBig: Result := 'fadeInDownBig';
    geaFadeInLeft: Result := 'fadeInLeft';
    geaFadeInLeftBig: Result := 'fadeInLeftBig';
    geaFadeInRight: Result := 'fadeInRight';
    geaFadeInRightBig: Result := 'fadeInRightBig';
    geaFadeInUp: Result := 'fadeInUp';
    geaFadeInUpBig: Result := 'fadeInUpBig';
    geaBounceIn: Result := 'bounceIn';
    geaBounceInDown: Result := 'bounceInDown';
    geaBounceInLeft: Result := 'bounceInLeft';
    geaBounceInRight: Result := 'bounceInRight';
    geaBounceInUp: Result := 'bounceInUp';
    geaSlideInDown: Result := 'slideInDown';
    geaSlideInLeft: Result := 'slideInLeft';
    geaSlideInRight: Result := 'slideInRight';
    geaSlideInUp: Result := 'slideInUp';
    geaFlip: Result := 'flip';
    geaFlipInX: Result := 'flipInX';
    geaFlipInY: Result := 'flipInY';
    geaLightSpeedIn: Result := 'lightSpeedIn';
    geaRotateIn: Result := 'rotateIn';
    geaRotateInDownLeft: Result := 'rotateInDownLeft';
    geaRotateInDownRight: Result := 'rotateInDownRight';
    geaRotateInUpLeft: Result := 'rotateInUpLeft';
    geaRotateInUpRight: Result := 'rotateInUpRight';
    geaBounce: Result := 'bounce';
    geaFlash: Result := 'flash';
    geaPulse: Result := 'pulse';
    geaRubberBand: Result := 'rubberBand';
    geaShake: Result := 'shake';
    geaSwing: Result := 'swing';
    geaTada: Result := 'tada';
    geaWobble: Result := 'wobble';
    geaRollIn: Result := 'rollIn';
    geaZoomIn: Result := 'zoomIn';
    geaZoomInDown: Result := 'zoomInDown';
    geaZoomInLeft: Result := 'zoomInLeft';
    geaZoomInRight: Result := 'zoomInRight';
    geaZoomInUp: Result := 'zoomInUp';
  end;
end;

{ TGrowlExitAnimationHelper }

function TGrowlExitAnimationHelper.ToString: string;
begin
  Result := 'fadeOut';
  case Self of
    geaBounceOut: Result := 'bounceOut';
    geaBounceOutDown: Result := 'bounceOutDown';
    geaBounceOutLeft: Result := 'bounceOutLeft';
    geaBounceOutRight: Result := 'bounceOutRight';
    geaBounceOutUp: Result := 'bounceOutUp';
    geaSlideOutDown: Result := 'slideOutDown';
    geaSlideOutLeft: Result := 'slideOutLeft';
    geaSlideOutRight: Result := 'slideOutRight';
    geaSlideOutUp: Result := 'slideOutUp';
    geaFadeOut: Result := 'fadeOut';
    geaFadeOutDown: Result := 'fadeOutDown';
    geaFadeOutDownBig: Result := 'fadeOutDownBig';
    geaFadeOutLeft: Result := 'fadeOutLeft';
    geaFadeOutLeftBig: Result := 'fadeOutLeftBig';
    geaFadeOutRight: Result := 'fadeOutRight';
    geaFadeOutRightBig: Result := 'fadeOutRightBig';
    geaFadeOutUp: Result := 'fadeOutUp';
    geaFadeOutUpBig: Result := 'fadeOutUpBig';
    geaFlipOutX: Result := 'flipOutX';
    geaFlipOutY: Result := 'flipOutY';
    geaLightSpeedOut: Result := 'lightSpeedOut';
    geaRotateOut: Result := 'rotateOut';
    geaRotateOutDownLeft: Result := 'rotateOutDownLeft';
    geaRotateOutDownRight: Result := 'rotateOutDownRight';
    geaRotateOutUpLeft: Result := 'rotateOutUpLeft';
    geaRotateOutUpRight: Result := 'rotateOutUpRight';
    geaHinge: Result := 'hinge';
    geaRollOut: Result := 'rollOut';
    geaZoomOut: Result := 'zoomOut';
    geaZoomOutDown: Result := 'zoomOutDown';
    geaZoomOutLeft: Result := 'zoomOutLeft';
    geaZoomOutRight: Result := 'zoomOutRight';
    geaZoomOutUp: Result := 'zoomOutUp';
  end;
end;

{ TGrowlPositionHelper }

function TGrowlPositionHelper.ToString: string;
begin
  Result := 'center';
  case Self of
    gpLeft: Result := 'left';
    gpCenter: Result := 'center';
    gpRight: Result := 'right';
    gpTop: Result := 'top';
    gpBottom: Result := 'bottom';
  end;
end;

{ TGrowlTypeHelper }

function TGrowlTypeHelper.ToString: string;
begin
  case Self of
    gtInfo: Result := 'info';
    gtSuccess: Result := 'success';
    gtNotice: Result := 'notice';
    gtError: Result := 'error';
    gtSimple: Result := 'simple';
    gtInfoSat: Result := 'info_sat';
    gtSuccessSat: Result := 'success_sat';
    gtNoticeSat: Result := 'notice_sat';
    gtErrorSat: Result := 'error_sat';
  end;
end;

end.

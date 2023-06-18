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

  TGrowlIconHelper = record helper for TGrowlIcon
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

{ TGrowlIconHelper }

function TGrowlIconHelper.ToString: string;
begin
  Result := '-null';
  case Self of
    giNull: Result := '-null';
    giLineconsHeart: Result := 'linecons-heart';
    giLineconsCloud: Result := 'linecons-cloud';
    lineconsStar: Result := 'linecons-star';
    giLineconsTv: Result := 'linecons-tv';
    giLineconsSound: Result := 'linecons-sound';
    giLineconsVideo: Result := 'linecons-video';
    giLineconsTrash: Result := 'linecons-trash';
    giLineconsUser: Result := 'linecons-user';
    giLineconsKey: Result := 'linecons-key';
    giLineconsSearch: Result := 'linecons-search';
    giLineconsSettings: Result := 'linecons-settings';
    giLineconsCamera: Result := 'linecons-camera';
    giLineconsTagd: Result := 'linecons-tagd';
    giLineconsLock: Result := 'linecons-lock';
    giLineconsBulb: Result := 'linecons-bulb';
    giLineconsPen: Result := 'linecons-pen';
    giLineconsDiamond: Result := 'linecons-diamond';
    giLineconsDisplay: Result := 'linecons-display';
    giLineconsLocation: Result := 'linecons-location';
    giLineconsEye: Result := 'linecons-eye';
    giLineconsBubble: Result := 'linecons-bubble';
    giLineconsStack: Result := 'linecons-stack';
    giLineconsCup: Result := 'linecons-cup';
    giLineconsPhone: Result := 'linecons-phone';
    giLineconsNews: Result := 'linecons-news';
    giLineconsMail: Result := 'linecons-mail';
    giLineconsLike: Result := 'linecons-like';
    giLineconsPhoto: Result := 'linecons-photo';
    giLineconsNoted: Result := 'linecons-noted';
    giLineconsClock: Result := 'linecons-clock';
    giLineconsPaperplane: Result := 'linecons-paperplane';
    giLineconsParams: Result := 'linecons-params';
    giLineconsBanknote: Result := 'linecons-banknote';
    giLineconsData: Result := 'linecons-data';
    giLineconsMusic: Result := 'linecons-music';
    giLineconsMegaphone: Result := 'linecons-megaphone';
    giLineconsStudy: Result := 'linecons-study';
    giLineconsLab: Result := 'linecons-lab';
    giLineconsFood: Result := 'linecons-food';
    giLineconsTShirt: Result := 'linecons-t-shirt';
    giLineconsFire: Result := 'linecons-fire';
    giLineconsClip: Result := 'linecons-clip';
    giLineconsShop: Result := 'linecons-shop';
    giLineconsCalendar: Result := 'linecons-calendar';
    giLineconsWalletd: Result := 'linecons-walletd';
    giLineconsVynile: Result := 'linecons-vynile';
    giLineconsTruck: Result := 'linecons-truck';
    giLineconsWorld: Result := 'linecons-world';
    giFeatherEye: Result := 'feather-eye';
    giFeatherPaperClip: Result := 'feather-paper-clip';
    giFeatherMail: Result := 'feather-mail';
    giFeatherToggle: Result := 'feather-toggle';
    giFeatherLayout: Result := 'feather-layout';
    giFeatherLink: Result := 'feather-link';
    giFeatherBell: Result := 'feather-bell';
    giFeatherLock: Result := 'feather-lock';
    giFeatherUnlock: Result := 'feather-unlock';
    giFeatherRibbon: Result := 'feather-ribbon';
    giFeatherImage: Result := 'feather-image';
    giFeatherSignal: Result := 'feather-signal';
    giFeatherTarget: Result := 'feather-target';
    giFeatherClipboard: Result := 'feather-clipboard';
    giFeatherClock: Result := 'feather-clock';
    giFeatherWatch: Result := 'feather-watch';
    giFeatherAirPlay: Result := 'feather-air-play';
    giFeatherCamera: Result := 'feather-camera';
    giFeatherVideo: Result := 'feather-video';
    giFeatherDisc: Result := 'feather-disc';
    giFeatherPrinter: Result := 'feather-printer';
    giFeatherMonitor: Result := 'feather-monitor';
    giFeatherServer: Result := 'feather-server';
    giFeatherCog: Result := 'feather-cog';
    giFeatherHeart: Result := 'feather-heart';
    giFeatherParagraph: Result := 'feather-paragraph';
    giFeatherAlignJustify: Result := 'feather-align-justify';
    giFeatherAlignLeft: Result := 'feather-align-left';
    giFeatherAlignCenter: Result := 'feather-align-center';
    giFeatherAlignRight: Result := 'feather-align-right';
    giFeatherBook: Result := 'feather-book';
    giFeatherLayers: Result := 'feather-layers';
    giFeatherStack: Result := 'feather-stack';
    giFeatherPaper: Result := 'feather-paper';
    giFeatherPaperStack: Result := 'feather-paper-stack';
    giFeatherSearch: Result := 'feather-search';
    giFeatherZoomIn: Result := 'feather-zoom-in';
    giFeatherZoomOut: Result := 'feather-zoom-out';
    giFeatherReply: Result := 'feather-reply';
    giFeatherCirclePlus: Result := 'feather-circle-plus';
    giFeatherCircleMinus: Result := 'feather-circle-minus';
    giFeatherCircleCheck: Result := 'feather-circle-check';
    giFeatherCircleCross: Result := 'feather-circle-cross';
    giFeatherSquarePlus: Result := 'feather-square-plus';
    giFeatherSquareMinus: Result := 'feather-square-minus';
    giFeatherSquareCheck: Result := 'feather-square-check';
    giFeatherSquareCross: Result := 'feather-square-cross';
    giFeatherMicrophone: Result := 'feather-microphone';
    giFeatherRecord: Result := 'feather-record';
    giFeatherSkipBack: Result := 'feather-skip-back';
    giFeatherRewind: Result := 'feather-rewind';
    giFeatherPlay: Result := 'feather-play';
    giFeatherPause: Result := 'feather-pause';
    giFeatherStop: Result := 'feather-stop';
    giFeatherFastForward: Result := 'feather-fast-forward';
    giFeatherSkipForward: Result := 'feather-skip-forward';
    giFeatherShuffle: Result := 'feather-shuffle';
    giFeatherRepeat: Result := 'feather-repeat';
    giFeatherFolder: Result := 'feather-folder';
    giFeatherUmbrella: Result := 'feather-umbrella';
    giFeatherMoon: Result := 'feather-moon';
    giFeatherThermometer: Result := 'feather-thermometer';
    giFeatherDrop: Result := 'feather-drop';
    giFeatherSun: Result := 'feather-sun';
    giFeatherCloud: Result := 'feather-cloud';
    giFeatherCloudUpload: Result := 'feather-cloud-upload';
    giFeatherCloudDownload: Result := 'feather-cloud-download';
    giFeatherUpload: Result := 'feather-upload';
    giFeatherDownload: Result := 'feather-download';
    giFeatherLocation: Result := 'feather-location';
    giFeatherMap: Result := 'feather-map';
    giFeatherBattery: Result := 'feather-battery';
    giFeatherHead: Result := 'feather-head';
    giFeatherBriefcase: Result := 'feather-briefcase';
    giFeatherSpeechBubble: Result := 'feather-speech-bubble';
    giFeatherAnchor: Result := 'feather-anchor';
    giFeatherGlobe: Result := 'feather-globe';
    giFeatherBox: Result := 'feather-box';
    giFeatherReload: Result := 'feather-reload';
    giFeatherShare: Result := 'feather-share';
    giFeatherMarquee: Result := 'feather-marquee';
    giFeatherMarqueePlus: Result := 'feather-marquee-plus';
    giFeatherMarqueeMinus: Result := 'feather-marquee-minus';
    giFeatherTag: Result := 'feather-tag';
    giFeatherPower: Result := 'feather-power';
    giFeatherCommand: Result := 'feather-command';
    giFeatherAlt: Result := 'feather-alt';
    giFeatherEsc: Result := 'feather-esc';
    giFeatherBarGraph: Result := 'feather-bar-graph';
    giFeatherPieGraph: Result := 'feather-pie-graph';
    giFeatherStar: Result := 'feather-star';
    giFeatherArrowLeft: Result := 'feather-arrow-left';
    giFeatherArrowRight: Result := 'feather-arrow-right';
    giFeatherArrowUp: Result := 'feather-arrow-up';
    giFeatherArrowDown: Result := 'feather-arrow-down';
    giFeatherVolume: Result := 'feather-volume';
    giFeatherMute: Result := 'feather-mute';
    giFeatherRight: Result := 'feather-right';
    giFeatherLeft: Result := 'feather-left';
    giFeatherGrid: Result := 'feather-grid';
    giFeatherColumns: Result := 'feather-columns';
    giFeatherLoader: Result := 'feather-loader';
    giFeatherBag: Result := 'feather-bag';
    giFeatherBan: Result := 'feather-ban';
    giFeatherFlag: Result := 'feather-flag';
    giFeatherTrash: Result := 'feather-trash';
    giFeatherExpand: Result := 'feather-expand';
    giFeatherContract: Result := 'feather-contract';
    giFeatherMaximize: Result := 'feather-maximize';
    giFeatherMinimize: Result := 'feather-minimize';
    giFeatherPlus: Result := 'feather-plus';
    giFeatherMinus: Result := 'feather-minus';
    giFeatherCheck: Result := 'feather-check';
    giFeatherCross: Result := 'feather-cross';
    giFeatherMove: Result := 'feather-move';
    giFeatherDelete: Result := 'feather-delete';
    giFeatherMenu: Result := 'feather-menu';
    giFeatherArchive: Result := 'feather-archive';
    giFeatherInbox: Result := 'feather-inbox';
    giFeatherOutbox: Result := 'feather-outbox';
    giFeatherFile: Result := 'feather-file';
    giFeatherFileAdd: Result := 'feather-file-add';
    giFeatherFileSubtract: Result := 'feather-file-subtract';
    giFeatherHelp: Result := 'feather-help';
    giFeatherOpen: Result := 'feather-open';
    giFeatherEllipsis: Result := 'feather-ellipsis';
  end;
end;

end.

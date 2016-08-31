/*
* IoniconsSwift (ionicons.swift)
*
* Copyright (C) 2015 ONcast, LLC. All Rights Reserved.
* Created by Josh Baker (joshbaker77@gmail.com)
*
* This software may be modified and distributed under the terms
* of the MIT license.  See the LICENSE file for details.
*
* The Ionicons TTF font file was originated from http://ionicons.com/
*/
import UIKit

private var loaded = false
private func load(){
	if loaded {
		return
	}
	loaded = true
    let inData = try? Data(contentsOf: URL(fileURLWithPath: Bundle(identifier: "com.oncast.IoniconsSwift")!.path(forResource: "ionicons", ofType: "ttf")!))
	var error : Unmanaged<CFError>?
	let provider = CGDataProvider(data: inData as! CFData)
	let font = CGFont(provider!)
	if !CTFontManagerRegisterGraphicsFont(font, &error) {
		let errorDescription = CFErrorCopyDescription(error!.takeRetainedValue())
		NSLog("Failed to load font: %@", errorDescription as! String);
	}
}
public enum Ionicons : UInt16, CustomStringConvertible {
	public func label(_ size: CGFloat, color: UIColor = UIColor.black) -> UILabel {
		load()
		let label = UILabel()
		label.font = UIFont(name: "ionicons", size: size)
		label.text = description
		label.textColor = color
		label.textAlignment = .center
		label.backgroundColor = UIColor.clear
		label.frame = CGRect(x: 0, y: 0, width: size, height: size)
		label.accessibilityElementsHidden = true
		return label
	}
	public func image(_ size: CGFloat, color: UIColor = UIColor.black) -> UIImage {
		let label = self.label(size, color: color)
		UIGraphicsBeginImageContextWithOptions(label.bounds.size, false, UIScreen.main.scale)
		label.layer.render(in: UIGraphicsGetCurrentContext()!)
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext();
		return image!
	}
    public var description : String {
        return String(describing:UnicodeScalar(rawValue))
    }

	case none = 0x0
	case alert = 0xf101
	case alertCircled = 0xf100
	case androidAdd = 0xf2c7
	case androidAddCircle = 0xf359
	case androidAlarmClock = 0xf35a
	case androidAlert = 0xf35b
	case androidApps = 0xf35c
	case androidArchive = 0xf2c9
	case androidArrowBack = 0xf2ca
	case androidArrowDown = 0xf35d
	case androidArrowDropdown = 0xf35f
	case androidArrowDropdownCircle = 0xf35e
	case androidArrowDropleft = 0xf361
	case androidArrowDropleftCircle = 0xf360
	case androidArrowDropright = 0xf363
	case androidArrowDroprightCircle = 0xf362
	case androidArrowDropup = 0xf365
	case androidArrowDropupCircle = 0xf364
	case androidArrowForward = 0xf30f
	case androidArrowUp = 0xf366
	case androidAttach = 0xf367
	case androidBar = 0xf368
	case androidBicycle = 0xf369
	case androidBoat = 0xf36a
	case androidBookmark = 0xf36b
	case androidBulb = 0xf36c
	case androidBus = 0xf36d
	case androidCalendar = 0xf2d1
	case androidCall = 0xf2d2
	case androidCamera = 0xf2d3
	case androidCancel = 0xf36e
	case androidCar = 0xf36f
	case androidCart = 0xf370
	case androidChat = 0xf2d4
	case androidCheckbox = 0xf374
	case androidCheckboxBlank = 0xf371
	case androidCheckboxOutline = 0xf373
	case androidCheckboxOutlineBlank = 0xf372
	case androidCheckmarkCircle = 0xf375
	case androidClipboard = 0xf376
	case androidClose = 0xf2d7
	case androidCloud = 0xf37a
	case androidCloudCircle = 0xf377
	case androidCloudDone = 0xf378
	case androidCloudOutline = 0xf379
	case androidColorPalette = 0xf37b
	case androidCompass = 0xf37c
	case androidContact = 0xf2d8
	case androidContacts = 0xf2d9
	case androidContract = 0xf37d
	case androidCreate = 0xf37e
	case androidDelete = 0xf37f
	case androidDesktop = 0xf380
	case androidDocument = 0xf381
	case androidDone = 0xf383
	case androidDoneAll = 0xf382
	case androidDownload = 0xf2dd
	case androidDrafts = 0xf384
	case androidExit = 0xf385
	case androidExpand = 0xf386
	case androidFavorite = 0xf388
	case androidFavoriteOutline = 0xf387
	case androidFilm = 0xf389
	case androidFolder = 0xf2e0
	case androidFolderOpen = 0xf38a
	case androidFunnel = 0xf38b
	case androidGlobe = 0xf38c
	case androidHand = 0xf2e3
	case androidHangout = 0xf38d
	case androidHappy = 0xf38e
	case androidHome = 0xf38f
	case androidImage = 0xf2e4
	case androidLaptop = 0xf390
	case androidList = 0xf391
	case androidLocate = 0xf2e9
	case androidLock = 0xf392
	case androidMail = 0xf2eb
	case androidMap = 0xf393
	case androidMenu = 0xf394
	case androidMicrophone = 0xf2ec
	case androidMicrophoneOff = 0xf395
	case androidMoreHorizontal = 0xf396
	case androidMoreVertical = 0xf397
	case androidNavigate = 0xf398
	case androidNotifications = 0xf39b
	case androidNotificationsNone = 0xf399
	case androidNotificationsOff = 0xf39a
	case androidOpen = 0xf39c
	case androidOptions = 0xf39d
	case androidPeople = 0xf39e
	case androidPerson = 0xf3a0
	case androidPersonAdd = 0xf39f
	case androidPhoneLandscape = 0xf3a1
	case androidPhonePortrait = 0xf3a2
	case androidPin = 0xf3a3
	case androidPlane = 0xf3a4
	case androidPlaystore = 0xf2f0
	case androidPrint = 0xf3a5
	case androidRadioButtonOff = 0xf3a6
	case androidRadioButtonOn = 0xf3a7
	case androidRefresh = 0xf3a8
	case androidRemove = 0xf2f4
	case androidRemoveCircle = 0xf3a9
	case androidRestaurant = 0xf3aa
	case androidSad = 0xf3ab
	case androidSearch = 0xf2f5
	case androidSend = 0xf2f6
	case androidSettings = 0xf2f7
	case androidShare = 0xf2f8
	case androidShareAlt = 0xf3ac
	case androidStar = 0xf2fc
	case androidStarHalf = 0xf3ad
	case androidStarOutline = 0xf3ae
	case androidStopwatch = 0xf2fd
	case androidSubway = 0xf3af
	case androidSunny = 0xf3b0
	case androidSync = 0xf3b1
	case androidTextsms = 0xf3b2
	case androidTime = 0xf3b3
	case androidTrain = 0xf3b4
	case androidUnlock = 0xf3b5
	case androidUpload = 0xf3b6
	case androidVolumeDown = 0xf3b7
	case androidVolumeMute = 0xf3b8
	case androidVolumeOff = 0xf3b9
	case androidVolumeUp = 0xf3ba
	case androidWalk = 0xf3bb
	case androidWarning = 0xf3bc
	case androidWatch = 0xf3bd
	case androidWifi = 0xf305
	case aperture = 0xf313
	case archive = 0xf102
	case arrowDownA = 0xf103
	case arrowDownB = 0xf104
	case arrowDownC = 0xf105
	case arrowExpand = 0xf25e
	case arrowGraphDownLeft = 0xf25f
	case arrowGraphDownRight = 0xf260
	case arrowGraphUpLeft = 0xf261
	case arrowGraphUpRight = 0xf262
	case arrowLeftA = 0xf106
	case arrowLeftB = 0xf107
	case arrowLeftC = 0xf108
	case arrowMove = 0xf263
	case arrowResize = 0xf264
	case arrowReturnLeft = 0xf265
	case arrowReturnRight = 0xf266
	case arrowRightA = 0xf109
	case arrowRightB = 0xf10a
	case arrowRightC = 0xf10b
	case arrowShrink = 0xf267
	case arrowSwap = 0xf268
	case arrowUpA = 0xf10c
	case arrowUpB = 0xf10d
	case arrowUpC = 0xf10e
	case asterisk = 0xf314
	case at = 0xf10f
	case backspace = 0xf3bf
	case backspaceOutline = 0xf3be
	case bag = 0xf110
	case batteryCharging = 0xf111
	case batteryEmpty = 0xf112
	case batteryFull = 0xf113
	case batteryHalf = 0xf114
	case batteryLow = 0xf115
	case beaker = 0xf269
	case beer = 0xf26a
	case bluetooth = 0xf116
	case bonfire = 0xf315
	case bookmark = 0xf26b
	case bowtie = 0xf3c0
	case briefcase = 0xf26c
	case bug = 0xf2be
	case calculator = 0xf26d
	case calendar = 0xf117
	case camera = 0xf118
	case card = 0xf119
	case cash = 0xf316
	case chatbox = 0xf11b
	case chatboxWorking = 0xf11a
	case chatboxes = 0xf11c
	case chatbubble = 0xf11e
	case chatbubbleWorking = 0xf11d
	case chatbubbles = 0xf11f
	case checkmark = 0xf122
	case checkmarkCircled = 0xf120
	case checkmarkRound = 0xf121
	case chevronDown = 0xf123
	case chevronLeft = 0xf124
	case chevronRight = 0xf125
	case chevronUp = 0xf126
	case clipboard = 0xf127
	case clock = 0xf26e
	case close = 0xf12a
	case closeCircled = 0xf128
	case closeRound = 0xf129
	case closedCaptioning = 0xf317
	case cloud = 0xf12b
	case code = 0xf271
	case codeDownload = 0xf26f
	case codeWorking = 0xf270
	case coffee = 0xf272
	case compass = 0xf273
	case compose = 0xf12c
	case connectionBars = 0xf274
	case contrast = 0xf275
	case crop = 0xf3c1
	case cube = 0xf318
	case disc = 0xf12d
	case document = 0xf12f
	case documentText = 0xf12e
	case drag = 0xf130
	case earth = 0xf276
	case easel = 0xf3c2
	case edit = 0xf2bf
	case egg = 0xf277
	case eject = 0xf131
	case email = 0xf132
	case emailUnread = 0xf3c3
	case erlenmeyerFlask = 0xf3c5
	case erlenmeyerFlaskBubbles = 0xf3c4
	case eye = 0xf133
	case eyeDisabled = 0xf306
	case female = 0xf278
	case filing = 0xf134
	case filmMarker = 0xf135
	case fireball = 0xf319
	case flag = 0xf279
	case flame = 0xf31a
	case flash = 0xf137
	case flashOff = 0xf136
	case folder = 0xf139
	case fork = 0xf27a
	case forkRepo = 0xf2c0
	case forward = 0xf13a
	case funnel = 0xf31b
	case gearA = 0xf13d
	case gearB = 0xf13e
	case grid = 0xf13f
	case hammer = 0xf27b
	case happy = 0xf31c
	case happyOutline = 0xf3c6
	case headphone = 0xf140
	case heart = 0xf141
	case heartBroken = 0xf31d
	case help = 0xf143
	case helpBuoy = 0xf27c
	case helpCircled = 0xf142
	case home = 0xf144
	case icecream = 0xf27d
	case Image = 0xf147
	case images = 0xf148
	case information = 0xf14a
	case informationCircled = 0xf149
	case ionic = 0xf14b
	case iosAlarm = 0xf3c8
	case iosAlarmOutline = 0xf3c7
	case iosAlbums = 0xf3ca
	case iosAlbumsOutline = 0xf3c9
	case iosAmericanfootball = 0xf3cc
	case iosAmericanfootballOutline = 0xf3cb
	case iosAnalytics = 0xf3ce
	case iosAnalyticsOutline = 0xf3cd
	case iosArrowBack = 0xf3cf
	case iosArrowDown = 0xf3d0
	case iosArrowForward = 0xf3d1
	case iosArrowLeft = 0xf3d2
	case iosArrowRight = 0xf3d3
	case iosArrowThinDown = 0xf3d4
	case iosArrowThinLeft = 0xf3d5
	case iosArrowThinRight = 0xf3d6
	case iosArrowThinUp = 0xf3d7
	case iosArrowUp = 0xf3d8
	case iosAt = 0xf3da
	case iosAtOutline = 0xf3d9
	case iosBarcode = 0xf3dc
	case iosBarcodeOutline = 0xf3db
	case iosBaseball = 0xf3de
	case iosBaseballOutline = 0xf3dd
	case iosBasketball = 0xf3e0
	case iosBasketballOutline = 0xf3df
	case iosBell = 0xf3e2
	case iosBellOutline = 0xf3e1
	case iosBody = 0xf3e4
	case iosBodyOutline = 0xf3e3
	case iosBolt = 0xf3e6
	case iosBoltOutline = 0xf3e5
	case iosBook = 0xf3e8
	case iosBookOutline = 0xf3e7
	case iosBookmarks = 0xf3ea
	case iosBookmarksOutline = 0xf3e9
	case iosBox = 0xf3ec
	case iosBoxOutline = 0xf3eb
	case iosBriefcase = 0xf3ee
	case iosBriefcaseOutline = 0xf3ed
	case iosBrowsers = 0xf3f0
	case iosBrowsersOutline = 0xf3ef
	case iosCalculator = 0xf3f2
	case iosCalculatorOutline = 0xf3f1
	case iosCalendar = 0xf3f4
	case iosCalendarOutline = 0xf3f3
	case iosCamera = 0xf3f6
	case iosCameraOutline = 0xf3f5
	case iosCart = 0xf3f8
	case iosCartOutline = 0xf3f7
	case iosChatboxes = 0xf3fa
	case iosChatboxesOutline = 0xf3f9
	case iosChatbubble = 0xf3fc
	case iosChatbubbleOutline = 0xf3fb
	case iosCheckmark = 0xf3ff
	case iosCheckmarkEmpty = 0xf3fd
	case iosCheckmarkOutline = 0xf3fe
	case iosCircleFilled = 0xf400
	case iosCircleOutline = 0xf401
	case iosClock = 0xf403
	case iosClockOutline = 0xf402
	case iosClose = 0xf406
	case iosCloseEmpty = 0xf404
	case iosCloseOutline = 0xf405
	case iosCloud = 0xf40c
	case iosCloudDownload = 0xf408
	case iosCloudDownloadOutline = 0xf407
	case iosCloudOutline = 0xf409
	case iosCloudUpload = 0xf40b
	case iosCloudUploadOutline = 0xf40a
	case iosCloudy = 0xf410
	case iosCloudyNight = 0xf40e
	case iosCloudyNightOutline = 0xf40d
	case iosCloudyOutline = 0xf40f
	case iosCog = 0xf412
	case iosCogOutline = 0xf411
	case iosColorFilter = 0xf414
	case iosColorFilterOutline = 0xf413
	case iosColorWand = 0xf416
	case iosColorWandOutline = 0xf415
	case iosCompose = 0xf418
	case iosComposeOutline = 0xf417
	case iosContact = 0xf41a
	case iosContactOutline = 0xf419
	case iosCopy = 0xf41c
	case iosCopyOutline = 0xf41b
	case iosCrop = 0xf41e
	case iosCropStrong = 0xf41d
	case iosDownload = 0xf420
	case iosDownloadOutline = 0xf41f
	case iosDrag = 0xf421
	case iosEmail = 0xf423
	case iosEmailOutline = 0xf422
	case iosEye = 0xf425
	case iosEyeOutline = 0xf424
	case iosFastforward = 0xf427
	case iosFastforwardOutline = 0xf426
	case iosFiling = 0xf429
	case iosFilingOutline = 0xf428
	case iosFilm = 0xf42b
	case iosFilmOutline = 0xf42a
	case iosFlag = 0xf42d
	case iosFlagOutline = 0xf42c
	case iosFlame = 0xf42f
	case iosFlameOutline = 0xf42e
	case iosFlask = 0xf431
	case iosFlaskOutline = 0xf430
	case iosFlower = 0xf433
	case iosFlowerOutline = 0xf432
	case iosFolder = 0xf435
	case iosFolderOutline = 0xf434
	case iosFootball = 0xf437
	case iosFootballOutline = 0xf436
	case iosGameControllerA = 0xf439
	case iosGameControllerAOutline = 0xf438
	case iosGameControllerB = 0xf43b
	case iosGameControllerBOutline = 0xf43a
	case iosGear = 0xf43d
	case iosGearOutline = 0xf43c
	case iosGlasses = 0xf43f
	case iosGlassesOutline = 0xf43e
	case iosGridView = 0xf441
	case iosGridViewOutline = 0xf440
	case iosHeart = 0xf443
	case iosHeartOutline = 0xf442
	case iosHelp = 0xf446
	case iosHelpEmpty = 0xf444
	case iosHelpOutline = 0xf445
	case iosHome = 0xf448
	case iosHomeOutline = 0xf447
	case iosInfinite = 0xf44a
	case iosInfiniteOutline = 0xf449
	case iosInformation = 0xf44d
	case iosInformationEmpty = 0xf44b
	case iosInformationOutline = 0xf44c
	case iosIonicOutline = 0xf44e
	case iosKeypad = 0xf450
	case iosKeypadOutline = 0xf44f
	case iosLightbulb = 0xf452
	case iosLightbulbOutline = 0xf451
	case iosList = 0xf454
	case iosListOutline = 0xf453
	case iosLocation = 0xf456
	case iosLocationOutline = 0xf455
	case iosLocked = 0xf458
	case iosLockedOutline = 0xf457
	case iosLoop = 0xf45a
	case iosLoopStrong = 0xf459
	case iosMedical = 0xf45c
	case iosMedicalOutline = 0xf45b
	case iosMedkit = 0xf45e
	case iosMedkitOutline = 0xf45d
	case iosMic = 0xf461
	case iosMicOff = 0xf45f
	case iosMicOutline = 0xf460
	case iosMinus = 0xf464
	case iosMinusEmpty = 0xf462
	case iosMinusOutline = 0xf463
	case iosMonitor = 0xf466
	case iosMonitorOutline = 0xf465
	case iosMoon = 0xf468
	case iosMoonOutline = 0xf467
	case iosMore = 0xf46a
	case iosMoreOutline = 0xf469
	case iosMusicalNote = 0xf46b
	case iosMusicalNotes = 0xf46c
	case iosNavigate = 0xf46e
	case iosNavigateOutline = 0xf46d
	case iosNutrition = 0xf470
	case iosNutritionOutline = 0xf46f
	case iosPaper = 0xf472
	case iosPaperOutline = 0xf471
	case iosPaperplane = 0xf474
	case iosPaperplaneOutline = 0xf473
	case iosPartlysunny = 0xf476
	case iosPartlysunnyOutline = 0xf475
	case iosPause = 0xf478
	case iosPauseOutline = 0xf477
	case iosPaw = 0xf47a
	case iosPawOutline = 0xf479
	case iosPeople = 0xf47c
	case iosPeopleOutline = 0xf47b
	case iosPerson = 0xf47e
	case iosPersonOutline = 0xf47d
	case iosPersonadd = 0xf480
	case iosPersonaddOutline = 0xf47f
	case iosPhotos = 0xf482
	case iosPhotosOutline = 0xf481
	case iosPie = 0xf484
	case iosPieOutline = 0xf483
	case iosPint = 0xf486
	case iosPintOutline = 0xf485
	case iosPlay = 0xf488
	case iosPlayOutline = 0xf487
	case iosPlus = 0xf48b
	case iosPlusEmpty = 0xf489
	case iosPlusOutline = 0xf48a
	case iosPricetag = 0xf48d
	case iosPricetagOutline = 0xf48c
	case iosPricetags = 0xf48f
	case iosPricetagsOutline = 0xf48e
	case iosPrinter = 0xf491
	case iosPrinterOutline = 0xf490
	case iosPulse = 0xf493
	case iosPulseStrong = 0xf492
	case iosRainy = 0xf495
	case iosRainyOutline = 0xf494
	case iosRecording = 0xf497
	case iosRecordingOutline = 0xf496
	case iosRedo = 0xf499
	case iosRedoOutline = 0xf498
	case iosRefresh = 0xf49c
	case iosRefreshEmpty = 0xf49a
	case iosRefreshOutline = 0xf49b
	case iosReload = 0xf49d
	case iosReverseCamera = 0xf49f
	case iosReverseCameraOutline = 0xf49e
	case iosRewind = 0xf4a1
	case iosRewindOutline = 0xf4a0
	case iosRose = 0xf4a3
	case iosRoseOutline = 0xf4a2
	case iosSearch = 0xf4a5
	case iosSearchStrong = 0xf4a4
	case iosSettings = 0xf4a7
	case iosSettingsStrong = 0xf4a6
	case iosShuffle = 0xf4a9
	case iosShuffleStrong = 0xf4a8
	case iosSkipbackward = 0xf4ab
	case iosSkipbackwardOutline = 0xf4aa
	case iosSkipforward = 0xf4ad
	case iosSkipforwardOutline = 0xf4ac
	case iosSnowy = 0xf4ae
	case iosSpeedometer = 0xf4b0
	case iosSpeedometerOutline = 0xf4af
	case iosStar = 0xf4b3
	case iosStarHalf = 0xf4b1
	case iosStarOutline = 0xf4b2
	case iosStopwatch = 0xf4b5
	case iosStopwatchOutline = 0xf4b4
	case iosSunny = 0xf4b7
	case iosSunnyOutline = 0xf4b6
	case iosTelephone = 0xf4b9
	case iosTelephoneOutline = 0xf4b8
	case iosTennisball = 0xf4bb
	case iosTennisballOutline = 0xf4ba
	case iosThunderstorm = 0xf4bd
	case iosThunderstormOutline = 0xf4bc
	case iosTime = 0xf4bf
	case iosTimeOutline = 0xf4be
	case iosTimer = 0xf4c1
	case iosTimerOutline = 0xf4c0
	case iosToggle = 0xf4c3
	case iosToggleOutline = 0xf4c2
	case iosTrash = 0xf4c5
	case iosTrashOutline = 0xf4c4
	case iosUndo = 0xf4c7
	case iosUndoOutline = 0xf4c6
	case iosUnlocked = 0xf4c9
	case iosUnlockedOutline = 0xf4c8
	case iosUpload = 0xf4cb
	case iosUploadOutline = 0xf4ca
	case iosVideocam = 0xf4cd
	case iosVideocamOutline = 0xf4cc
	case iosVolumeHigh = 0xf4ce
	case iosVolumeLow = 0xf4cf
	case iosWineglass = 0xf4d1
	case iosWineglassOutline = 0xf4d0
	case iosWorld = 0xf4d3
	case iosWorldOutline = 0xf4d2
	case ipad = 0xf1f9
	case iphone = 0xf1fa
	case ipod = 0xf1fb
	case jet = 0xf295
	case key = 0xf296
	case knife = 0xf297
	case laptop = 0xf1fc
	case leaf = 0xf1fd
	case levels = 0xf298
	case lightbulb = 0xf299
	case link = 0xf1fe
	case loadA = 0xf29a
	case loadB = 0xf29b
	case loadC = 0xf29c
	case loadD = 0xf29d
	case location = 0xf1ff
	case lockCombination = 0xf4d4
	case locked = 0xf200
	case logIn = 0xf29e
	case logOut = 0xf29f
	case loop = 0xf201
	case magnet = 0xf2a0
	case male = 0xf2a1
	case man = 0xf202
	case map = 0xf203
	case medkit = 0xf2a2
	case merge = 0xf33f
	case micA = 0xf204
	case micB = 0xf205
	case micC = 0xf206
	case minus = 0xf209
	case minusCircled = 0xf207
	case minusRound = 0xf208
	case modelS = 0xf2c1
	case monitor = 0xf20a
	case more = 0xf20b
	case mouse = 0xf340
	case musicNote = 0xf20c
	case navicon = 0xf20e
	case naviconRound = 0xf20d
	case navigate = 0xf2a3
	case network = 0xf341
	case noSmoking = 0xf2c2
	case nuclear = 0xf2a4
	case outlet = 0xf342
	case paintbrush = 0xf4d5
	case paintbucket = 0xf4d6
	case paperAirplane = 0xf2c3
	case paperclip = 0xf20f
	case pause = 0xf210
	case person = 0xf213
	case personAdd = 0xf211
	case personStalker = 0xf212
	case pieGraph = 0xf2a5
	case pin = 0xf2a6
	case pinpoint = 0xf2a7
	case pizza = 0xf2a8
	case plane = 0xf214
	case planet = 0xf343
	case play = 0xf215
	case playstation = 0xf30a
	case plus = 0xf218
	case plusCircled = 0xf216
	case plusRound = 0xf217
	case podium = 0xf344
	case pound = 0xf219
	case power = 0xf2a9
	case pricetag = 0xf2aa
	case pricetags = 0xf2ab
	case printer = 0xf21a
	case pullRequest = 0xf345
	case qrScanner = 0xf346
	case quote = 0xf347
	case radioWaves = 0xf2ac
	case record = 0xf21b
	case refresh = 0xf21c
	case reply = 0xf21e
	case replyAll = 0xf21d
	case ribbonA = 0xf348
	case ribbonB = 0xf349
	case sad = 0xf34a
	case sadOutline = 0xf4d7
	case scissors = 0xf34b
	case search = 0xf21f
	case settings = 0xf2ad
	case share = 0xf220
	case shuffle = 0xf221
	case skipBackward = 0xf222
	case skipForward = 0xf223
	case socialAndroid = 0xf225
	case socialAndroidOutline = 0xf224
	case socialAngular = 0xf4d9
	case socialAngularOutline = 0xf4d8
	case socialApple = 0xf227
	case socialAppleOutline = 0xf226
	case socialBitcoin = 0xf2af
	case socialBitcoinOutline = 0xf2ae
	case socialBuffer = 0xf229
	case socialBufferOutline = 0xf228
	case socialChrome = 0xf4db
	case socialChromeOutline = 0xf4da
	case socialCodepen = 0xf4dd
	case socialCodepenOutline = 0xf4dc
	case socialCss3 = 0xf4df
	case socialCss3Outline = 0xf4de
	case socialDesignernews = 0xf22b
	case socialDesignernewsOutline = 0xf22a
	case socialDribbble = 0xf22d
	case socialDribbbleOutline = 0xf22c
	case socialDropbox = 0xf22f
	case socialDropboxOutline = 0xf22e
	case socialEuro = 0xf4e1
	case socialEuroOutline = 0xf4e0
	case socialFacebook = 0xf231
	case socialFacebookOutline = 0xf230
	case socialFoursquare = 0xf34d
	case socialFoursquareOutline = 0xf34c
	case socialFreebsdDevil = 0xf2c4
	case socialGithub = 0xf233
	case socialGithubOutline = 0xf232
	case socialGoogle = 0xf34f
	case socialGoogleOutline = 0xf34e
	case socialGoogleplus = 0xf235
	case socialGoogleplusOutline = 0xf234
	case socialHackernews = 0xf237
	case socialHackernewsOutline = 0xf236
	case socialHtml5 = 0xf4e3
	case socialHtml5Outline = 0xf4e2
	case socialInstagram = 0xf351
	case socialInstagramOutline = 0xf350
	case socialJavascript = 0xf4e5
	case socialJavascriptOutline = 0xf4e4
	case socialLinkedin = 0xf239
	case socialLinkedinOutline = 0xf238
	case socialMarkdown = 0xf4e6
	case socialNodejs = 0xf4e7
	case socialOctocat = 0xf4e8
	case socialPinterest = 0xf2b1
	case socialPinterestOutline = 0xf2b0
	case socialPython = 0xf4e9
	case socialReddit = 0xf23b
	case socialRedditOutline = 0xf23a
	case socialRss = 0xf23d
	case socialRssOutline = 0xf23c
	case socialSass = 0xf4ea
	case socialSkype = 0xf23f
	case socialSkypeOutline = 0xf23e
	case socialSnapchat = 0xf4ec
	case socialSnapchatOutline = 0xf4eb
	case socialTumblr = 0xf241
	case socialTumblrOutline = 0xf240
	case socialTux = 0xf2c5
	case socialTwitch = 0xf4ee
	case socialTwitchOutline = 0xf4ed
	case socialTwitter = 0xf243
	case socialTwitterOutline = 0xf242
	case socialUsd = 0xf353
	case socialUsdOutline = 0xf352
	case socialVimeo = 0xf245
	case socialVimeoOutline = 0xf244
	case socialWhatsapp = 0xf4f0
	case socialWhatsappOutline = 0xf4ef
	case socialWindows = 0xf247
	case socialWindowsOutline = 0xf246
	case socialWordpress = 0xf249
	case socialWordpressOutline = 0xf248
	case socialYahoo = 0xf24b
	case socialYahooOutline = 0xf24a
	case socialYen = 0xf4f2
	case socialYenOutline = 0xf4f1
	case socialYoutube = 0xf24d
	case socialYoutubeOutline = 0xf24c
	case soupCan = 0xf4f4
	case soupCanOutline = 0xf4f3
	case speakerphone = 0xf2b2
	case speedometer = 0xf2b3
	case spoon = 0xf2b4
	case star = 0xf24e
	case statsBars = 0xf2b5
	case steam = 0xf30b
	case stop = 0xf24f
	case thermometer = 0xf2b6
	case thumbsdown = 0xf250
	case thumbsup = 0xf251
	case toggle = 0xf355
	case toggleFilled = 0xf354
	case transgender = 0xf4f5
	case trashA = 0xf252
	case trashB = 0xf253
	case trophy = 0xf356
	case tshirt = 0xf4f7
	case tshirtOutline = 0xf4f6
	case umbrella = 0xf2b7
	case university = 0xf357
	case unlocked = 0xf254
	case upload = 0xf255
	case usb = 0xf2b8
	case videocamera = 0xf256
	case volumeHigh = 0xf257
	case volumeLow = 0xf258
	case volumeMedium = 0xf259
	case volumeMute = 0xf25a
	case wand = 0xf358
	case waterdrop = 0xf25b
	case wifi = 0xf25c
	case wineglass = 0xf2b9
	case woman = 0xf25d
	case wrench = 0xf2ba
	case xbox = 0xf30c
}

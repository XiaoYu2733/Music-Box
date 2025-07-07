-- iOS/macOS
resource "Icons" "DevIcon" {stage="dev", type="AppleAppIcon", source="Data/Images/System/Sky_AppIcon_Dev.png"}
resource "Icons" "TestIcon" {stage="beta", type="AppleAppIcon", source="Data/Images/System/Sky_AppIcon_Beta.png"}
resource "Icons" "AppIcon" {stage="live", type="AppleAppIcon", source="Data/Images/System/Sky_AppIcon_Live.png"}

-- iOS
resource "Icons" "AppIconEverGreen" {stage="live", type="AppleAppIcon", source="Data/Images/System/Sky_AppIcon_Live_evergreen.png"}
resource "Icons" "AppIconEverGreen-vn" {stage="live", type="AppleAppIcon", source="Data/Images/System/Sky_AppIcon_Live_evergreen-vn.png"}
resource "Icons" "VN_AppIcon_A" {stage="live", type="AppleAppIcon", source="Data/Images/System/Sky_VN_AppIcon_Spring-handhold.png"}
resource "Icons" "VN_AppIcon_B" {stage="live", type="AppleAppIcon", source="Data/Images/System/Sky_VN_AppIcon_PrairieFly-front.png"}
resource "Icons" "VN_AppIcon_C" {stage="live", type="AppleAppIcon", source="Data/Images/System/Sky_VN_AppIcon_Logo-purple.png"}
resource "Icons" "StickersSquareIcon" {type="AppleStickersSquareIcon", source="Data/Images/System/Sky_StickersIcon_Square.png"}
resource "Icons" "StickersLandscapeIcon" {type="AppleStickersLandscapeIcon", source="Data/Images/System/Sky_StickersIcon_Landscape.png"}

-- Android
resource "Icons" "icon" {stage="dev", type="AndroidAppIcon", source="Data/Images/System/Sky_AppIcon_Dev.png"}
resource "Icons" "icon" {stage="beta", type="AndroidAppIcon", source="Data/Images/System/Sky_AppIcon_Beta.png"}
resource "Icons" "adaptive_icon_back" {stage="live", type="AndroidAppIcon", source="Data/Images/System/Sky_AppIcon_Live_Back.png"}
resource "Icons" "adaptive_icon_front" {stage="live", type="AndroidAppIcon", source="Data/Images/System/Sky_AppIcon_Live_Front.png"}
resource "Icons" "ic_notification" {stage="dev", type="AndroidNotificationIcon", source="Data/Images/System/Sky_NotificationIcon_Dev.png"}
resource "Icons" "ic_notification" {stage="beta", type="AndroidNotificationIcon", source="Data/Images/System/Sky_NotificationIcon_Beta.png"}
resource "Icons" "ic_notification" {stage="live", type="AndroidNotificationIcon", source="Data/Images/System/Sky_NotificationIcon_Live.png"}

-- Switch
resource "Icons" "Sky_AppIcon_Dev" {stage="dev", type="NxAppIcon", source="Data/Images/System/Sky_AppIcon_Dev.png"}
resource "Icons" "Sky_AppIcon_Beta" {stage="beta", type="NxAppIcon", source="Data/Images/System/Sky_AppIcon_Beta.png"}
resource "Icons" "Sky_AppIcon_Live" {stage="live", type="NxAppIcon", source="Data/Images/System/Sky_AppIcon_Live.png"}

-- PS4
resource "Icons" "icon0" {stage="dev", type="PS4AppIcon", source="Data/Images/System/Sky_AppIcon_Dev.png"}
resource "Icons" "icon0" {stage="beta", type="PS4AppIcon", source="Data/Images/System/Sky_AppIcon_Beta.png"}
resource "Icons" "icon0" {stage="live", type="PS4AppIcon", source="Data/Images/System/Sky_AppIcon_Live_evergreen.png"}

-- Windows
resource "Icons" "Sky" {stage="dev", type="WindowsAppIcon", source="Data/Images/System/Sky_AppIcon_Dev.png"}
resource "Icons" "Sky" {stage="beta", type="WindowsAppIcon", source="Data/Images/System/Sky_AppIcon_Beta.png"}
resource "Icons" "Sky" {stage="live", type="WindowsAppIcon", source="Data/Images/System/Sky_AppIcon_Live.png"}

-- SystemUI
resource "Icons" "Logo" {type="SystemUI", source="Data/Images/SystemUI/Logo.png"}
resource "Icons" "LogoText" {type="SystemUI", source="Data/Images/SystemUI/LogoText.png"}

resource "Icons" "SystemUI_ScrollDownArrow" {type="SystemUI", size=96, source="Data/Images/SystemUI/ScrollDownArrow.png"}

resource "Icons" "SystemUI_Beacon" {type="SystemUI", size=128, source="Data/Images/UI/UiMiscBeacon.png"}
resource "Icons" "SystemUI_Camera" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuCamera.png"}
resource "Icons" "SystemUI_Candle" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuHeartCandle.png"}
resource "Icons" "SystemUI_Cape" {type="SystemUI", size=128, source="Data/Images/UI/UiOutfitCape.png"}
resource "Icons" "SystemUI_Cog" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuCog.png"}
resource "Icons" "SystemUI_Diamond" {type="SystemUI", size=128, source="Data/Images/UI/UiMiscDiamond.png"}

resource "Icons" "SystemUI_Dice" {type="SystemUI", size=64, source="Data/Images/SystemUI/Dice.png"}

resource "Icons" "SystemUI_Exclamation" {type="SystemUI", size=128, source="Data/Images/SystemUI/UIExclamation.png"}
resource "Icons" "SystemUI_Heart" {type="SystemUI", size=128, source="Data/Images/UI/UiMiscHeart.png"}
resource "Icons" "SystemUI_Like" {type="SystemUI", size=128, source="Data/Images/UI/UiSocialFeedLikeSmall.png"}
resource "Icons" "SystemUI_Invite" {type="SystemUI", size=128, source="Data/Images/SystemUI/UIInvite.png"}
resource "Icons" "SystemUI_LightBulb" {type="SystemUI", size=128, source="Data/Images/UI/UiLightBulb.png"}
resource "Icons" "SystemUI_Prestige" {type="SystemUI", size=128, source="Data/Images/SystemUI/UiMenuPrestigeCandle.png"}
resource "Icons" "SystemUI_Question" {type="SystemUI", size=128, source="Data/Images/UI/UiMiscQuestion.png"}
resource "Icons" "SystemUI_CloseButton" {type="SystemUI", size=128, source="Data/Images/UI/UiMiscX_Large.png"}
resource "Icons" "SystemUI_Pencil" {type="SystemUI", size=128, source="Data/Images/UI/UiMiscPencil.png"}
resource "Icons" "SystemUI_Favorite" {type="SystemUI", size=128, source="Data/Images/UI/UiMiscFavorite.png"}
resource "Icons" "SystemUI_GlobalChat" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuGlobalChatEnabled.png"}

resource "Icons" "SystemUI_ToggleFly" {type="SystemUI", size=128, source="Data/Images/UIFullLum/UiMenuFly.png"}
resource "Icons" "SystemUI_ToggleHover" {type="SystemUI", size=128, source="Data/Images/UIFullLum/UiMenuHover.png"}
resource "Icons" "SystemUI_ToggleSwim" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSwimming.png"}
resource "Icons" "SystemUI_ToggleDive" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuDiving.png"}

resource "Icons" "SystemUI_SeasonCandle01" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP01.png"}
resource "Icons" "SystemUI_SeasonCandle02" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP02.png"}
resource "Icons" "SystemUI_SeasonCandle03" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP03.png"}
resource "Icons" "SystemUI_SeasonCandle04" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP04.png"}
resource "Icons" "SystemUI_SeasonCandle06" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP06.png"}
resource "Icons" "SystemUI_SeasonCandle07" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP07.png"}
resource "Icons" "SystemUI_SeasonCandle08" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP08.png"}
resource "Icons" "SystemUI_SeasonCandle09" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP09.png"}
resource "Icons" "SystemUI_SeasonCandle10" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP10.png"}
resource "Icons" "SystemUI_SeasonCandle11" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP11.png"}
resource "Icons" "SystemUI_SeasonCandle12" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP12.png"}
resource "Icons" "SystemUI_SeasonCandle13" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP13.png"}
resource "Icons" "SystemUI_SeasonCandle14" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP14.png"}
resource "Icons" "SystemUI_SeasonCandle15" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP15.png"}
resource "Icons" "SystemUI_SeasonCandle16" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP16.png"}
resource "Icons" "SystemUI_SeasonCandle17" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP17.png"}
resource "Icons" "SystemUI_SeasonCandle18" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP18.png"}
resource "Icons" "SystemUI_SeasonCandle19" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP19.png"}
resource "Icons" "SystemUI_SeasonCandle20" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP20.png"}
resource "Icons" "SystemUI_SeasonCandle21" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP21.png"}
resource "Icons" "SystemUI_SeasonCandle22" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP22.png"}
resource "Icons" "SystemUI_SeasonCandle23" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP23.png"}
resource "Icons" "SystemUI_SeasonCandle24" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP24.png"}
resource "Icons" "SystemUI_SeasonCandle25" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP25.png"}
resource "Icons" "SystemUI_SeasonCandle26" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonCandleAP26.png"}
resource "Icons" "SystemUI_SeasonHeart01" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP01.png"}
resource "Icons" "SystemUI_SeasonHeart02" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP02.png"}
resource "Icons" "SystemUI_SeasonHeart03" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP03.png"}
resource "Icons" "SystemUI_SeasonHeart04" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP04.png"}
resource "Icons" "SystemUI_SeasonHeart06" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP06.png"}
resource "Icons" "SystemUI_SeasonHeart07" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP07.png"}
resource "Icons" "SystemUI_SeasonHeart08" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP08.png"}
resource "Icons" "SystemUI_SeasonHeart09" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP09.png"}
resource "Icons" "SystemUI_SeasonHeart10" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP10.png"}
resource "Icons" "SystemUI_SeasonHeart11" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP11.png"}
resource "Icons" "SystemUI_SeasonHeart12" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP12.png"}
resource "Icons" "SystemUI_SeasonHeart13" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP13.png"}
resource "Icons" "SystemUI_SeasonHeart14" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP14.png"}
resource "Icons" "SystemUI_SeasonHeart15" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP15.png"}
resource "Icons" "SystemUI_SeasonHeart16" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP16.png"}
resource "Icons" "SystemUI_SeasonHeart17" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP17.png"}
resource "Icons" "SystemUI_SeasonHeart18" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP18.png"}
resource "Icons" "SystemUI_SeasonHeart19" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP19.png"}
resource "Icons" "SystemUI_SeasonHeart20" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP20.png"}
resource "Icons" "SystemUI_SeasonHeart21" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP21.png"}
resource "Icons" "SystemUI_SeasonHeart22" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP22.png"}
resource "Icons" "SystemUI_SeasonHeart23" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP23.png"}
resource "Icons" "SystemUI_SeasonHeart24" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP24.png"}
resource "Icons" "SystemUI_SeasonHeart25" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP25.png"}
resource "Icons" "SystemUI_SeasonHeart26" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSeasonHeartAP26.png"}
resource "Icons" "SystemUI_SeasonMask02" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP02.png"}
resource "Icons" "SystemUI_SeasonMask03" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP03.png"}
resource "Icons" "SystemUI_SeasonMask04" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP04.png"}
resource "Icons" "SystemUI_SeasonMask05" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP05.png"}
resource "Icons" "SystemUI_SeasonMask06" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP06.png"}
resource "Icons" "SystemUI_SeasonMask07" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP07.png"}
resource "Icons" "SystemUI_SeasonMask09" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP09.png"}
resource "Icons" "SystemUI_SeasonMask10" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP10.png"}
resource "Icons" "SystemUI_SeasonMask11" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP11.png"}
resource "Icons" "SystemUI_SeasonMask12" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP12.png"}
resource "Icons" "SystemUI_SeasonMask13" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP13.png"}
resource "Icons" "SystemUI_SeasonMask14" {type="SystemUI", size=128, source="Data/Images/UISeasonMaskAP14.png"}
resource "Icons" "SystemUI_SeasonPendant02" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP02.png"}
resource "Icons" "SystemUI_SeasonPendant03" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP03.png"}
resource "Icons" "SystemUI_SeasonPendant04" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP04.png"}
resource "Icons" "SystemUI_SeasonPendant05" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP05.png"}
resource "Icons" "SystemUI_SeasonPendant06" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP06.png"}
resource "Icons" "SystemUI_SeasonPendant07" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP07.png"}
resource "Icons" "SystemUI_SeasonPendant08" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP08.png"}
resource "Icons" "SystemUI_SeasonPendant09" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP09.png"}
resource "Icons" "SystemUI_SeasonPendant10" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP10.png"}
resource "Icons" "SystemUI_SeasonPendant11" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP11.png"}
resource "Icons" "SystemUI_SeasonPendant12" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP12.png"}
resource "Icons" "SystemUI_SeasonPendant13" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP13.png"}
resource "Icons" "SystemUI_SeasonPendant14" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP14.png"}
resource "Icons" "SystemUI_SeasonPendant15" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP15.png"}
resource "Icons" "SystemUI_SeasonPendant16" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP16.png"}
resource "Icons" "SystemUI_SeasonPendant17" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP17.png"}
resource "Icons" "SystemUI_SeasonPendant18" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP18.png"}
resource "Icons" "SystemUI_SeasonPendant19" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP19.png"}
resource "Icons" "SystemUI_SeasonPendant20" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP20.png"}
resource "Icons" "SystemUI_SeasonPendant21" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP21.png"}
resource "Icons" "SystemUI_SeasonPendant22" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP22.png"}
resource "Icons" "SystemUI_SeasonPendant23" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP23.png"}
resource "Icons" "SystemUI_SeasonPendant24" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP24.png"}
resource "Icons" "SystemUI_SeasonPendant25" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP25.png"}
resource "Icons" "SystemUI_SeasonPendant26" {type="SystemUI", size=128, source="Data/Images/UiOutfitPendantAP26.png"}
resource "Icons" "SystemUI_SeasonQuest" {type="SystemUI", size=128, source="Data/Images/UISeasonQuest.png"}

resource "Icons" "SystemUI_EventCandle01" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyColor.png"}
resource "Icons" "SystemUI_EventCandle02" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyMusic.png"}
resource "Icons" "SystemUI_EventCandle03" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencySky.png"}
resource "Icons" "SystemUI_EventCandle04" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyFashion.png"}
resource "Icons" "SystemUI_EventCandle05" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencySunlight.png"}
resource "Icons" "SystemUI_EventCandle06" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyAurora.png"}
resource "Icons" "SystemUI_EventCandle07" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyFireworks.png"}
resource "Icons" "SystemUI_EventCandle08" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyMischief.png"}
resource "Icons" "SystemUI_EventCandle09" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyFeast.png"}
resource "Icons" "SystemUI_EventCandle10" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyFortune.png"}
resource "Icons" "SystemUI_EventCandle11" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyLove.png"}
resource "Icons" "SystemUI_EventCandle12" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyBloom.png"}
resource "Icons" "SystemUI_EventCandle13" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyCompetition.png"}
resource "Icons" "SystemUI_EventCandle14" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyNature.png"}
resource "Icons" "SystemUI_EventCandle15" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuEventCurrencyTreasure.png"}

resource "Icons" "SystemUI_DyeRed" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSystemCurrencyColorRed.png"}
resource "Icons" "SystemUI_DyeGreen" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSystemCurrencyColorGreen.png"}
resource "Icons" "SystemUI_DyeBlue" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSystemCurrencyColorBlue.png"}
resource "Icons" "SystemUI_DyeYellow" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSystemCurrencyColorYellow.png"}
resource "Icons" "SystemUI_DyeCyan" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSystemCurrencyColorCyan.png"}
resource "Icons" "SystemUI_DyeMagenta" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSystemCurrencyColorMagenta.png"}
resource "Icons" "SystemUI_DyeWhite" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSystemCurrencyColorWhite.png"}
resource "Icons" "SystemUI_DyeBlack" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSystemCurrencyColorBlack.png"}

resource "Icons" "SystemUI_Sit" {type="SystemUI", size=128, source="Data/Images/UI/UiEmoteSit2.png"}
resource "Icons" "SystemUI_Star" {type="SystemUI", size=128, source="Data/Images/UI/UiMiscStar.png"}
resource "Icons" "SystemUI_Support" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuHelpCenter.png"}

resource "Icons" "SystemUI_WingBuff" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuWingBuff.png"}

resource "Icons" "SystemUI_GamepadA" {type="SystemUI", size=256, source="Data/Images/UiButtonBottom.png"}
resource "Icons" "SystemUI_GamepadB" {type="SystemUI", size=256, source="Data/Images/UiButtonRight.png"}
resource "Icons" "SystemUI_GamepadX" {type="SystemUI", size=256, source="Data/Images/UiButtonLeft.png"}
resource "Icons" "SystemUI_GamepadY" {type="SystemUI", size=256, source="Data/Images/UiButtonTop.png"}

resource "Icons" "SystemUI_LeftTrigger" {type="SystemUI", size=256, source="Data/Images/UiLeftTrigger.png"}
resource "Icons" "SystemUI_LeftShoulder" {type="SystemUI", size=256, source="Data/Images/UiLeftButton.png"}
resource "Icons" "SystemUI_RightTrigger" {type="SystemUI", size=256, source="Data/Images/UiRightTrigger.png"}
resource "Icons" "SystemUI_RightShoulder" {type="SystemUI", size=256, source="Data/Images/UiRightButton.png"}

resource "Icons" "SystemUI_Thumbstick" {type="SystemUI", size=256, source="Data/Images/UiAnalogStickLit.png"}

resource "Icons" "SystemUI_AnalogRight" {type="SystemUI", size=128, source="Data/Images/UIFullLum/UiAnalogRightNx.png"}
resource "Icons" "SystemUI_AnalogLeft" {type="SystemUI", size=128, source="Data/Images/UIFullLum/UiAnalogLeftNx.png"}
resource "Icons" "SystemUI_AnalogLeftUp" {type="SystemUI", size=128, source="Data/Images/UIFullLum/UiAnalogLeftPushUpNx.png"}
resource "Icons" "SystemUI_AnalogLeftDown" {type="SystemUI", size=128, source="Data/Images/UIFullLum/UiAnalogLeftPushDownNx.png"}

resource "Icons" "SystemUI_SpellEarth" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSpellEarth.png"}
resource "Icons" "SystemUI_SpellFire" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSpellFire.png"}
resource "Icons" "SystemUI_SpellMind" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSpellMind.png"}
resource "Icons" "SystemUI_SpellVoid" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSpellVoid.png"}
resource "Icons" "SystemUI_SpellWater" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSpellWater.png"}
resource "Icons" "SystemUI_SpellWind" {type="SystemUI", size=128, source="Data/Images/UI/UiMenuSpellWind.png"}

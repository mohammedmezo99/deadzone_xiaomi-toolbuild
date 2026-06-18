.class public final Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/miui/shade/ShadeHeader;
.implements Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterHeader;
.implements Lcom/android/systemui/plugins/miui/shade/ShadeSwitchController$OnShadeSwitchChangedListener;


# static fields
.field public static final EASE_BRIGHTNESS_HEADER_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public static final EASE_BRIGHTNESS_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public static final EASE_EDIT_HEADER_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public static final EASE_EDIT_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public static final EASE_NORMAL_NOTIF_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public static final EASE_SECONDARY_HEADER_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public static final EASE_SECONDARY_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;


# instance fields
.field public final animator:Lmiuix/animation/IStateStyle;

.field public final barStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public ccStatusBarLeft:I

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$configurationListener$1;

.field public final context:Landroid/content/Context;

.field public final controlCenterCarrierLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

.field public final controlCenterCarrierLayoutFolme:Lmiuix/animation/IFolme;

.field public final controlCenterContainerController:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

.field public final controlCenterContentController:Ldagger/Lazy;

.field public final controlCenterDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public final controlCenterDateViewFolme:Lmiuix/animation/IFolme;

.field public final controlCenterExpandController:Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;

.field public final controlCenterFakePrivacyContainer:Lcom/android/systemui/controlcenter/shade/MiuiFakePrivacyContainerView;

.field public final controlCenterFakePrivacyContainerFolme:Lmiuix/animation/IFolme;

.field public final controlCenterFakePrivacyDot:Landroid/widget/ImageView;

.field public final controlCenterFakeStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

.field public final controlCenterFakeStatusBarFolme:Lmiuix/animation/IFolme;

.field public final controlCenterFlipPrivacyContainer:Lcom/android/systemui/controlcenter/shade/MiuiFakePrivacyContainerView;

.field public final controlCenterFlipPrivacyContainerFolme:Lmiuix/animation/IFolme;

.field public final controlCenterHeaderAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final controlCenterHeaderController:Ldagger/Lazy;

.field public final controlCenterHeaderView:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;

.field public final controlCenterPrivacyContainer:Lcom/android/systemui/controlcenter/shade/MiuiPrivacyContainerView;

.field public final controlCenterPrivacyContainerFolme:Lmiuix/animation/IFolme;

.field public final controlCenterStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;

.field public final controlCenterStatusBarFolme:Lmiuix/animation/IFolme;

.field public final controlCenterStatusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

.field public final controlCenterStatusIconsFolme:Lmiuix/animation/IFolme;

.field public final controlCenterSystemIcons:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

.field public final controlCenterSystemIconsFolme:Lmiuix/animation/IFolme;

.field public final controlExpandProgressController:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;

.field public controlLocationX:I

.field public controlLocationY:I

.field public final display:Landroid/view/Display;

.field public final expansionController:Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController;

.field public final headerView:Landroid/widget/FrameLayout;

.field public final hideConfig:Lmiuix/animation/base/AnimConfig;

.field public final isKeyguardState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public layoutParams:Ljava/util/function/Consumer;

.field public final notificationBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public final notificationBigTimeFolme:Lmiuix/animation/IFolme;

.field public final notificationCarrierBottomView:Landroid/widget/LinearLayout;

.field public final notificationCarrierBottomViewFolme:Lmiuix/animation/IFolme;

.field public final notificationCarrierTopView:Landroid/widget/LinearLayout;

.field public final notificationCarrierTopViewFolme:Lmiuix/animation/IFolme;

.field public final notificationDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public final notificationDateTimeFolme:Lmiuix/animation/IFolme;

.field public final notificationExpandProgressController:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;

.field public final notificationHeaderAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final notificationHeaderView:Lcom/android/systemui/qs/MiuiNotificationHeaderView;

.field public final notificationHorizontalTime:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public final notificationHorizontalTimeFolme:Lmiuix/animation/IFolme;

.field public notificationLocationX:I

.field public notificationLocationY:I

.field public final notificationPanelExpandController:Lcom/android/systemui/shade/NotificationPanelExpandController;

.field public final notificationShortcutBottom:Landroid/widget/ImageView;

.field public final notificationShortcutBottomFolme:Lmiuix/animation/IFolme;

.field public final notificationShortcutTop:Landroid/widget/ImageView;

.field public final notificationShortcutTopFolme:Lmiuix/animation/IFolme;

.field public final notificationWeather:Landroid/widget/LinearLayout;

.field public final notificationWeatherFolme:Lmiuix/animation/IFolme;

.field public oldOrientation:I

.field public final onControlHeaderLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$onNormalHeaderLayoutChangeListener$1;

.field public final onNormalHeaderLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$onNormalHeaderLayoutChangeListener$1;

.field public final point:Landroid/graphics/Point;

.field public final qsHeaderController:Ldagger/Lazy;

.field public final qsHeaderView:Lcom/android/systemui/qs/MiuiQSHeaderView;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shadeHeaderController:Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;

.field public final shadeSwitchController:Lcom/miui/interfaces/shade/ShadeSwitchControllerExt;

.field public final shadeSwitchControllerImpl:Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;

.field public final statusBarStateListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$statusBarStateListener$1;

.field public switching:Z

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const v0, 0x3f733333

    const v1, 0x3eb33333

    invoke-static {v0, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_EDIT_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const v1, 0x3e19999a

    invoke-static {v0, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_EDIT_HEADER_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const v2, 0x3ee66666

    invoke-static {v0, v2}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_BRIGHTNESS_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const v2, 0x3f666666

    const v3, 0x3e4ccccd

    invoke-static {v2, v3}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_BRIGHTNESS_HEADER_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const v3, 0x3e99999a

    invoke-static {v2, v3}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_SECONDARY_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-static {v0, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_SECONDARY_HEADER_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const v0, 0x3f7d70a4

    const v1, 0x3dcccccd

    invoke-static {v0, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_NORMAL_NOTIF_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/view/LayoutInflater;Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;Lcom/miui/interfaces/shade/ShadeSwitchControllerExt;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController;Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/shade/NotificationPanelExpandController;Ldagger/Lazy;Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;Lcom/miui/interfaces/notification/INotifUnoccludedManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p12

    move-object/from16 v5, p15

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    const/4 v9, 0x0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->shadeHeaderController:Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;

    iput-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->shadeSwitchController:Lcom/miui/interfaces/shade/ShadeSwitchControllerExt;

    iput-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->context:Landroid/content/Context;

    move-object/from16 v10, p6

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v10, p7

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->expansionController:Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController;

    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlExpandProgressController:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;

    move-object/from16 v10, p9

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationExpandProgressController:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;

    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterHeaderController:Ldagger/Lazy;

    move-object/from16 v10, p11

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterContentController:Ldagger/Lazy;

    iput-object v4, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationPanelExpandController:Lcom/android/systemui/shade/NotificationPanelExpandController;

    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->qsHeaderController:Ldagger/Lazy;

    move-object/from16 v10, p14

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->shadeSwitchControllerImpl:Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;

    iput-object v5, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterExpandController:Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;

    iput-object v7, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterContainerController:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

    move-object/from16 v10, p20

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->barStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const v10, 0x7f0e0347

    const/4 v11, 0x0

    move-object/from16 v12, p2

    invoke-virtual {v12, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->headerView:Landroid/widget/FrameLayout;

    const/4 v12, 0x1

    iput v12, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->type:I

    iput v12, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->oldOrientation:I

    const-class v13, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->display:Landroid/view/Display;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->point:Landroid/graphics/Point;

    const v3, 0x7f0b0875

    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/MiuiNotificationHeaderView;

    iput-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHeaderView:Lcom/android/systemui/qs/MiuiNotificationHeaderView;

    const v13, 0x7f0b056e

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHorizontalTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    new-array v14, v12, [Landroid/view/View;

    aput-object v13, v14, v9

    invoke-static {v14}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHorizontalTimeFolme:Lmiuix/animation/IFolme;

    const v13, 0x7f0b019c

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    const v14, 0x7f0b0267

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    iput-object v14, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopView:Landroid/widget/LinearLayout;

    new-array v15, v12, [Landroid/view/View;

    aput-object v14, v15, v9

    invoke-static {v15}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopViewFolme:Lmiuix/animation/IFolme;

    const v14, 0x7f0b0266

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    iput-object v14, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomView:Landroid/widget/LinearLayout;

    new-array v15, v12, [Landroid/view/View;

    aput-object v14, v15, v9

    invoke-static {v15}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomViewFolme:Lmiuix/animation/IFolme;

    new-array v14, v12, [Landroid/view/View;

    aput-object v13, v14, v9

    invoke-static {v14}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTimeFolme:Lmiuix/animation/IFolme;

    const v13, 0x7f0b0894

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTop:Landroid/widget/ImageView;

    new-array v14, v12, [Landroid/view/View;

    aput-object v13, v14, v9

    invoke-static {v14}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTopFolme:Lmiuix/animation/IFolme;

    const v13, 0x7f0b0893

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottom:Landroid/widget/ImageView;

    new-array v14, v12, [Landroid/view/View;

    aput-object v13, v14, v9

    invoke-static {v14}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottomFolme:Lmiuix/animation/IFolme;

    const-string v13, "weather_container"

    invoke-static {v13}, Landroid/Utils/Utils;->IDtoID(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationWeather:Landroid/widget/LinearLayout;

    new-array v14, v12, [Landroid/view/View;

    aput-object v13, v14, v9

    invoke-static {v14}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationWeatherFolme:Lmiuix/animation/IFolme;

    const v13, 0x7f0b036f

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    new-array v13, v12, [Landroid/view/View;

    aput-object v3, v13, v9

    invoke-static {v13}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationDateTimeFolme:Lmiuix/animation/IFolme;

    const v3, 0x7f0b086e

    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;

    iput-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterHeaderView:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;

    const v13, 0x7f0b086d

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    new-array v14, v12, [Landroid/view/View;

    aput-object v13, v14, v9

    invoke-static {v14}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterDateViewFolme:Lmiuix/animation/IFolme;

    const v14, 0x7f0b086f

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;

    iput-object v14, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;

    new-array v15, v12, [Landroid/view/View;

    aput-object v14, v15, v9

    invoke-static {v15}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v15

    iput-object v15, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterStatusBarFolme:Lmiuix/animation/IFolme;

    const v15, 0x7f0b0be7

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    iput-object v15, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterSystemIcons:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    new-array v11, v12, [Landroid/view/View;

    aput-object v15, v11, v9

    invoke-static {v11}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterSystemIconsFolme:Lmiuix/animation/IFolme;

    const v11, 0x7f0b0b66

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iput-object v11, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterStatusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    new-array v15, v12, [Landroid/view/View;

    aput-object v11, v15, v9

    invoke-static {v15}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterStatusIconsFolme:Lmiuix/animation/IFolme;

    const v11, 0x7f0b0870

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    iput-object v11, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakeStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    new-array v15, v12, [Landroid/view/View;

    aput-object v11, v15, v9

    invoke-static {v15}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v15

    iput-object v15, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakeStatusBarFolme:Lmiuix/animation/IFolme;

    const v15, 0x7f0b0876

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/controlcenter/shade/MiuiPrivacyContainerView;

    iput-object v15, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterPrivacyContainer:Lcom/android/systemui/controlcenter/shade/MiuiPrivacyContainerView;

    move/from16 v16, v9

    new-array v9, v12, [Landroid/view/View;

    aput-object v15, v9, v16

    invoke-static {v9}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterPrivacyContainerFolme:Lmiuix/animation/IFolme;

    const v9, 0x7f0b0872

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/controlcenter/shade/MiuiFakePrivacyContainerView;

    iput-object v9, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFlipPrivacyContainer:Lcom/android/systemui/controlcenter/shade/MiuiFakePrivacyContainerView;

    new-array v2, v12, [Landroid/view/View;

    aput-object v9, v2, v16

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFlipPrivacyContainerFolme:Lmiuix/animation/IFolme;

    const v2, 0x7f0b0871

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controlcenter/shade/MiuiFakePrivacyContainerView;

    iput-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakePrivacyContainer:Lcom/android/systemui/controlcenter/shade/MiuiFakePrivacyContainerView;

    new-array v9, v12, [Landroid/view/View;

    aput-object v2, v9, v16

    invoke-static {v9}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakePrivacyContainerFolme:Lmiuix/animation/IFolme;

    const v9, 0x7f0b0869

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    iput-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterCarrierLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    new-array v9, v12, [Landroid/view/View;

    aput-object v3, v9, v16

    invoke-static {v9}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterCarrierLayoutFolme:Lmiuix/animation/IFolme;

    const v3, 0x7f0b0588

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakePrivacyDot:Landroid/widget/ImageView;

    const v2, 0x7f0b09ae

    invoke-virtual {v10, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/MiuiQSHeaderView;

    iput-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->qsHeaderView:Lcom/android/systemui/qs/MiuiQSHeaderView;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->isKeyguardState:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v9, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$statusBarStateListener$1;

    invoke-direct {v9, v0}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$statusBarStateListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;)V

    iput-object v9, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->statusBarStateListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$statusBarStateListener$1;

    invoke-virtual {v11, v8}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->setDependency(Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;)V

    invoke-virtual {v14, v8}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->setDependency(Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;)V

    invoke-virtual {v2, v8}, Lcom/android/systemui/qs/MiuiQSHeaderView;->setDependency(Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;)V

    new-instance v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$setCommonAccessibilityDelegate$1;

    invoke-direct {v2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    invoke-static {v13, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    new-instance v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$onNormalHeaderLayoutChangeListener$1;

    move/from16 v8, v16

    invoke-direct {v2, v0, v8}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$onNormalHeaderLayoutChangeListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;I)V

    iput-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->onNormalHeaderLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$onNormalHeaderLayoutChangeListener$1;

    new-instance v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$onNormalHeaderLayoutChangeListener$1;

    invoke-direct {v2, v0, v12}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$onNormalHeaderLayoutChangeListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;I)V

    iput-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->onControlHeaderLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$onNormalHeaderLayoutChangeListener$1;

    new-instance v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$configurationListener$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$configurationListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;)V

    iput-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->configurationListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$configurationListener$1;

    new-array v2, v12, [Landroid/view/View;

    aput-object v10, v2, v8

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->animator:Lmiuix/animation/IStateStyle;

    move-object/from16 v2, p4

    check-cast v2, Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;

    iget-object v8, v2, Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;->switchingState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v9, v2, Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;->switchProgressState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v10, v4, Lcom/android/systemui/shade/NotificationPanelExpandController;->visibleState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v11, v6, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v12, v6, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardGoingAway:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v5, v5, Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;->blurRatioState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v13, p19

    check-cast v13, Lcom/android/systemui/shade/NotifUnoccludedManagerImpl;

    iget-object v13, v13, Lcom/android/systemui/shade/NotifUnoccludedManagerImpl;->notifUnoccludedState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 p11, v3

    move-object/from16 p9, v5

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    move-object/from16 p7, v11

    move-object/from16 p8, v12

    move-object/from16 p10, v13

    filled-new-array/range {p4 .. p11}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$special$$inlined$combine$1;

    invoke-direct {v5, v3}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v5, v1, v3, v9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHeaderAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v2, Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;->switchingState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;->switchProgressState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v7, v7, Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;->expandStateForWindow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v6, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v9, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$controlCenterHeaderAlpha$1;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$controlCenterHeaderAlpha$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelExpandController;->blurRatioState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 p5, v2

    move-object/from16 p8, v4

    move-object/from16 p4, v5

    move-object/from16 p7, v6

    move-object/from16 p6, v7

    move-object/from16 p9, v9

    invoke-static/range {p4 .. p9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterHeaderAlpha:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-instance v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$hideConfig$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$hideConfig$1;-><init>(Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;)V

    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->hideConfig:Lmiuix/animation/base/AnimConfig;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getHeaderView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->headerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final getHeight()F
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->shadeHeaderController:Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;

    invoke-virtual {p0}, Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;->getCombinedHeaderHeight()F

    move-result p0

    return p0
.end method

.method public final getLayoutParams()Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->layoutParams:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->type:I

    return p0
.end method

.method public final onSwitchProgressChanged(F)V
    .registers 11

    const-string v0, "onSwitchProgressChanged: progress = "

    const-string v1, "CombinedHeaderController"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/clock/animation/TinyClockBaseAnimation$$ExternalSyntheticOutline0;->m(FLjava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f000000

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000

    if-gtz v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterExpandController:Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;

    invoke-interface {v0}, Lcom/miui/interfaces/shade/PanelExpandControllerExt;->getAppearance()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v5

    int-to-float v1, v4

    mul-float/2addr p1, v1

    sub-float p1, v0, p1

    invoke-static {p1, v3, v6}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v3, v0

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iget v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlLocationX:I

    iget v2, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationLocationX:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationLocationY:I

    iget v3, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlLocationY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_1

    neg-float v0, v0

    neg-float v2, v2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v3, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;

    if-eqz p1, :cond_2

    neg-float p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFlipPrivacyContainer:Lcom/android/systemui/controlcenter/shade/MiuiFakePrivacyContainerView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isVerticalMode(Landroid/content/Context;)Z

    move-result p1

    iget-object v4, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterPrivacyContainer:Lcom/android/systemui/controlcenter/shade/MiuiPrivacyContainerView;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterCarrierLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    if-eqz p1, :cond_3

    neg-float p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void

    :cond_3
    neg-float p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void

    :cond_4
    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationPanelExpandController:Lcom/android/systemui/shade/NotificationPanelExpandController;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelExpandController;->appearance:Z

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    int-to-float v0, v5

    int-to-float v1, v4

    mul-float/2addr p1, v1

    sub-float/2addr p1, v0

    invoke-static {p1, v3, v6}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v3, v0

    float-to-double v7, v2

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iget v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlLocationX:I

    iget v2, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationLocationX:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationLocationY:I

    iget v3, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlLocationY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_6

    neg-float v0, v0

    neg-float v2, v2

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isVerticalMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationExpandProgressController:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;

    invoke-virtual {v1, v6}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->updateWeight(F)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    neg-float v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTop:Landroid/widget/ImageView;

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTop:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottom:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottom:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHorizontalTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    neg-float p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final onSwitchingChanged(Z)V
    .registers 4

    const-string v0, "onSwitchingChanged: switching =  "

    const-string v1, "CombinedHeaderController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/clock/animation/TinyBubbleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->switching:Z

    return-void
.end method

.method public final setLayoutParams(Ljava/util/function/Consumer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->layoutParams:Ljava/util/function/Consumer;

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->updateControlCenterHeaderLayout()V

    return-void
.end method

.method public final start()V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->display:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->point:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHeaderView:Lcom/android/systemui/qs/MiuiNotificationHeaderView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->shadeHeaderController:Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;

    invoke-virtual {v2}, Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;->getCombinedHeaderHeight()F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->updateNormalHeaderLocation()V

    invoke-virtual {v2, p0}, Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;->registerHeader(Lcom/android/systemui/plugins/miui/shade/ShadeHeader;)V

    iget v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->type:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;->internalTransitionTo(IZ)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->shadeSwitchController:Lcom/miui/interfaces/shade/ShadeSwitchControllerExt;

    check-cast v0, Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;->addOnShadeSwitchChangedListener(Lcom/android/systemui/plugins/miui/shade/ShadeSwitchController$OnShadeSwitchChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->expansionController:Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController;

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController;->controlCenter:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

    invoke-virtual {v2}, Lcom/miui/systemui/controlcenter/ControlCenterImpl;->getExpandControllerDelegate()Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController;->controlCenterCallback:Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController$notificationCallback$1;

    invoke-virtual {v2, v3}, Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;->addCallback(Lcom/android/systemui/plugins/miui/shade/PanelExpandController$Callback;)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController;->notification:Lcom/miui/systemui/shade/NotificationShadeWrapper;

    iget-object v2, v2, Lcom/miui/systemui/shade/NotificationShadeWrapper;->panelExpandController:Lcom/android/systemui/shade/NotificationPanelExpandController;

    iget-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController;->notificationCallback:Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController$notificationCallback$1;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/NotificationPanelExpandController;->addCallback(Lcom/android/systemui/plugins/miui/shade/PanelExpandController$Callback;)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController;->shadeSwitchCallback:Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController$shadeSwitchCallback$1;

    iget-object v0, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderExpandController;->shadeSwitchController:Lcom/android/systemui/plugins/miui/shade/ShadeSwitchController;

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/miui/shade/ShadeSwitchController;->addOnShadeSwitchChangedListener(Lcom/android/systemui/plugins/miui/shade/ShadeSwitchController$OnShadeSwitchChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterHeaderController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlExpandProgressController:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->controlCenter:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

    invoke-virtual {v2}, Lcom/miui/systemui/controlcenter/ControlCenterImpl;->getExpandControllerDelegate()Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->controlCenterCallback:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterCallback$1;

    invoke-virtual {v2, v3}, Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;->addCallback(Lcom/android/systemui/plugins/miui/shade/PanelExpandController$Callback;)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->keyguardUpdateMonitorCallback:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$keyguardUpdateMonitorCallback$1;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->statusBarStateListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$statusBarStateListener$1;

    invoke-interface {v2, v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->onIslandStatusChangedListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$onIslandStatusChangedListener$1;

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->statusBarIslandControllerImp:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->addOnIslandStatusChangedListener(Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->onIslandAddRemoveListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$onIslandAddRemoveListener$1;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->addOnIslandAddRemoveChangedListener(Lcom/android/systemui/statusbar/OnIslandAddRemoveListener;)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->mConfigurationListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$mConfigurationListener$1;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v1}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterCallback$1;->onAppearanceChanged(ZZ)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->headerController:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object v2, v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterHeaderView:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;

    iget-object v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->headerLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$start$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$start$1$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;Lkotlin/coroutines/Continuation;)V

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v5, 0x3

    invoke-static {v4, v3, v2, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$start$2$1;

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$start$2$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v3, v2, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$start$3$1;

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$start$3$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v3, v2, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$start$4$1;

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$start$4$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v3, v2, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationExpandProgressController:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->notification:Lcom/miui/systemui/shade/NotificationShadeWrapper;

    iget-object v2, v2, Lcom/miui/systemui/shade/NotificationShadeWrapper;->panelExpandController:Lcom/android/systemui/shade/NotificationPanelExpandController;

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->notificationCallback:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;

    invoke-virtual {v2, v4}, Lcom/android/systemui/shade/NotificationPanelExpandController;->addCallback(Lcom/android/systemui/plugins/miui/shade/PanelExpandController$Callback;)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v6, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->configurationControllerCallback:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$configurationControllerCallback$1;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v1}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->onAppearanceChanged(ZZ)V

    iget-object v1, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->headerController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object v1, v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHeaderView:Lcom/android/systemui/qs/MiuiNotificationHeaderView;

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->notificationLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$clockLayoutChangeListener$1;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->saveFlipBigTimeHeaderLocationY()V

    new-instance v1, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$start$1;

    invoke-direct {v1, v0, v3}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$start$1;-><init>(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Lkotlin/coroutines/Continuation;)V

    iget-object v0, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v3, v1, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->qsHeaderController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/QSHeaderController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->configurationListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$configurationListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->barStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->statusBarStateListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$statusBarStateListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->headerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->onNormalHeaderLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$onNormalHeaderLayoutChangeListener$1;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->onControlHeaderLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$onNormalHeaderLayoutChangeListener$1;

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterHeaderView:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterContentController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/controlcenter/container/ControlCenterContentController;

    new-instance v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$start$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$start$1;-><init>(Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;)V

    invoke-virtual {v0, v1}, Lcom/miui/systemui/util/SimpleCallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$start$2$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$start$2$1;-><init>(Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;Lkotlin/coroutines/Continuation;)V

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, v3, v0, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$start$2$2;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$start$2$2;-><init>(Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v0, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    check-cast v0, Lkotlinx/coroutines/android/HandlerContext;

    iget-object v0, v0, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$start$2$3;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$start$2$3;-><init>(Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v1, v0, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final transitionFrom(Lcom/android/systemui/plugins/miui/shade/ShadeHeader;Z)V
    .registers 6

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/shade/ShadeHeader;->getType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transitionFrom "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CombinedHeaderController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->headerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v0, 0x3f800000

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->animator:Lmiuix/animation/IStateStyle;

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/shade/ShadeHeader;->getType()I

    move-result p1

    const/16 p2, 0x17

    if-eq p1, p2, :cond_2

    const/16 p2, 0xe9

    if-eq p1, p2, :cond_1

    const/16 p2, 0x5b25

    if-eq p1, p2, :cond_0

    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_0
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_EDIT_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_1
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_SECONDARY_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_2
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_BRIGHTNESS_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_3
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    filled-new-array {p1}, [Lmiuix/animation/property/FloatProperty;

    move-result-object p2

    invoke-interface {p0, p2}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/plugins/miui/shade/ShadeHeader;Z)V
    .registers 6

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/shade/ShadeHeader;->getType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transitionTo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CombinedHeaderController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->animator:Lmiuix/animation/IStateStyle;

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/shade/ShadeHeader;->getType()I

    move-result p1

    const/4 p2, 0x2

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->hideConfig:Lmiuix/animation/base/AnimConfig;

    if-eq p1, p2, :cond_3

    const/16 p2, 0x17

    if-eq p1, p2, :cond_2

    const/16 p2, 0xe9

    if-eq p1, p2, :cond_1

    const/16 p2, 0x5b25

    if-eq p1, p2, :cond_0

    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_0
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    sget-object p2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_EDIT_HEADER_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p0, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_1
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    sget-object p2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_SECONDARY_HEADER_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p0, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_2
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    sget-object p2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_BRIGHTNESS_HEADER_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p0, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_3
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    sget-object p2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_NORMAL_NOTIF_HIDE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p0, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_4
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    filled-new-array {p1}, [Lmiuix/animation/property/FloatProperty;

    move-result-object p2

    invoke-interface {v1, p2}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->headerView:Landroid/widget/FrameLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final updateControlCenterHeaderLayout()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->layoutParams:Ljava/util/function/Consumer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->shadeHeaderController:Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;

    invoke-virtual {v1}, Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;->getCombinedHeaderHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1}, Lcom/miui/systemui/shade/header/ShadeHeaderControllerImpl;->getCombinedHeaderHeight()F

    move-result v1

    float-to-int v1, v1

    if-le v3, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterHeaderView:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateNormalHeaderLocation()V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterHeaderView:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->point:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlLocationX:I

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHeaderView:Lcom/android/systemui/qs/MiuiNotificationHeaderView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->point:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationLocationX:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlLocationY:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationLocationY:I

    return-void
.end method

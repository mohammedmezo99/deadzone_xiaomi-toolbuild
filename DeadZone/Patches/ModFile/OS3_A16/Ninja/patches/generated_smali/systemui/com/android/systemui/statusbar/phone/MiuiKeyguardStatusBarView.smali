.class public Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;
.super Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

# interfaces
.implements Lcom/miui/interfaces/statusbar/ICarrierTextController$ICarrierTextListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;


# static fields
.field public static synthetic $r8$clinit:I


# instance fields
.field public hideStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mAlarmIcon:Landroid/widget/ImageView;

.field public mAlarmLayout:Landroid/widget/LinearLayout;

.field public mAlarmText:Landroid/widget/TextView;

.field public mBatteryIsandShowing:Z

.field public mCarrierTextLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

.field public mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

.field public mDisable2:I

.field public mFrameChangeListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$1;

.field public mFrameLocation:[I

.field public mHideStatusIconAnim:Lmiuix/animation/base/AnimConfig;

.field public mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public mIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

.field public mInit:Z

.field public mInsetsProvider:Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;

.field public mIsDark:Z

.field public mIsPrivacyPromptShowing:Z

.field public mIsRTL:Z

.field public final mIslandAddRemoveListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$3;

.field public mIslandListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$2;

.field public mKeyguardLeftSide:Landroid/view/View;

.field public mKeyguardLeftSideFolme:Lmiuix/animation/IFolme;

.field public mKeyguardRightSide:Landroid/view/View;

.field public mKeyguardStatusBarContent:Landroid/widget/RelativeLayout;

.field public mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public mLeftFrame:Landroid/widget/FrameLayout;

.field public mLightLockScreenWallpaper:Z

.field public mNextAlarmChangeCallback:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$4;

.field public mNextTrigger:J

.field public mRotationOrientation:I

.field public mShowCarrier:Z

.field public mShowStatusIconAnim:Lmiuix/animation/base/AnimConfig;

.field public mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

.field public mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

.field public mStatusIconAnim:Lmiuix/animation/IStateStyle;

.field public mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

.field public mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

.field public mToLockScreen:Z

.field public showConfig:Lmiuix/animation/base/AnimConfig;

.field public showStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public tintAreas:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mislandAvoid(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;Landroid/graphics/Rect;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLeftFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateLeftFrame(ZZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLeftFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateLeftFrame(ZZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateLeftFrame(ZZ)V

    return-void

    :cond_3
    sget-object v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_EDIT_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLeftFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFrameLocation:[I

    invoke-static {v0, v3}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFrameLocation:[I

    aget v3, v0, v2

    if-ltz v3, :cond_8

    aget v0, v0, v1

    if-gez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f071893

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->supportIslandTranslation(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->getTranslationX()I

    move-result v3

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFrameLocation:[I

    aget v4, v4, v2

    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result v5

    if-eqz v5, :cond_6

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_7

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_6
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLeftFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v0

    sub-int/2addr v5, v3

    if-ge p1, v5, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    xor-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateLeftFrame(ZZ)V

    :cond_8
    :goto_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLightLockScreenWallpaper:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsDark:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mNextTrigger:J

    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsRTL:Z

    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mRotationOrientation:I

    filled-new-array {p1, p1}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFrameLocation:[I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mBatteryIsandShowing:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mToLockScreen:Z

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFrameChangeListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$1;

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIslandListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$2;

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIslandAddRemoveListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$3;

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mNextAlarmChangeCallback:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$4;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mInit:Z

    const/high16 p2, 0x3f800000

    const v0, 0x3e4ccccd

    invoke-static {p2, v0}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->hideStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const v1, 0x3e99999a

    invoke-static {p2, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->showStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-static {p2}, Lcom/android/keyguard/clock/TinyClassicClockAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$6;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$6;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;I)V

    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->showConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusIconAnim:Lmiuix/animation/IStateStyle;

    invoke-static {p2}, Lcom/android/keyguard/clock/TinyClassicClockAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$6;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;I)V

    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v1

    invoke-virtual {p2, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mShowStatusIconAnim:Lmiuix/animation/base/AnimConfig;

    invoke-static {v0}, Lcom/android/keyguard/clock/TinyClassicClockAnimation$$ExternalSyntheticOutline0;->m(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$6;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$6;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;I)V

    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mHideStatusIconAnim:Lmiuix/animation/base/AnimConfig;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->tintAreas:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$5;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    return-void
.end method

.method private getHideAnimConfig()Lmiuix/animation/base/AnimConfig;
    .registers 2

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->hideStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    return-object v0
.end method

.method private getShowAnimConfig()Lmiuix/animation/base/AnimConfig;
    .registers 2

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->showStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    return-object v0
.end method


# virtual methods
.method public animateIconContainer(Z)V
    .registers 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mShowStatusIconAnim:Lmiuix/animation/base/AnimConfig;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mHideStatusIconAnim:Lmiuix/animation/base/AnimConfig;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusIconAnim:Lmiuix/animation/IStateStyle;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    aput-object v3, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusIconAnim:Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public final animateKeyguardLeftSideContainer(Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSideFolme:Lmiuix/animation/IFolme;

    if-nez v1, :cond_1

    invoke-static {v0}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSideFolme:Lmiuix/animation/IFolme;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L

    const-string v2, "keyguard_left_side_container_to"

    const-wide/16 v3, 0x0

    const-string v5, "keyguard_left_side_container_set"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSideFolme:Lmiuix/animation/IFolme;

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-instance v6, Lmiuix/animation/controller/AnimState;

    invoke-direct {v6, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v6, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    invoke-interface {p1, v3}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-static {v2, v5, v0, v1}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->getShowAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$6;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$6;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;I)V

    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSideFolme:Lmiuix/animation/IFolme;

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-instance v6, Lmiuix/animation/controller/AnimState;

    invoke-direct {v6, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v6, v5, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-static {v2, v5, v3, v4}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->getHideAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$6;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$6;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;I)V

    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public disable(IIIZ)V
    .registers 5

    if-nez p1, :cond_3

    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDisable2:I

    if-eq p1, p3, :cond_3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDisable2:I

    and-int/lit8 p1, p3, 0x2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public getCarrierSlotId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getPrivacyDotExtraPadding(IZ)I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0715ca

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public initCallback(Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mInit:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    const-string v0, "init callback from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiKeyguardStatusBarView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->keyguardUM:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {p1}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->isKeyguardShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->dozeServiceHost:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/sysuiinterfaces/IDozeServiceHost;

    check-cast v0, Lcom/android/keyguard/injector/DozeServiceHostInjector;

    iget-boolean v0, v0, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mFullAodEnable:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mToLockScreen:Z

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez v0, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;-><init>(ILcom/android/systemui/statusbar/StatusBarIslandControllerImpl;Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mToLockScreen:Z

    iput-boolean v0, v2, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->toLockScreen:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardRightSide:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->initMiuiViewsOnViewCreated(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/views/MiuiClock;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    :goto_1
    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->miuiPrivacyImpl:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->ccFake:Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;

    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->keyguardSystemIcons:Landroid/view/View;

    if-ne v0, p1, :cond_3

    goto :goto_2

    :cond_3
    iput-object p1, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->keyguardSystemIcons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->adjustRealSystemIcons()V

    :goto_2
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->keyguardPromptIcon:Landroid/view/View;

    if-ne v0, p1, :cond_4

    goto :goto_3

    :cond_4
    iput-object p1, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->keyguardPromptIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->adjustRealPromptIcon()V

    :goto_3
    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->carrierTextController:Lcom/miui/interfaces/statusbar/ICarrierTextController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextController;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextController;->addCallback(Lcom/miui/interfaces/statusbar/ICarrierTextController$ICarrierTextListener;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->iSysSettingsRepo:Lcom/miui/systemui/settings/data/repository/MiuiSystemSettingsRepository;

    const-string p1, "status_bar_show_carrier_under_keyguard"

    check-cast p0, Lcom/android/systemui/util/settings/repository/UserAwareSettingsRepository;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/util/settings/repository/UserAwareSettingsRepository;->intSetting(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$$ExternalSyntheticLambda0;

    invoke-direct {p1, v3}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;)V

    invoke-static {v3, p0, p1}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setNeedLimitIcon(Z)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setAnimatorController(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    new-instance p1, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, v3, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setAnimatable(Lcom/android/systemui/statusbar/views/IAnimatable;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    new-instance p1, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, v3, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->setAnimatable(Lcom/android/systemui/statusbar/views/IAnimatable;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mNextAlarmChangeCallback:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$4;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIslandListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$2;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->addOnIslandStatusChangedListener(Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIslandAddRemoveListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$3;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->addOnIslandAddRemoveChangedListener(Lcom/android/systemui/statusbar/OnIslandAddRemoveListener;)V

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mInit:Z

    :cond_5
    :goto_4
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const-string v0, "onAttachedToWindow"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->initCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCarrierTextChanged(IILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateViewStatusBarPaddingTopAndBottom(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateViewStatusBarPaddingTopAndBottom(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0715cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0718b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0718b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateViewMarginEnd(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0718b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsRTL:Z

    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result v1

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mRotationOrientation:I

    if-eq p1, v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsRTL:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mRotationOrientation:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mInsetsProvider:Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updatePadding(Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;)V

    :cond_3
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateViewStatusBarPaddingTopAndBottom(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateViewStatusBarPaddingTopAndBottom(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mCarrierTextLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07187b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;->leftCarrierTextView:Lcom/android/systemui/controlcenter/shade/ControlCenterCarrierText;

    iget-object v0, v0, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;->rightCarrierTextView:Lcom/android/systemui/controlcenter/shade/ControlCenterCarrierText;

    filled-new-array {v2, v0}, [Lcom/android/systemui/controlcenter/shade/ControlCenterCarrierText;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controlcenter/shade/ControlCenterCarrierText;

    invoke-virtual {v2, v1}, Lcom/android/systemui/controlcenter/shade/ControlCenterCarrierText;->setTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0715cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0718b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0718b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateViewMarginEnd(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0718b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071a22

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmText:Landroid/widget/TextView;

    aput-object v2, v0, v1

    sget-object v1, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght500:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Lcom/miui/utils/configs/MiuiConfigs;->applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071869

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmIcon:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsDark:Z

    if-eqz p0, :cond_4

    const p0, 0x7f081b45

    goto :goto_1

    :cond_4
    const p0, 0x7f081b46

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->keyguardUM:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->miuiPrivacyImpl:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->miuiPrivacyImpl:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePromptContainer(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->carrierTextController:Lcom/miui/interfaces/statusbar/ICarrierTextController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextController;->mListeners:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->nextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mNextAlarmChangeCallback:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$4;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIslandListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$2;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandStateHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;->onIslandStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIslandAddRemoveListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$3;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandAddRemoveHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandAddRemoveHandler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandAddRemoveHandler;->onIslandAddRemoveListeners:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->leftFolme:Lmiuix/animation/IFolme;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->rightFolme:Lmiuix/animation/IFolme;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->privacyFolme:Lmiuix/animation/IFolme;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->notificationFolme:Lmiuix/animation/IFolme;

    :cond_3
    :goto_2
    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onFinishInflate()V

    const v0, 0x7f0b05f9

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mCarrierTextLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    const v0, 0x7f0b0629

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardStatusBarContent:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0962

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b095d

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0b060e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLeftFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0b062a

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    const v0, 0x7f0b0b79

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardRightSide:Landroid/view/View;

    const v0, 0x7f0b0690

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLeftFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFrameChangeListener:Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$1;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->setLayoutFromTag(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->setStatusBatteryContainer(Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;)V

    return-void
.end method

.method public onMiuiThemeChanged$1(Z)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->onUiModeChanged()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmText:Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array v2, v1, [Landroid/widget/TextView;

    aput-object p1, v2, v0

    sget-object p1, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght500:Landroid/graphics/Typeface;

    invoke-static {p1, v2}, Lcom/miui/utils/configs/MiuiConfigs;->applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mCarrierTextLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;->leftCarrierTextView:Lcom/android/systemui/controlcenter/shade/ControlCenterCarrierText;

    iget-object v3, p1, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;->rightCarrierTextView:Lcom/android/systemui/controlcenter/shade/ControlCenterCarrierText;

    filled-new-array {v2, v3}, [Lcom/android/systemui/controlcenter/shade/ControlCenterCarrierText;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controlcenter/shade/ControlCenterCarrierText;

    invoke-virtual {v3}, Lcom/android/systemui/controlcenter/shade/ControlCenterCarrierText;->getCarrierTextView()Landroid/widget/TextView;

    move-result-object v3

    new-array v4, v1, [Landroid/widget/TextView;

    aput-object v3, v4, v0

    sget-object v3, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypeface:Landroid/graphics/Typeface;

    invoke-static {v3, v4}, Lcom/miui/utils/configs/MiuiConfigs;->applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    new-array v1, v1, [Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;->carrierSeparatorText:Landroid/widget/TextView;

    aput-object p1, v1, v0

    sget-object p1, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Lcom/miui/utils/configs/MiuiConfigs;->applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateIconsAndTextColors()V

    return-void
.end method

.method public onPromptInfoChanged(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$AndroidPromptInfo;)V
    .registers 4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsPrivacyPromptShowing:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsPrivacyPromptShowing:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->controlCenter:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

    iget-object v0, v0, Lcom/miui/systemui/controlcenter/ControlCenterImpl;->eventHandlerImpl$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;

    const-string v1, "keyguard_status_bar"

    invoke-virtual {v0, p1, v1}, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->handleExpandEvent(Landroid/view/MotionEvent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onUiModeChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .registers 2

    return-void
.end method

.method public setDependency(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    const-string p1, "setDependency"

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->initCallback(Ljava/lang/String;)V

    return-void
.end method

.method public setDisplayCutout(Landroid/view/DisplayCutout;Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;)Z
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateKeyguardStatusBarHeight()V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updatePadding(Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    check-cast p2, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;->currentRotationHasCornerCutout()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateLayoutParamsForCutout()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateLayoutParamsNoCutout()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 3

    return-void
.end method

.method public bridge synthetic setImeWindowStatus(IIIZ)V
    .registers 5
    .param p2  # I
        .annotation build Landroid/inputmethodservice/InputMethodService$ImeWindowVisibility;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic setNavigationBarLumaSamplingEnabled(IZ)V
    .registers 3

    return-void
.end method

.method public bridge synthetic setQsTiles([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setSplitscreenFocus(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic setTopAppHidesStatusBar(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setWindowState(III)V
    .registers 4

    return-void
.end method

.method public showNextAlarm(J)V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmLayout:Landroid/widget/LinearLayout;

    const-string v1, "MiuiKeyguardStatusBarView"

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmText:Landroid/widget/TextView;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_2

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "showNextAlarm: hide alarm by aod = trigger = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->miuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mIs24:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    goto :goto_0

    :cond_3
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    or-int/lit8 v0, v0, 0x4c

    invoke-static {v2, p1, p2, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f140e9e

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsDark:Z

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003c

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmIcon:Landroid/widget/ImageView;

    const v2, 0x7f081b46

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003b

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmIcon:Landroid/widget/ImageView;

    const v2, 0x7f081b45

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mAlarmLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showNextAlarm: trigger = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " isDark = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsDark:Z

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/BaseMiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void

    :cond_5
    :goto_2
    const-string p0, "showNextAlarm: blocked by layout is null "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateCarrierVisibility$1()V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mCarrierTextLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mShowCarrier:Z

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mNextTrigger:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mShowCarrier:Z

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mNextTrigger:J

    cmp-long v2, v6, v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    const-string v2, "updateCarrierVisibility: show="

    const-string v3, ",  userSetting="

    const-string v6, ", noAlarm="

    invoke-static {v2, v3, v6, v0, v5}, Lcom/android/keyguard/clock/animation/eastern/EasterArtACClockBaseAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MiuiKeyguardStatusBarView"

    invoke-static {v2, v3, v1}, Lcom/android/keyguard/BaseMiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mCarrierTextLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateIconsAndTextColors()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->iconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getLightModeIconColorSingleTone()I

    move-result v1

    invoke-interface {v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getDarkModeIconColorSingleTone()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLightLockScreenWallpaper:Z

    if-eqz v2, :cond_1

    move v1, v0

    :cond_1
    if-eqz v2, :cond_2

    const/high16 v0, 0x3f800000

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v3, "updateIconsAndTextColors: dark = "

    const-string v4, ", iconColor = 0x"

    invoke-static {v3, v4, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", intensity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiKeyguardStatusBarView"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mCarrierTextLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;->setKeyguardCarrierColor(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->setLight(IZZ)V

    goto :goto_1

    :cond_4
    const-string v3, "update colors fail. IconManager null"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDep:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerInject;->ccFake:Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;

    iget-object v3, v3, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->headerController:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object v3, v3, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakeStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->setKeyguardStatusBarColors(ZIF)V

    const v3, 0x7f0b0180

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    if-eqz v4, :cond_5

    check-cast v3, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->tintAreas:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Ljava/util/ArrayList;FI)V

    invoke-interface {v3, v1, v1, v5}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onLightDarkTintChanged(IIZ)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsDark:Z

    if-eq v0, v2, :cond_6

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsDark:Z

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mNextTrigger:J

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->showNextAlarm(J)V

    :cond_6
    :goto_2
    return-void
.end method

.method public updateKeyguardStatusBarHeight()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->getStatusBarHeaderHeightKeyguard(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v2, v0, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public updateLayoutParamsForCutout()Z
    .registers 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsForCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->setDripEnd(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x10

    const v2, 0x7f0b0354

    invoke-virtual {p0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    return v0
.end method

.method public updateLayoutParamsNoCutout()Z
    .registers 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsNoCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->setDripEnd(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :cond_0
    return v0
.end method

.method public updateLeftFrame(ZZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLeftFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->AUTO:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$13;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->showStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->hideStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_3
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_4
    :goto_0
    return-void
.end method

.method public updatePadding(Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;)V
    .registers 9

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mInsetsProvider:Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;->getStatusBarContentInsetsForCurrentRotation()Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v3, v2, Landroid/graphics/Insets;->top:I

    iget v2, v2, Landroid/graphics/Insets;->right:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {p1, v3, v2, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    iget v2, p1, Landroid/graphics/Insets;->left:I

    iget v3, p1, Landroid/graphics/Insets;->top:I

    iget v4, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, v3, v4, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsPrivacyDotEnabled:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMinDotWidth:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget p1, p1, Landroid/graphics/Insets;->left:I

    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsPrivacyDotEnabled:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMinDotWidth:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->right:I

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->top:I

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0718b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0718b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mRotationOrientation:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsRTL:Z

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->getPrivacyDotExtraPadding(IZ)I

    move-result v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsRTL:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardStatusBarContent:Landroid/widget/RelativeLayout;

    add-int/2addr v4, p1

    add-int/2addr v4, v5

    add-int/2addr v3, v2

    invoke-virtual {v6, v4, v0, v3, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_4

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardStatusBarContent:Landroid/widget/RelativeLayout;

    add-int/2addr v3, p1

    add-int/2addr v4, v2

    add-int/2addr v4, v5

    invoke-virtual {v6, v3, v0, v4, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mIsRTL:Z

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move p1, v2

    :goto_5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateViewMarginEnd(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0718b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->getPrivacyDotExtraPadding(IZ)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateViewStatusBarPaddingTopAndBottom(Landroid/view/View;)V
    .registers 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0718b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0718b1

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

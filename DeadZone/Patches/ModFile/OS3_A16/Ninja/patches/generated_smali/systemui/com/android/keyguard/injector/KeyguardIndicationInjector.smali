.class public final Lcom/android/keyguard/injector/KeyguardIndicationInjector;
.super Ljava/lang/Object;


# instance fields
.field public final mBatteryIndicationClickListener:Lcom/android/keyguard/injector/KeyguardIndicationInjector$1;

.field public mBatteryLevel:I

.field public mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

.field public mChargeClickCount:I

.field public mChargeTextClickTime:J

.field public mChargingSpeed:I

.field public final mContext:Landroid/content/Context;

.field public mIndicationFromBottomAni:Landroid/view/animation/Animation;

.field public mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

.field public final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mPowerPluggedIn:Z

.field public mReverseChargingState:I

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public shouldShowReverseCharging:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->shouldShowReverseCharging:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeClickCount:I

    new-instance v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/injector/KeyguardIndicationInjector$1;-><init>(Lcom/android/keyguard/injector/KeyguardIndicationInjector;)V

    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mBatteryIndicationClickListener:Lcom/android/keyguard/injector/KeyguardIndicationInjector$1;

    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput-object p3, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p4, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1, p2}, Lbg/mods/Lockscreen/ChargingInfoHelper;->init(Landroid/content/Context;Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    return-void
.end method


# virtual methods
.method public final handlePowerIndicationAnimation(Landroid/widget/TextView;)V
    .registers 14

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationFromBottomAni:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationFromBottomAni:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/injector/KeyguardIndicationInjector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/keyguard/injector/KeyguardIndicationInjector$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/injector/KeyguardIndicationInjector$2;

    invoke-direct {v1, p1}, Lcom/android/keyguard/injector/KeyguardIndicationInjector$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationTVAlphaAni:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x40000000

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v3, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationFromBottomAni:Landroid/view/animation/Animation;

    invoke-virtual {v3, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mIndicationFromBottomAni:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

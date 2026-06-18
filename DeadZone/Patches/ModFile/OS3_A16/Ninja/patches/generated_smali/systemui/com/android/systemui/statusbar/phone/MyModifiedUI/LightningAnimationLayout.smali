.class public Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;


# instance fields
.field private isCharging:Z

.field private isRegister:Z

.field private mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mEnableChargeAnim:Z

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->isRegister:Z

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$2;-><init>(Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->update()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->isCharging:Z

    return p1
.end method

.method private update()V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lightning_animation"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mEnableChargeAnim:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->isCharging:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mEnableChargeAnim:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningBackground;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "light"

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningBackground;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->isCharging:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mEnableChargeAnim:Z

    if-nez v1, :cond_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mBgDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 5

    goto :goto_3

    nop

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mObserver:Landroid/database/ContentObserver;

    goto :goto_1

    nop

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_a

    nop

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    goto :goto_b

    nop

    :goto_3
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onAttachedToWindow()V

    goto :goto_5

    nop

    :goto_4
    const/4 v2, 0x0

    goto :goto_0

    nop

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    goto :goto_2

    nop

    :goto_6
    const-string v1, "lightning_animation"

    goto :goto_9

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_8

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_6

    nop

    :goto_9
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4

    nop

    :goto_a
    return-void

    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_7

    nop
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    goto :goto_5

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_4

    nop

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    goto :goto_6

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_3

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_7

    nop

    :goto_4
    return-void

    :goto_5
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onDetachedFromWindow()V

    goto :goto_1

    nop

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    goto :goto_2

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_8

    nop

    :goto_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->mObserver:Landroid/database/ContentObserver;

    goto :goto_0

    nop
.end method

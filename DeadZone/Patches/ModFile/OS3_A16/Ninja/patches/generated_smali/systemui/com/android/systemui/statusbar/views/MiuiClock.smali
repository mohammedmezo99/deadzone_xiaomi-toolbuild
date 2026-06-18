.class public Lcom/android/systemui/statusbar/views/MiuiClock;
.super Landroid/widget/TextView;

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController$ClockListener;
.implements Ljava/lang/Runnable;
.implements Lcom/android/systemui/statusbar/views/IBlurEffect;


# instance fields
.field public blurRadius:I

.field public mAmPmStyle:I

.field public mAreas:Ljava/util/ArrayList;

.field public mAttached:Z

.field public mAutoDark:Z

.field public mClockMode:I

.field public mDarkColor:I

.field public mDarkIntensity:F

.field public mLightColor:I

.field public mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

.field public mMultiTaskVisibility:I

.field public mNonAdaptedColor:I

.field public mPolicyVisibility:I

.field public mShowDark:Z

.field public mTint:I

.field public mUseTint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/views/MiuiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mPolicyVisibility:I

    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMultiTaskVisibility:I

    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->blurRadius:I

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAreas:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAutoDark:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/res/R$styleable;->MiuiClock:[I

    invoke-virtual {p1, p2, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAmPmStyle:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mShowDark:Z

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mClockMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mNonAdaptedColor:I

    filled-new-array {p0}, [Landroid/widget/TextView;

    move-result-object p0

    sget-boolean p2, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght460:Landroid/graphics/Typeface;

    invoke-static {p2, p0}, Lcom/miui/utils/configs/MiuiConfigs;->applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght500:Landroid/graphics/Typeface;

    invoke-static {p2, p0}, Lcom/miui/utils/configs/MiuiConfigs;->applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private startSecondsTicker()V
    .registers 8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    sub-long v0, v2, v0

    invoke-virtual {p0, p0, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopSecondsTicker()V
    .registers 2

    invoke-virtual {p0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getBlurRadius()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->blurRadius:I

    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAttached:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mClockListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateTime()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAutoDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mShowDark:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateClockVisibility()V

    return-void
.end method

.method public onDarkChanged(Ljava/util/ArrayList;FI)V
    .registers 11

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAreas:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mDarkIntensity:F

    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mTint:I

    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mLightColor:I

    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mDarkColor:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mUseTint:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateLightDarkTint$2(Ljava/util/ArrayList;FIIIZ)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->stopSecondsTicker()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mClockListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAttached:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAutoDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mShowDark:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    return-void
.end method

.method public onLightDarkTintChanged(IIZ)V
    .registers 11

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mLightColor:I

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mDarkColor:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mUseTint:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAreas:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mDarkIntensity:F

    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mTint:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateLightDarkTint$2(Ljava/util/ArrayList;FIIIZ)V

    return-void
.end method

.method public run()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateTime()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->startSecondsTicker()V

    :cond_0
    return-void
.end method

.method public setAutoDark(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAutoDark:Z

    return-void
.end method

.method public setBlurRadius(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->blurRadius:I

    return-void
.end method

.method public setClockMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mClockMode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateTime()V

    return-void
.end method

.method public setMultiTaskVisibility(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMultiTaskVisibility:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMultiTaskVisibility:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateClockVisibility()V

    :cond_0
    return-void
.end method

.method public setPolicyVisibility(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mPolicyVisibility:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mPolicyVisibility:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateClockVisibility()V

    :cond_0
    return-void
.end method

.method public updateClockVisibility()V
    .registers 4

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mPolicyVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMultiTaskVisibility:I

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->startSecondsTicker()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->stopSecondsTicker()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->stopSecondsTicker()V

    return-void
.end method

.method public updateLightDarkTint$2(Ljava/util/ArrayList;FIIIZ)V
    .registers 7

    if-eqz p6, :cond_0

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mNonAdaptedColor:I

    goto :goto_0

    :cond_0
    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getDarkIntensity(Ljava/util/ArrayList;Landroid/view/View;F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    move p4, p5

    :cond_1
    iput p4, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mNonAdaptedColor:I

    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mNonAdaptedColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateTime()V
    .registers 15

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    if-nez v0, :cond_0

    goto :goto_a

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mMiuiStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mIs24:Z

    const/16 v3, 0x10

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mClockMode:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_4

    if-ne v2, v3, :cond_2

    const v2, 0x7f140e95

    goto :goto_1

    :cond_2
    const v2, 0x7f140e94

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v2, "datastylest1"

    invoke-static {v2}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_3

    goto :goto_2

    :cond_3
    const-string v9, "H:mm"

    const-string v2, "datast2"

    invoke-static {v2, v9}, Landroid/preference/SettingsEliteHelper;->getStringofSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :goto_2
    const-string v2, "H:mm"

    :goto_3
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_4
    const/4 v5, 0x4

    const v7, 0x7f140e92

    if-ne v4, v5, :cond_6

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v2, "datastylest2"

    invoke-static {v2}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_5

    goto :goto_4

    :cond_5
    const-string v9, "EEEE d MMMM"

    const-string v2, "datast3"

    invoke-static {v2, v9}, Landroid/preference/SettingsEliteHelper;->getStringofSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :goto_4
    const-string v2, "EEEE d MMMM"

    :goto_5
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_6
    const/4 v5, 0x1

    const v8, 0x7f140e93

    if-ne v4, v5, :cond_8

    if-ne v2, v3, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_8
    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    if-ne v2, v3, :cond_9

    const v4, 0x7f140e98

    goto :goto_6

    :cond_9
    const v4, 0x7f140e99

    :goto_6
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v4, "datastylest3"

    invoke-static {v4}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_a

    goto :goto_7

    :cond_a
    const-string v9, "EEEE d MMMM"

    const-string v4, "datast4"

    invoke-static {v4, v9}, Landroid/preference/SettingsEliteHelper;->getStringofSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :goto_7
    const-string v4, "EEEE d MMMM"

    :goto_8
    invoke-virtual {v0, v1, v4}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-ne v2, v3, :cond_b

    move v7, v8

    :cond_b
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    goto :goto_9

    :cond_c
    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiClock;->mAmPmStyle:I

    if-nez v3, :cond_d

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v3

    or-int/lit8 v0, v2, 0xc

    invoke-static {v1, v3, v4, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_d
    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v3

    or-int/lit8 v0, v2, 0x4c

    invoke-static {v1, v3, v4, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v6, :cond_e

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_e
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/qs/MiuiNotificationHeaderView;

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_a
    return-void
.end method

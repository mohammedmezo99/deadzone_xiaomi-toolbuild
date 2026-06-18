.class public Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;
.super Lcom/android/systemui/newstatusbar/layouts/SingleLayout;


# instance fields
.field private mEnableRotation:Z

.field private mPosition:I

.field private observer:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->mEnableRotation:Z

    return p1
.end method

.method private setRotate()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->mEnableRotation:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mobile_group"

    invoke-static {v1, v2}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotationY(F)V

    :cond_1
    const-string v3, "mobile_container_left"

    invoke-static {v1, v3}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "mobile_type"

    invoke-static {v1, v3}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "mobile_left_mobile_inout"

    invoke-static {v1, v4}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_2

    int-to-float v5, v0

    invoke-virtual {v3, v5}, Landroid/view/View;->setRotationY(F)V

    :cond_2
    if-eqz v4, :cond_3

    int-to-float v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotationY(F)V

    :cond_3
    const-string v3, "mobile_container_left_vertical"

    invoke-static {v1, v3}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotationY(F)V

    :cond_4
    const-string v3, "mobile_volte"

    invoke-static {v1, v3}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotationY(F)V

    :cond_5
    const-string v3, "mobile_vowifi"

    invoke-static {v1, v3}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotationY(F)V

    :cond_6
    return-void
.end method


# virtual methods
.method public getRealMeasuredWidth()I
    .registers 5

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    return v1

    :cond_0
    return v1
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    goto :goto_6

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_1
    goto :goto_8

    nop

    :goto_2
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_5

    nop

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->observer:Landroid/database/ContentObserver;

    goto :goto_2

    nop

    :goto_4
    return-void

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_a

    nop

    :goto_6
    invoke-super {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->onDetachedFromWindow()V

    goto :goto_3

    nop

    :goto_7
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->observer:Landroid/database/ContentObserver;

    goto :goto_0

    nop

    :goto_8
    const/4 v0, 0x0

    goto :goto_9

    nop

    :goto_9
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->observer:Landroid/database/ContentObserver;

    goto :goto_4

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_7

    nop
.end method

.method protected onFinishInflate()V
    .registers 6

    goto :goto_4

    nop

    :goto_0
    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    :goto_1
    goto :goto_c

    nop

    :goto_2
    new-instance v2, Landroid/os/Handler;

    goto :goto_e

    nop

    :goto_3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    goto :goto_7

    nop

    :goto_4
    invoke-super {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->onFinishInflate()V

    goto :goto_17

    nop

    :goto_5
    const/4 v4, 0x0

    goto :goto_1b

    nop

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_12

    nop

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_14

    nop

    :goto_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    nop

    :goto_9
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_a

    nop

    :goto_a
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->observer:Landroid/database/ContentObserver;

    goto :goto_5

    nop

    :goto_b
    const-string v1, "elem_net1"

    goto :goto_1d

    nop

    :goto_c
    return-void

    :goto_d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1c

    nop

    :goto_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_15

    nop

    :goto_f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_8

    nop

    :goto_10
    if-eqz v1, :cond_0

    goto :goto_13

    :cond_0
    goto :goto_19

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_3

    nop

    :goto_12
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_13
    goto :goto_18

    nop

    :goto_14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_d

    nop

    :goto_15
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_16

    nop

    :goto_16
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout$1;-><init>(Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;Landroid/os/Handler;)V

    goto :goto_1e

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->getElementName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    nop

    :goto_18
    new-instance v1, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout$1;

    goto :goto_2

    nop

    :goto_19
    const-string v1, "elem_net2"

    goto :goto_6

    nop

    :goto_1a
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->observer:Landroid/database/ContentObserver;

    goto :goto_0

    nop

    :goto_1b
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1a

    nop

    :goto_1c
    const-string v3, "_rotate"

    goto :goto_f

    nop

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_10

    nop

    :goto_1e
    iput-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->observer:Landroid/database/ContentObserver;

    goto :goto_11

    nop
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->updateRotate()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->updateRotate()V

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->onViewRemoved(Landroid/view/View;)V

    return-void
.end method

.method public removeAllViews()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->setRotate()V

    invoke-super {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->removeAllViews()V

    return-void
.end method

.method public setPosition(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_rotate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/SettingsEliteHelper;->getBoolofSettings(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->mEnableRotation:Z

    iput p1, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->mPosition:I

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->setPosition(I)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->setRotate()V

    return-void
.end method

.method public updateDrawable()V
    .registers 1

    return-void
.end method

.method public updateRotate()V
    .registers 2

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->mPosition:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;->setPosition(I)V

    return-void
.end method

.class public Lcom/android/systemui/statusbar/views/NetworkSpeedView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;
.implements Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;
.implements Lcom/android/systemui/newstatusbar/policy/ISlots;


# instance fields
.field public isDouble:Z

.field private isMove:Z

.field private isStatusBarLocation:Z

.field public mAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation
.end field

.field public mBlocked:Z

.field public mContainer:Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;

.field public mDarkColor:I

.field public mDarkIntensity:F

.field public mEmptyWidth:I

.field public final mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

.field public mLightColor:I

.field public mNetworkSpeedNumber:Ljava/lang/CharSequence;

.field public mNetworkSpeedNumberText:Landroid/widget/TextView;

.field public mNetworkSpeedUnit:Ljava/lang/CharSequence;

.field public mNetworkSpeedUnitText:Landroid/widget/TextView;

.field public mShown:Z

.field public mTint:I

.field public mUseTint:Z

.field public mVisibleByController:Z

.field public mVisibleState:I

.field public slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mEmptyWidth:I

    new-instance v1, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iput v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isStatusBarLocation:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isMove:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mEmptyWidth:I

    new-instance v1, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iput v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isStatusBarLocation:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isMove:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mEmptyWidth:I

    new-instance v1, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iput v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isStatusBarLocation:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isMove:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/views/NetworkSpeedView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateDouble()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/views/NetworkSpeedView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateHeight()V

    return-void
.end method

.method private isVisibleInCCAndLC()Z
    .registers 3

    const-string v0, "network_speed_visible_cc_and_lock_screen"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getBoolofSettings(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private moveNetSpeedGroup()V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isMove:Z

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/ElementController;->getNetSpeedGroup(Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mContainer:Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;

    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mContainer:Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mContainer:Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    if-eqz v2, :cond_0

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getVisibility()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->onIconChange()V

    goto :goto_1

    :cond_2
    const-string v2, "Nastya_super"

    const-string v3, "moveNetSpeedGroup: group = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateDouble()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_speed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isDouble:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateHeight()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mContainer:Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->updateHeight()V

    return-void
.end method


# virtual methods
.method public getBlurRadius()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iget v0, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->blurRadius:I

    return v0
.end method

.method public getDeemHide()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getTranslationY()F

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getNetworkSpeedWidth()I
    .registers 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getWidth()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mEmptyWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, "0.00 "

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mEmptyWidth:I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mEmptyWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const-string v5, "KB/s "

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mEmptyWidth:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getPaddingStart()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mEmptyWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mEmptyWidth:I

    return v3
.end method

.method public getRemoveFlag()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    return v0
.end method

.method public getSlot()Ljava/lang/String;
    .registers 2

    const-string v0, "network_speed"

    return-object v0
.end method

.method public getVisibleState()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    return v0
.end method

.method public final isIconVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleByController:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    goto :goto_3

    nop

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_2

    nop

    :goto_2
    return-void

    :goto_3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    goto :goto_4

    nop

    :goto_4
    const-class v0, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    goto :goto_0

    nop

    :goto_5
    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    goto :goto_1

    nop
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .registers 11

    iget v4, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mLightColor:I

    iget v5, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mDarkColor:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mUseTint:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateLightDarkTint$1(Ljava/util/ArrayList;FIIIZ)V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateResources$4()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    goto :goto_d

    nop

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_2
    goto :goto_12

    nop

    :goto_3
    iput-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    goto :goto_10

    nop

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    goto :goto_c

    nop

    :goto_5
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_14

    nop

    :goto_6
    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    nop

    :goto_7
    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_6

    nop

    :goto_8
    const-class v0, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    goto :goto_0

    nop

    :goto_9
    return-void

    :goto_a
    if-nez v0, :cond_0

    goto :goto_17

    :cond_0
    goto :goto_4

    nop

    :goto_b
    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    goto :goto_5

    nop

    :goto_c
    if-nez v0, :cond_1

    goto :goto_17

    :cond_1
    goto :goto_7

    nop

    :goto_d
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    goto :goto_8

    nop

    :goto_e
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isMove:Z

    goto :goto_16

    nop

    :goto_f
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_1

    nop

    :goto_10
    const/4 v1, 0x0

    goto :goto_e

    nop

    :goto_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    goto :goto_13

    nop

    :goto_12
    const/4 v1, 0x0

    goto :goto_3

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/ElementController;->getNetSpeedGroup(Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_f

    nop

    :goto_14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isMove:Z

    goto :goto_a

    nop

    :goto_15
    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_11

    nop

    :goto_16
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isStatusBarLocation:Z

    :goto_17
    goto :goto_9

    nop
.end method

.method public final onFinishInflate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "network_speed_number"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    const-string v1, "network_speed_unit"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    const-string v1, "network_speed_container"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mContainer:Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateResources$4()V

    return-void
.end method

.method public onIconChange()V
    .registers 2

    new-instance v0, Lcom/android/systemui/statusbar/views/NetworkSpeedView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView$1;-><init>(Lcom/android/systemui/statusbar/views/NetworkSpeedView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLightDarkTintChanged(IIZ)V
    .registers 11

    iput p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mLightColor:I

    iput p2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mDarkColor:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mUseTint:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mDarkIntensity:F

    iget v3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mTint:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateLightDarkTint$1(Ljava/util/ArrayList;FIIIZ)V

    return-void
.end method

.method public final onMiuiThemeChanged$1(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateResources$4()V

    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onVisibilityAggregated(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mShown:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateNetworkSpeed()V

    :cond_0
    return-void
.end method

.method public final performRemove()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->view:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setAnimationEnable(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->animateEnable:Z

    return-void
.end method

.method public setBlocked(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateVisibility()V

    :cond_0
    return-void
.end method

.method public setBlurRadius(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->setBlurRadius(I)V

    return-void
.end method

.method public setDecorColor(I)V
    .registers 2

    return-void
.end method

.method public setDeemHide(Z)V
    .registers 2

    return-void
.end method

.method public setDripEnd(Z)V
    .registers 2

    return-void
.end method

.method public setNetworkSpeed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumber:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnit:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleByController:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mShown:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateNetworkSpeed()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setRemove(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    return-void
.end method

.method public setSlot(Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isStatusBarLocation:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->moveNetSpeedGroup()V

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .registers 2

    return-void
.end method

.method public setStaticDrawableColor(II)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setStaticDrawableColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mContainer:Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setVisibilityByController(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleByController:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleByController:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateVisibility()V

    :cond_0
    return-void
.end method

.method public setVisibleState(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setVisibleState(IZ)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isStatusBarLocation:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mContainer:Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "status_bar_view_state_tag"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hideBySpace =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, v0, Lcom/android/systemui/statusbar/views/NewStatusIconState;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/views/NewStatusIconState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/views/NewStatusIconState;->hiddenBySpace:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final updateLightDarkTint$1(Ljava/util/ArrayList;FIIIZ)V
    .registers 10

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mDarkIntensity:F

    iput p3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mTint:I

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getDarkIntensity(Ljava/util/ArrayList;Landroid/view/View;F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move v1, p5

    goto :goto_0

    :cond_1
    move v1, p4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getDarkIntensity(Ljava/util/ArrayList;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    move p4, p5

    :cond_2
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final updateNetworkSpeed()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumber:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnit:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnit:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnit:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateResources$4()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mEmptyWidth:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "TextAppearance.StatusBar.NetWorkSpeedNumber"

    invoke-static {v1, v2}, Landroid/Utils/Utils;->StyleToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "TextAppearance.StatusBar.NetWorkSpeedUnit"

    invoke-static {v1, v2}, Landroid/Utils/Utils;->StyleToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mDarkIntensity:F

    iget v5, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mTint:I

    iget v6, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mLightColor:I

    iget v7, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mDarkColor:I

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mUseTint:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateLightDarkTint$1(Ljava/util/ArrayList;FIIIZ)V

    return-void
.end method

.method public final updateVisibility()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleByController:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isStatusBarLocation:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->isVisibleInCCAndLC()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateNetworkSpeed()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setRemove(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->requestLayout()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setRemove(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateNetworkSpeed()V

    :goto_1
    return-void

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mHelper:Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->animateEnable:Z

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setRemove(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->requestLayout()V

    return-void

    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setRemove(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->setVisibility(I)V

    return-void
.end method

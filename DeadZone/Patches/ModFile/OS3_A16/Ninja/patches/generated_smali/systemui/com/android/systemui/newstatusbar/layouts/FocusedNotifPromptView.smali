.class public Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;
.super Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;


# instance fields
.field private final margin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "focused_notif_content_start"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->margin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "focused_notif_content_start"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->margin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "focused_notif_content_start"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->margin:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 14

    goto :goto_18

    nop

    :goto_0
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;->getMeasuredHeight()I

    move-result v6

    goto :goto_f

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->getMeasuredHeight()I

    move-result v0

    goto :goto_1d

    nop

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    goto :goto_20

    nop

    :goto_3
    iget-object v7, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    goto :goto_16

    nop

    :goto_4
    if-eqz v0, :cond_0

    goto :goto_26

    :cond_0
    goto :goto_25

    nop

    :goto_5
    div-int/lit8 v4, v4, 0x2

    goto :goto_d

    nop

    :goto_6
    return-void

    :goto_7
    goto :goto_27

    nop

    :goto_8
    iget-object v6, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    goto :goto_0

    nop

    :goto_9
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    goto :goto_a

    nop

    :goto_a
    const/4 v3, 0x0

    goto :goto_13

    nop

    :goto_b
    sub-int v4, v0, v4

    goto :goto_12

    nop

    :goto_c
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    goto :goto_4

    nop

    :goto_d
    move v5, v4

    goto :goto_1b

    nop

    :goto_e
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;->getMeasuredWidth()I

    move-result v1

    goto :goto_9

    nop

    :goto_f
    add-int/2addr v6, v5

    goto :goto_17

    nop

    :goto_10
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    goto :goto_15

    nop

    :goto_11
    return-void

    :goto_12
    div-int/lit8 v4, v4, 0x2

    goto :goto_24

    nop

    :goto_13
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    goto :goto_1e

    nop

    :goto_14
    add-int/2addr v3, v1

    goto :goto_10

    nop

    :goto_15
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    goto :goto_21

    nop

    :goto_16
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    goto :goto_1f

    nop

    :goto_17
    invoke-virtual {v2, v3, v4, v1, v6}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;->layout(IIII)V

    goto :goto_2

    nop

    :goto_18
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    goto :goto_1c

    nop

    :goto_19
    add-int/2addr v6, v1

    goto :goto_22

    nop

    :goto_1a
    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_6

    nop

    :goto_1b
    iget v6, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->margin:I

    goto :goto_19

    nop

    :goto_1c
    if-nez v0, :cond_1

    goto :goto_7

    :cond_1
    goto :goto_c

    nop

    :goto_1d
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    goto :goto_e

    nop

    :goto_1e
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;->getMeasuredHeight()I

    move-result v4

    goto :goto_b

    nop

    :goto_1f
    add-int/2addr v7, v5

    goto :goto_1a

    nop

    :goto_20
    iget v3, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->margin:I

    goto :goto_14

    nop

    :goto_21
    sub-int v4, v0, v4

    goto :goto_5

    nop

    :goto_22
    iget-object v7, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    goto :goto_28

    nop

    :goto_23
    add-int/2addr v6, v7

    goto :goto_3

    nop

    :goto_24
    move v5, v4

    goto :goto_8

    nop

    :goto_25
    goto :goto_7

    :goto_26
    goto :goto_1

    nop

    :goto_27
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->onLayout(ZIIII)V

    goto :goto_11

    nop

    :goto_28
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    goto :goto_23

    nop
.end method

.method protected onMeasure(II)V
    .registers 5

    goto :goto_11

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    goto :goto_b

    nop

    :goto_1
    add-int/2addr v0, v1

    goto :goto_16

    nop

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->setMeasuredDimension(II)V

    goto :goto_e

    nop

    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->setMeasuredDimension(II)V

    :goto_4
    goto :goto_12

    nop

    :goto_5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;->getMeasuredWidth()I

    move-result v0

    goto :goto_6

    nop

    :goto_6
    iget v1, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->margin:I

    goto :goto_1

    nop

    :goto_7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;->getVisibility()I

    move-result v0

    goto :goto_17

    nop

    :goto_8
    if-eqz v0, :cond_0

    goto :goto_f

    :cond_0
    :goto_9
    goto :goto_15

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    goto :goto_8

    nop

    :goto_b
    if-nez v0, :cond_1

    goto :goto_f

    :cond_1
    goto :goto_18

    nop

    :goto_c
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    goto :goto_1c

    nop

    :goto_d
    if-eqz v0, :cond_2

    goto :goto_f

    :cond_2
    goto :goto_1d

    nop

    :goto_e
    goto :goto_4

    :goto_f
    goto :goto_14

    nop

    :goto_10
    if-nez v0, :cond_3

    goto :goto_f

    :cond_3
    goto :goto_0

    nop

    :goto_11
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->onMeasure(II)V

    goto :goto_1b

    nop

    :goto_12
    return-void

    :goto_13
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->getMeasuredHeight()I

    move-result v1

    goto :goto_3

    nop

    :goto_14
    const/4 v0, 0x0

    goto :goto_13

    nop

    :goto_15
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    goto :goto_5

    nop

    :goto_16
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    goto :goto_c

    nop

    :goto_17
    if-nez v0, :cond_4

    goto :goto_9

    :cond_4
    goto :goto_19

    nop

    :goto_18
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    goto :goto_7

    nop

    :goto_19
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    goto :goto_a

    nop

    :goto_1a
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->getVisibility()I

    move-result v0

    goto :goto_d

    nop

    :goto_1c
    add-int/2addr v0, v1

    goto :goto_1a

    nop

    :goto_1d
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    goto :goto_10

    nop
.end method

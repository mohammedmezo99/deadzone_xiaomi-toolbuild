.class public Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;
.super Lcom/android/systemui/newstatusbar/clock/ClockLayout;


# instance fields
.field private isFirstStart:Z

.field private isMultiClock:Z

.field private multiClockLayout:Landroid/view/View;

.field private final stokView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/newstatusbar/clock/IClock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/newstatusbar/clock/ClockView;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;-><init>(Landroid/content/Context;Lcom/android/systemui/newstatusbar/clock/ClockView;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->stokView:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isFirstStart:Z

    return-void
.end method

.method private updateVisibility()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isFirstStart:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isMultiClock:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-super {p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->startAnimDots(Z)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->stokView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v3, v2}, Lcom/android/systemui/newstatusbar/clock/IClock;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->multiClockLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->multiClockLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->firstCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v0, v1}, Lcom/android/systemui/newstatusbar/clock/IClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v0, v1}, Lcom/android/systemui/newstatusbar/clock/IClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    aget-object v0, v0, v1

    invoke-interface {v0, v1}, Lcom/android/systemui/newstatusbar/clock/IClock;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isFirstStart:Z

    return-void
.end method


# virtual methods
.method protected initialize()V
    .registers 4

    goto :goto_13

    nop

    :goto_0
    const/4 v2, 0x0

    goto :goto_1d

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_1a

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    nop

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_8

    nop

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_0

    nop

    :goto_5
    aget-object v1, v1, v2

    goto :goto_19

    nop

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->stokView:Ljava/util/ArrayList;

    goto :goto_17

    nop

    :goto_7
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_f

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    nop

    :goto_9
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->stokView:Ljava/util/ArrayList;

    goto :goto_3

    nop

    :goto_a
    const/4 v2, -0x2

    goto :goto_11

    nop

    :goto_b
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    nop

    :goto_c
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->thirdCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_1b

    nop

    :goto_d
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->stokView:Ljava/util/ArrayList;

    goto :goto_c

    nop

    :goto_e
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->stokView:Ljava/util/ArrayList;

    goto :goto_4

    nop

    :goto_f
    const/4 v2, 0x1

    goto :goto_5

    nop

    :goto_10
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->stokView:Ljava/util/ArrayList;

    goto :goto_7

    nop

    :goto_11
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_b

    nop

    :goto_12
    return-void

    :goto_13
    invoke-super {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->initialize()V

    goto :goto_6

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->updateSettings()V

    goto :goto_12

    nop

    :goto_15
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->multiClockLayout:Landroid/view/View;

    goto :goto_16

    nop

    :goto_16
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_a

    nop

    :goto_17
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->firstCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_18

    nop

    :goto_18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    nop

    :goto_1a
    invoke-direct {v0, v1}, Lcom/android/systemui/newstatusbar/clock/MultiClockView;-><init>(Landroid/content/Context;)V

    goto :goto_15

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    nop

    :goto_1c
    new-instance v0, Lcom/android/systemui/newstatusbar/clock/MultiClockView;

    goto :goto_1

    nop

    :goto_1d
    aget-object v1, v1, v2

    goto :goto_2

    nop
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    goto :goto_3

    nop

    :goto_0
    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    goto :goto_6

    nop

    :goto_1
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    :goto_2
    goto :goto_5

    nop

    :goto_3
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->onLayout(ZIIII)V

    goto :goto_9

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_8

    nop

    :goto_5
    return-void

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->multiClockLayout:Landroid/view/View;

    goto :goto_4

    nop

    :goto_7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_a

    nop

    :goto_8
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->multiClockLayout:Landroid/view/View;

    goto :goto_7

    nop

    :goto_9
    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isMultiClock:Z

    goto :goto_0

    nop

    :goto_a
    const/4 v3, 0x0

    goto :goto_1

    nop
.end method

.method protected onMeasure(II)V
    .registers 6

    goto :goto_7

    nop

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isMultiClock:Z

    goto :goto_1

    nop

    :goto_1
    if-nez v1, :cond_0

    goto :goto_f

    :cond_0
    goto :goto_8

    nop

    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->onMeasure(II)V

    goto :goto_9

    nop

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->multiClockLayout:Landroid/view/View;

    goto :goto_c

    nop

    :goto_4
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->setMeasuredDimension(II)V

    :goto_5
    goto :goto_6

    nop

    :goto_6
    return-void

    :goto_7
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    goto :goto_0

    nop

    :goto_8
    const/4 v1, 0x0

    goto :goto_e

    nop

    :goto_9
    iget-boolean v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isMultiClock:Z

    goto :goto_11

    nop

    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_b

    nop

    :goto_b
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->multiClockLayout:Landroid/view/View;

    goto :goto_d

    nop

    :goto_c
    if-nez v1, :cond_1

    goto :goto_5

    :cond_1
    goto :goto_a

    nop

    :goto_d
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_4

    nop

    :goto_e
    iput-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    :goto_f
    goto :goto_2

    nop

    :goto_10
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    goto :goto_3

    nop

    :goto_11
    if-nez v1, :cond_2

    goto :goto_5

    :cond_2
    goto :goto_10

    nop
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isMultiClock:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->onTextChanged(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public refreshClockSettings(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isMultiClock:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->refreshClockSettings(Z)V

    :cond_0
    return-void
.end method

.method protected startAnimDots(Z)V
    .registers 3

    goto :goto_0

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isMultiClock:Z

    goto :goto_1

    nop

    :goto_1
    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    goto :goto_3

    nop

    :goto_2
    return-void

    :goto_3
    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->startAnimDots(Z)V

    :goto_4
    goto :goto_2

    nop
.end method

.method public updateSettings()V
    .registers 3

    const-string v0, "statusbar_clock_style"

    const/4 v1, -0x5

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isMultiClock:Z

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->updateVisibility()V

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;->isMultiClock:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->updateSettings()V

    :cond_1
    return-void
.end method

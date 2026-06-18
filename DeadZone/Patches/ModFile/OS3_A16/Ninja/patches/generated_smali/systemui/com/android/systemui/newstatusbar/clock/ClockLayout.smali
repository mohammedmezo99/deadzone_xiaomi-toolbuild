.class public Lcom/android/systemui/newstatusbar/clock/ClockLayout;
.super Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;

# interfaces
.implements Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;
.implements Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$CallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;,
        Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;,
        Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "clock_app"


# instance fields
.field private animDots:Landroid/view/animation/AlphaAnimation;

.field private final clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

.field public clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

.field private dataUpdatedToStatus:Z

.field protected final dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

.field private isExpand:Z

.field private final secondTick:Lcom/android/systemui/newstatusbar/clock/SecondTick;

.field protected thirdCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/newstatusbar/clock/ClockView;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    iput-object p2, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    new-instance v0, Lcom/android/systemui/newstatusbar/clock/SecondTick;

    invoke-direct {v0, p1}, Lcom/android/systemui/newstatusbar/clock/SecondTick;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->secondTick:Lcom/android/systemui/newstatusbar/clock/SecondTick;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/newstatusbar/clock/ClockLayout;)Lcom/android/systemui/newstatusbar/clock/ClockView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    return-object v0
.end method

.method private hasRunning()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->animDots:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->hasStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->animDots:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->hasEnded()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOneDigitsFirst()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/clock/ClockView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    const-string v3, " "

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public asView()Lcom/android/systemui/newstatusbar/clock/ClockLayout;
    .registers 1

    return-object p0
.end method

.method protected createView(Landroid/widget/LinearLayout;I)Lcom/android/systemui/newstatusbar/clock/IClock;
    .registers 6

    goto :goto_8

    nop

    :goto_0
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    nop

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    nop

    :goto_2
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;-><init>(Lcom/android/systemui/newstatusbar/clock/ClockLayout;Landroid/content/Context;)V

    goto :goto_3

    nop

    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_5

    nop

    :goto_4
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->initialize()V

    goto :goto_9

    nop

    :goto_5
    const/4 v2, -0x2

    goto :goto_0

    nop

    :goto_6
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_4

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_2

    nop

    :goto_8
    new-instance v0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;

    goto :goto_7

    nop

    :goto_9
    return-object v0
.end method

.method public fullInvalidate()V
    .registers 5

    invoke-super {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->fullInvalidate()V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->thirdCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v0}, Lcom/android/systemui/newstatusbar/clock/IClock;->fullInvalidate()V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/android/systemui/newstatusbar/clock/IClock;->fullInvalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getClockSettings()Lcom/android/systemui/newstatusbar/clock/ClockSettings;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    return-object v0
.end method

.method protected initialize()V
    .registers 9

    goto :goto_28

    nop

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->key:Ljava/lang/String;

    goto :goto_2c

    nop

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    goto :goto_39

    nop

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    goto :goto_12

    nop

    :goto_4
    const/4 v4, -0x1

    goto :goto_1d

    nop

    :goto_5
    iput-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_d

    nop

    :goto_6
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;-><init>(Lcom/android/systemui/newstatusbar/clock/ClockLayout;Landroid/content/Context;)V

    goto :goto_18

    nop

    :goto_7
    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->isExpand:Z

    goto :goto_29

    nop

    :goto_8
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->thirdCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_37

    nop

    :goto_9
    aget-object v1, v1, v2

    goto :goto_31

    nop

    :goto_a
    aget-object v1, v1, v2

    goto :goto_26

    nop

    :goto_b
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_13

    nop

    :goto_c
    invoke-virtual {v1, v6}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    nop

    :goto_d
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_10

    nop

    :goto_e
    aget-object v1, v1, v0

    goto :goto_38

    nop

    :goto_f
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_a

    nop

    :goto_10
    new-instance v6, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_2

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_6

    nop

    :goto_12
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockView;->updateTime()V

    goto :goto_1c

    nop

    :goto_13
    new-instance v2, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_11

    nop

    :goto_14
    iput-boolean v2, v1, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->isDot:Z

    goto :goto_2a

    nop

    :goto_15
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_16

    nop

    :goto_16
    aget-object v1, v1, v2

    goto :goto_30

    nop

    :goto_17
    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->createView(Landroid/widget/LinearLayout;I)Lcom/android/systemui/newstatusbar/clock/IClock;

    move-result-object v0

    goto :goto_8

    nop

    :goto_18
    aput-object v2, v1, v0

    goto :goto_1e

    nop

    :goto_19
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_21

    nop

    :goto_1a
    const/4 v1, 0x2

    goto :goto_22

    nop

    :goto_1b
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_27

    nop

    :goto_1c
    return-void

    :goto_1d
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_33

    nop

    :goto_1e
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_32

    nop

    :goto_1f
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_20

    nop

    :goto_20
    aget-object v1, v1, v2

    goto :goto_14

    nop

    :goto_21
    const/4 v3, -0x2

    goto :goto_4

    nop

    :goto_22
    invoke-virtual {p0, p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->createView(Landroid/widget/LinearLayout;I)Lcom/android/systemui/newstatusbar/clock/IClock;

    move-result-object v1

    goto :goto_5

    nop

    :goto_23
    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->createView(Landroid/widget/LinearLayout;I)Lcom/android/systemui/newstatusbar/clock/IClock;

    move-result-object v1

    goto :goto_25

    nop

    :goto_24
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v0

    goto :goto_0

    nop

    :goto_25
    iput-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->firstCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_b

    nop

    :goto_26
    const/4 v3, 0x3

    goto :goto_3b

    nop

    :goto_27
    aget-object v1, v1, v0

    goto :goto_3c

    nop

    :goto_28
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    goto :goto_24

    nop

    :goto_29
    const/4 v0, 0x0

    goto :goto_23

    nop

    :goto_2a
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_9

    nop

    :goto_2b
    aget-object v1, v1, v0

    goto :goto_36

    nop

    :goto_2c
    const-string v1, "expanded_clock"

    goto :goto_1

    nop

    :goto_2d
    aput-object v6, v1, v2

    goto :goto_15

    nop

    :goto_2e
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->addView(Landroid/view/View;I)V

    goto :goto_2f

    nop

    :goto_2f
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_e

    nop

    :goto_30
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_35

    nop

    :goto_31
    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->setText(Ljava/lang/String;Z)V

    goto :goto_34

    nop

    :goto_32
    aget-object v1, v1, v0

    goto :goto_19

    nop

    :goto_33
    invoke-virtual {v1, v2}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3a

    nop

    :goto_34
    const/4 v0, 0x4

    goto :goto_17

    nop

    :goto_35
    invoke-direct {v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_c

    nop

    :goto_36
    const/4 v2, 0x1

    goto :goto_2e

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->updateSettings()V

    goto :goto_3e

    nop

    :goto_38
    iput-boolean v2, v1, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->isDot:Z

    goto :goto_1b

    nop

    :goto_39
    invoke-direct {v6, p0, v7}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;-><init>(Lcom/android/systemui/newstatusbar/clock/ClockLayout;Landroid/content/Context;)V

    goto :goto_2d

    nop

    :goto_3a
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_2b

    nop

    :goto_3b
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->addView(Landroid/view/View;I)V

    goto :goto_1f

    nop

    :goto_3c
    const-string v5, ":"

    goto :goto_3d

    nop

    :goto_3d
    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->setText(Ljava/lang/String;Z)V

    goto :goto_1a

    nop

    :goto_3e
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->updateSecondEnable()V

    goto :goto_3

    nop
.end method

.method public isSecondEnable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isSecondEnable:Z

    return v0
.end method

.method public isStatus()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->key:Ljava/lang/String;

    const-string v1, "status_clock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    goto :goto_3

    nop

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$CallBack;)V

    goto :goto_5

    nop

    :goto_2
    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    goto :goto_1

    nop

    :goto_3
    invoke-super {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->onAttachedToWindow()V

    goto :goto_4

    nop

    :goto_4
    const-class v0, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    goto :goto_0

    nop

    :goto_5
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    goto :goto_5

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$CallBack;)V

    goto :goto_2

    nop

    :goto_1
    const-class v0, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    goto :goto_4

    nop

    :goto_2
    return-void

    :goto_3
    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    goto :goto_0

    nop

    :goto_4
    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    nop

    :goto_5
    invoke-super {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->onDetachedFromWindow()V

    goto :goto_1

    nop
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    goto :goto_3

    nop

    :goto_0
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/systemui/newstatusbar/clock/ClockView;->layout(IIII)V

    :goto_1
    goto :goto_4

    nop

    :goto_2
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_7

    nop

    :goto_3
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->onLayout(ZIIII)V

    goto :goto_8

    nop

    :goto_4
    return-void

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->getHeight()I

    move-result v2

    goto :goto_6

    nop

    :goto_6
    const/4 v3, 0x0

    goto :goto_0

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->getWidth()I

    move-result v1

    goto :goto_5

    nop

    :goto_8
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    goto :goto_2

    nop
.end method

.method protected onMeasure(II)V
    .registers 9

    goto :goto_3

    nop

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_1c

    nop

    :goto_1
    goto :goto_1a

    :goto_2
    goto :goto_15

    nop

    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->onMeasure(II)V

    goto :goto_26

    nop

    :goto_4
    if-nez v2, :cond_0

    goto :goto_14

    :cond_0
    goto :goto_d

    nop

    :goto_5
    float-to-int v5, v5

    goto :goto_e

    nop

    :goto_6
    const-string v4, "0"

    goto :goto_27

    nop

    :goto_7
    const-string v2, "0:00:00"

    goto :goto_8

    nop

    :goto_8
    goto :goto_1a

    :goto_9
    goto :goto_18

    nop

    :goto_a
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_11

    nop

    :goto_b
    const/high16 v5, 0x40000000

    goto :goto_24

    nop

    :goto_c
    iget-boolean v2, v1, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isSecondEnable:Z

    goto :goto_2a

    nop

    :goto_d
    const-string v2, "0:00"

    goto :goto_13

    nop

    :goto_e
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->setMeasuredDimension(II)V

    :goto_f
    goto :goto_25

    nop

    :goto_10
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->isOneDigitsFirst()Z

    move-result v2

    goto :goto_20

    nop

    :goto_11
    invoke-interface {v5}, Lcom/android/systemui/newstatusbar/clock/IClock;->getTextHeight()F

    move-result v5

    goto :goto_5

    nop

    :goto_12
    if-nez v0, :cond_1

    goto :goto_f

    :cond_1
    goto :goto_17

    nop

    :goto_13
    goto :goto_1a

    :goto_14
    goto :goto_19

    nop

    :goto_15
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->isOneDigitsFirst()Z

    move-result v2

    goto :goto_4

    nop

    :goto_16
    const/4 v1, 0x0

    goto :goto_29

    nop

    :goto_17
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_16

    nop

    :goto_18
    const-string v2, "00:00:00"

    goto :goto_1

    nop

    :goto_19
    const-string v2, "00:00"

    :goto_1a
    goto :goto_0

    nop

    :goto_1b
    if-gt v4, v5, :cond_2

    goto :goto_23

    :cond_2
    goto :goto_6

    nop

    :goto_1c
    iget v4, v1, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->typeFaseStyle:I

    goto :goto_1f

    nop

    :goto_1d
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    goto :goto_1e

    nop

    :goto_1e
    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v1

    goto :goto_c

    nop

    :goto_1f
    const/4 v5, 0x1

    goto :goto_1b

    nop

    :goto_20
    if-nez v2, :cond_3

    goto :goto_9

    :cond_3
    goto :goto_7

    nop

    :goto_21
    float-to-int v4, v3

    goto :goto_a

    nop

    :goto_22
    add-float/2addr v3, v4

    :goto_23
    goto :goto_21

    nop

    :goto_24
    div-float/2addr v4, v5

    goto :goto_22

    nop

    :goto_25
    return-void

    :goto_26
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    goto :goto_12

    nop

    :goto_27
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    goto :goto_b

    nop

    :goto_28
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    goto :goto_1d

    nop

    :goto_29
    aget-object v0, v0, v1

    goto :goto_28

    nop

    :goto_2a
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_10

    nop
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .registers 9

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->firstCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v4, v3}, Lcom/android/systemui/newstatusbar/clock/IClock;->onTextChanged(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v4, v3}, Lcom/android/systemui/newstatusbar/clock/IClock;->onTextChanged(Ljava/lang/CharSequence;)V

    iget-boolean v4, v2, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isSecondEnable:Z

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->thirdCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v1, v3}, Lcom/android/systemui/newstatusbar/clock/IClock;->onTextChanged(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v1, v2, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isDotsEnable:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->startAnimDots(Z)V

    :cond_1
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->onVisibilityAggregated(Z)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockView;->updateTime()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->isExpand:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityAggregated: al = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/clock/ClockView;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  trAl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/clock/ClockView;->getTransitionAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clock_app"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->isExpand:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;->updateLoc()V

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isDotsEnable:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->startAnimDots(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->isExpand:Z

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->refreshClockSettings(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->secondTick:Lcom/android/systemui/newstatusbar/clock/SecondTick;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->onVisibleChange(Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;Z)V

    :cond_5
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    goto :goto_5

    nop

    :goto_0
    if-eq p1, p0, :cond_0

    goto :goto_3

    :cond_0
    goto :goto_6

    nop

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    goto :goto_2

    nop

    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockView;->updateTime()V

    :goto_3
    goto :goto_4

    nop

    :goto_4
    return-void

    :goto_5
    invoke-super {p0, p1, p2}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->onVisibilityChanged(Landroid/view/View;I)V

    goto :goto_0

    nop

    :goto_6
    if-eqz p2, :cond_1

    goto :goto_3

    :cond_1
    goto :goto_1

    nop
.end method

.method public refreshClockSettings(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dataUpdatedToStatus:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dataUpdatedToStatus:Z

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->updateToStatus()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dataUpdatedToStatus:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dataUpdatedToStatus:Z

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->update()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->updateSecondEnable()V

    iget-object v2, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->getSize()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/newstatusbar/clock/ClockView;->setTextSize(F)V

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->getSize()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->setTextSize(F)V

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->typeFaseStyle:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->updateTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->fullInvalidate()V

    iget-boolean v2, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isSecondEnable:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/clock/ClockView;->updateTime()V

    :cond_3
    iget-boolean v2, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isSecondEnable:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->startAnimDots(Z)V

    return-void
.end method

.method public secondTick()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockView;->updateTime()V

    return-void
.end method

.method public setTextSize(F)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/android/systemui/newstatusbar/clock/IClock;->setTextSize(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->thirdCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v0, p1}, Lcom/android/systemui/newstatusbar/clock/IClock;->setTextSize(F)V

    return-void
.end method

.method public setTextSizeWidthAnimation(F)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->setTextSizeWidthAnimation(F)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/android/systemui/newstatusbar/clock/IClock;->setTextSizeWidthAnimation(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->thirdCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v0, p1}, Lcom/android/systemui/newstatusbar/clock/IClock;->setTextSizeWidthAnimation(F)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockView;->updateTime()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->setVisibility(I)V

    return-void
.end method

.method protected startAnimDots(Z)V
    .registers 5

    goto :goto_22

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    goto :goto_e

    nop

    :goto_1
    const/4 v1, 0x0

    goto :goto_c

    nop

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_7

    nop

    :goto_3
    const/4 v1, 0x1

    goto :goto_27

    nop

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    nop

    :goto_5
    iget-boolean v0, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isSecondEnable:Z

    goto :goto_9

    nop

    :goto_6
    new-instance v1, Lcom/android/systemui/newstatusbar/clock/ClockLayout$1;

    goto :goto_26

    nop

    :goto_7
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->animDots:Landroid/view/animation/AlphaAnimation;

    goto :goto_13

    nop

    :goto_8
    const/4 v1, 0x2

    goto :goto_24

    nop

    :goto_9
    if-nez v0, :cond_0

    goto :goto_1c

    :cond_0
    goto :goto_d

    nop

    :goto_a
    if-eqz p1, :cond_1

    goto :goto_15

    :cond_1
    goto :goto_10

    nop

    :goto_b
    return-void

    :goto_c
    aget-object v0, v0, v1

    goto :goto_12

    nop

    :goto_d
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_3

    nop

    :goto_e
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v0

    goto :goto_5

    nop

    :goto_f
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_1

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    goto :goto_14

    nop

    :goto_11
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->animDots:Landroid/view/animation/AlphaAnimation;

    goto :goto_16

    nop

    :goto_12
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->animDots:Landroid/view/animation/AlphaAnimation;

    goto :goto_4

    nop

    :goto_13
    const/16 v1, 0x46

    goto :goto_1e

    nop

    :goto_14
    return-void

    :goto_15
    goto :goto_2c

    nop

    :goto_16
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    :goto_17
    goto :goto_b

    nop

    :goto_18
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_29

    nop

    :goto_19
    const/4 v2, 0x0

    goto :goto_18

    nop

    :goto_1a
    const-wide/16 v1, 0x3de

    goto :goto_2

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_1c
    goto :goto_11

    nop

    :goto_1d
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->hasRunning()Z

    move-result v0

    goto :goto_28

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    goto :goto_1f

    nop

    :goto_1f
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->animDots:Landroid/view/animation/AlphaAnimation;

    goto :goto_8

    nop

    :goto_20
    if-nez v0, :cond_2

    goto :goto_15

    :cond_2
    goto :goto_a

    nop

    :goto_21
    const/high16 v1, 0x3f800000

    goto :goto_19

    nop

    :goto_22
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->animDots:Landroid/view/animation/AlphaAnimation;

    goto :goto_20

    nop

    :goto_23
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_f

    nop

    :goto_24
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    goto :goto_2b

    nop

    :goto_25
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    goto :goto_21

    nop

    :goto_26
    invoke-direct {v1, p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$1;-><init>(Lcom/android/systemui/newstatusbar/clock/ClockLayout;)V

    goto :goto_23

    nop

    :goto_27
    aget-object v0, v0, v1

    goto :goto_2a

    nop

    :goto_28
    if-eqz v0, :cond_3

    goto :goto_17

    :cond_3
    goto :goto_25

    nop

    :goto_29
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->animDots:Landroid/view/animation/AlphaAnimation;

    goto :goto_1a

    nop

    :goto_2a
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->animDots:Landroid/view/animation/AlphaAnimation;

    goto :goto_1b

    nop

    :goto_2b
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->animDots:Landroid/view/animation/AlphaAnimation;

    goto :goto_6

    nop

    :goto_2c
    if-nez p1, :cond_4

    goto :goto_17

    :cond_4
    goto :goto_1d

    nop
.end method

.method public updateSecondEnable()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isSecondEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->startAnimDots(Z)V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isDotsEnable:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->startAnimDots(Z)V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->thirdCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v1, v2}, Lcom/android/systemui/newstatusbar/clock/IClock;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->secondTick:Lcom/android/systemui/newstatusbar/clock/SecondTick;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->isShown()Z

    move-result v3

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->onVisibleChange(Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;Z)V

    :cond_1
    return-void
.end method

.method public updateSettings()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clockSettings:Lcom/android/systemui/newstatusbar/clock/ClockSettings;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings;->getClockData()Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->updateSecondEnable()V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->getSize()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/newstatusbar/clock/ClockView;->setTextSize(F)V

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->getSize()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->setTextSize(F)V

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->typeFaseStyle:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->updateTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->fullInvalidate()V

    iget-boolean v1, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isSecondEnable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->clock:Lcom/android/systemui/newstatusbar/clock/ClockView;

    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/clock/ClockView;->updateTime()V

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/newstatusbar/clock/ClockSettings$ClockData;->isSecondEnable:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->startAnimDots(Z)V

    const-class v1, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    invoke-static {v1}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    invoke-virtual {v1, p0}, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$CallBack;)V

    const-class v1, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    invoke-static {v1}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    invoke-virtual {v1, p0}, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$CallBack;)V

    return-void
.end method

.method public updateTypeface(Landroid/graphics/Typeface;I)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;->updateTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->thirdCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/newstatusbar/clock/IClock;->updateTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout;->dots:[Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/newstatusbar/clock/IClock;->updateTypeface(Landroid/graphics/Typeface;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

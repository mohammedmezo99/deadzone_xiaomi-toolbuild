.class Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;
.super Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/clock/ClockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullCharacterLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/clock/ClockLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/newstatusbar/clock/ClockLayout;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->this$0:Lcom/android/systemui/newstatusbar/clock/ClockLayout;

    invoke-direct {p0, p2}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutExt;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createView(Landroid/widget/LinearLayout;I)Lcom/android/systemui/newstatusbar/clock/IClock;
    .registers 6

    goto :goto_9

    nop

    :goto_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    goto :goto_2

    nop

    :goto_1
    return-object v0

    :goto_2
    const/4 v2, -0x2

    goto :goto_4

    nop

    :goto_3
    invoke-virtual {p1, v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    nop

    :goto_4
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_3

    nop

    :goto_5
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;-><init>(Lcom/android/systemui/newstatusbar/clock/ClockLayout;Landroid/content/Context;)V

    goto :goto_0

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_5

    nop

    :goto_7
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->this$0:Lcom/android/systemui/newstatusbar/clock/ClockLayout;

    goto :goto_6

    nop

    :goto_8
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->initialize()V

    goto :goto_1

    nop

    :goto_9
    new-instance v0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;

    goto :goto_7

    nop
.end method

.method protected initialize()V
    .registers 2

    goto :goto_3

    nop

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->firstCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_2

    nop

    :goto_1
    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->createView(Landroid/widget/LinearLayout;I)Lcom/android/systemui/newstatusbar/clock/IClock;

    move-result-object v0

    goto :goto_5

    nop

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    nop

    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    nop

    :goto_4
    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->createView(Landroid/widget/LinearLayout;I)Lcom/android/systemui/newstatusbar/clock/IClock;

    move-result-object v0

    goto :goto_0

    nop

    :goto_5
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_6

    nop

    :goto_6
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .registers 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_1

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->firstCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v4, v1}, Lcom/android/systemui/newstatusbar/clock/IClock;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->firstCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v1, v3}, Lcom/android/systemui/newstatusbar/clock/IClock;->onTextChanged(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->firstCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/android/systemui/newstatusbar/clock/IClock;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {v1, v3}, Lcom/android/systemui/newstatusbar/clock/IClock;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

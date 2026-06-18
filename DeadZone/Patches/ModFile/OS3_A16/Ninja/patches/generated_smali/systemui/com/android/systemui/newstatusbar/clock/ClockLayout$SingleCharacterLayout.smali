.class Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;
.super Lcom/android/systemui/newstatusbar/clock/ClockSingleLayoutExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/clock/ClockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleCharacterLayout"
.end annotation


# instance fields
.field private isNeedChangeAnimStyle:Z

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/newstatusbar/clock/ClockLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/newstatusbar/clock/ClockLayout;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->this$0:Lcom/android/systemui/newstatusbar/clock/ClockLayout;

    invoke-direct {p0, p2}, Lcom/android/systemui/newstatusbar/clock/ClockSingleLayoutExt;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->text:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->isNeedChangeAnimStyle:Z

    return-void
.end method

.method private deleteSpase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected createView(Landroid/widget/FrameLayout;I)Lcom/android/systemui/newstatusbar/clock/IClock;
    .registers 6

    goto :goto_4

    nop

    :goto_0
    const/4 v2, -0x2

    goto :goto_9

    nop

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;-><init>(Lcom/android/systemui/newstatusbar/clock/ClockLayout;Landroid/content/Context;)V

    goto :goto_6

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    nop

    :goto_3
    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_5

    nop

    :goto_4
    new-instance v0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_7

    nop

    :goto_5
    return-object v0

    :goto_6
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    nop

    :goto_7
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->this$0:Lcom/android/systemui/newstatusbar/clock/ClockLayout;

    goto :goto_2

    nop

    :goto_8
    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    nop

    :goto_9
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_8

    nop
.end method

.method protected initialize()V
    .registers 3

    goto :goto_6

    nop

    :goto_0
    check-cast v1, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;

    goto :goto_8

    nop

    :goto_1
    invoke-virtual {p0, p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->createView(Landroid/widget/FrameLayout;I)Lcom/android/systemui/newstatusbar/clock/IClock;

    move-result-object v1

    goto :goto_4

    nop

    :goto_2
    iput-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->firstCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_7

    nop

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_0

    nop

    :goto_4
    iput-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_3

    nop

    :goto_5
    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->createView(Landroid/widget/FrameLayout;I)Lcom/android/systemui/newstatusbar/clock/IClock;

    move-result-object v1

    goto :goto_2

    nop

    :goto_6
    const/4 v0, 0x0

    goto :goto_5

    nop

    :goto_7
    const/4 v1, 0x1

    goto :goto_1

    nop

    :goto_8
    iput-boolean v0, v1, Lcom/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView;->mActive:Z

    goto :goto_9

    nop

    :goto_9
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    goto :goto_a

    nop

    :goto_0
    float-to-int v0, v0

    goto :goto_3

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    goto :goto_7

    nop

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    goto :goto_9

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->getTextHeight()F

    move-result v1

    goto :goto_5

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    nop

    :goto_5
    float-to-int v1, v1

    goto :goto_6

    nop

    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->setMeasuredDimension(II)V

    goto :goto_8

    nop

    :goto_7
    const-string v1, "0"

    goto :goto_4

    nop

    :goto_8
    return-void

    :goto_9
    check-cast v0, Landroid/widget/TextView;

    goto :goto_1

    nop

    :goto_a
    invoke-super {p0, p1, p2}, Lcom/android/systemui/newstatusbar/clock/ClockSingleLayoutExt;->onMeasure(II)V

    goto :goto_2

    nop
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->deleteSpase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->text:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->deleteSpase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->firstCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/newstatusbar/clock/IClock;->setText(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout;->secondCharacter:Lcom/android/systemui/newstatusbar/clock/IClock;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/newstatusbar/clock/IClock;->setText(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

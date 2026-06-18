.class public Lcom/android/systemui/newstatusbar/clock/MultiClockView;
.super Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/clock/MultiClockView;->setOrientation(I)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/clock/MultiClockView;->createView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/clock/MultiClockView;->setOrientation(I)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/clock/MultiClockView;->createView()V

    return-void
.end method

.method private createView()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/MultiClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/MultiClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "element_clock_multi"

    invoke-static {v1, v2}, Landroid/Utils/Utils;->LayoutToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

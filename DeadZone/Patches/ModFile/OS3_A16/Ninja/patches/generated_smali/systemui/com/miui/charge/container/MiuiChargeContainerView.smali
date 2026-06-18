.class public Lcom/miui/charge/container/MiuiChargeContainerView;
.super Landroid/widget/FrameLayout;


# instance fields
.field public final mChargeView:Lcom/miui/charge/container/IChargeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/charge/container/MiuiChargeContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/container/MiuiChargeContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/miui/charge/wave/WaveChargeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/miui/charge/wave/WaveChargeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportShaderChargeAnimation()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/miui/charge/ChargeUtils;->sDevelopAnimationEnable:Z

    if-eqz p2, :cond_1

    new-instance p2, Lcom/miui/charge/shader/MiuiShaderChargeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/miui/charge/shader/MiuiShaderChargeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/miui/charge/video/VideoChargeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/miui/charge/video/VideoChargeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    :goto_0
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .registers 2

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/IChargeView;->setProgress(I)V

    return-void
.end method

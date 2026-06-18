.class public Lcom/android/systemui/newstatusbar/StatusBarWifiView;
.super Lcom/android/systemui/statusbar/StatusBarWifiView;


# instance fields
.field private isStatusBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/StatusBarWifiView;->isStatusBar:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarWifiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/StatusBarWifiView;->isStatusBar:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarWifiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/StatusBarWifiView;->isStatusBar:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarWifiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/StatusBarWifiView;->isStatusBar:Z

    return-void
.end method

.method private isStatusbarIcon()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/StatusBarWifiView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/newstatusbar/layouts/OverflowLayout;

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/StatusBarWifiView;->isStatusBar:Z

    return v0
.end method

.method private moveWiFi()V
    .registers 1

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    goto :goto_1

    nop

    :goto_0
    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    goto :goto_3

    nop

    :goto_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->onAttachedToWindow()V

    goto :goto_2

    nop

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/StatusBarWifiView;->isStatusbarIcon()Z

    move-result v0

    goto :goto_0

    nop

    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/StatusBarWifiView;->moveWiFi()V

    :goto_4
    goto :goto_5

    nop

    :goto_5
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

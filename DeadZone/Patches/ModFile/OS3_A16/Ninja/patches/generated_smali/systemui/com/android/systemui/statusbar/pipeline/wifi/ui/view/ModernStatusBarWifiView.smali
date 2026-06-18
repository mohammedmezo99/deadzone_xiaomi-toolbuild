.class public Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;
.super Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static constructAndBind(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;
    .registers 7

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e0344

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->slot:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->slot:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v1

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p1, v0, v2, v1, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    const v0, 0x7f0b0b6c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071889

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800013

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/MiuiWifiViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/MiuiWifiViewBinder$bind$2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->setBinding$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewBinding;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDeemHide()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setBlocked(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setDeemHide(Z)V
    .registers 2

    return-void
.end method

.method public setVisibleState(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->getSlot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->getBinding$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewBinding;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewBinding;->isCollecting()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->getVisibleState()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "ModernStatusBarWifiView(slot=\'"

    const-string v4, "\', isCollecting="

    const-string v5, ", visibleState="

    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/keyguard/logging/KeyguardLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); viewString="

    invoke-static {v0, v2, v1, p0}, Landroidx/datastore/preferences/core/MutablePreferences$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

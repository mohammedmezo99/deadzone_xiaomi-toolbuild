.class public Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;
.super Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;


# instance fields
.field public injector:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

.field public subId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->subId:I

    new-instance p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->injector:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    return-void
.end method

.method public static constructAndBind(Landroid/content/Context;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;
    .registers 8

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e0466

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    iget-object v0, p3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->commonImpl:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->setSubId(I)V

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView$Companion$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->initView(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->location:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "MobileViewLogger"

    invoke-virtual {p1, v2, p4, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, p4

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {p1, p4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDeemHide()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getInjector()Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->injector:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    return-object p0
.end method

.method public getSubId()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->subId:I

    return p0
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->injector:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->mobileView:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    const v1, 0x7f0b07ac

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->container:Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->animatable:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->setAnimatable(Lcom/android/systemui/statusbar/views/IAnimatable;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;->setParentAnimHelper(Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setBlocked(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setDeemHide(Z)V
    .registers 2

    return-void
.end method

.method public setSubId(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->subId:I

    return-void
.end method

.method public setVisibleState(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->setVisibleState(IZ)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->injector:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileViewInjector;->mobileView:Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->getSlot()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->subId:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->getBinding$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewBinding;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/ModernStatusBarViewBinding;->isCollecting()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->getVisibleState()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "ModernStatusBarMobileView(slot=\'"

    const-string v5, "\', subId="

    const-string v6, ", isCollecting="

    invoke-static {v1, v4, v0, v5, v6}, Landroidx/datastore/preferences/protobuf/ByteString$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visibleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "); viewString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

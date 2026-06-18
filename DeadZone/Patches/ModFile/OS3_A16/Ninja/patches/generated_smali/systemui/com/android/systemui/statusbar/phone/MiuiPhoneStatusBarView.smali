.class public Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public isHomeBar:Z

.field public mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

.field public mCurrentStatusBarType:I

.field public mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

.field public mDependence:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;

.field public mDripEnd:Z

.field public mDripStatusBarNotificationIconArea:Landroid/view/ViewGroup;

.field public mFocusedNotifPromptView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

.field public mFullscreenStatusBarNotificationIconArea:Landroid/view/ViewGroup;

.field public mHomePrivacyContainer:Landroid/widget/LinearLayout;

.field public mHoverHelper:Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;

.field public mInited:Z

.field public mLastOrientation:I

.field public mNotificationIconAreaInner:Landroid/view/View;

.field public mOperatorNameView:Lcom/android/systemui/statusbar/OperatorNameView;

.field public mPaddingLeft:I

.field public mPrivacyArea:Landroid/widget/LinearLayout;

.field public mPrivacyContainer:Landroid/widget/LinearLayout;

.field public mStatusBarLeftContainer:Landroid/view/View;

.field public mStatusBarStatusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

.field public mStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

.field public mSystemIconArea:Landroid/view/View;

.field public mToken:Lcom/miui/systemui/statusbar/StatusBarToken;

.field public onLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$1;

.field public splitScreenWhiteDotAreaListener:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mCurrentStatusBarType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDependence:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mPaddingLeft:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDripEnd:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mInited:Z

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$1;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->isHomeBar:Z

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->splitScreenWhiteDotAreaListener:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$2;

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public initDependence(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, "MiuiPhoneStatusBarView"

    if-eqz p1, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mInited:Z

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mInited:Z

    const-string v4, "initDependence done. source: "

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mPrivacyContainer:Landroid/widget/LinearLayout;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->miuiPrivacy:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    invoke-virtual {v3, p2, v2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPromptContainer(Landroid/widget/LinearLayout;I)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mHomePrivacyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p2, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPromptContainer(Landroid/widget/LinearLayout;I)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFocusedNotifPromptView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->setView(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFocusedNotifPromptView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->fakeFocusNotifController:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifPrompt:Landroid/view/View;

    if-ne v4, p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->onLayoutChangeListener:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$onLayoutChangeListener$1;

    invoke-virtual {v4, v5}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    iput-object p2, v3, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifPrompt:Landroid/view/View;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->updateFakeStatusIconsSize()V

    iget-object p2, v3, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->focusedNotifPrompt:Landroid/view/View;

    if-eqz p2, :cond_3

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->onLayoutChangeListener:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl$onLayoutChangeListener$1;

    invoke-virtual {p2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    :goto_0
    const p2, 0x7f0b0d60

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->fakeFocusNotifHeadsUpController:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifHeadsUpControllerImpl;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifHeadsUpControllerImpl;->statusBarDividerLine:Landroid/widget/ImageView;

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iput-object p2, v3, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifHeadsUpControllerImpl;->statusBarDividerLine:Landroid/widget/ImageView;

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mHoverHelper:Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;

    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBarLeftContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFocusedNotifPromptView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    const-string v6, "MiuiStatusBarHoverH"

    const-string v7, "attach for HoverHelper. "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mDarkDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v6, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object v6, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mHoverView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v6, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mHoverView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v6, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mHoverView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setHovered(Z)V

    iget-object v6, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mHoverView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mLeftContainer:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    invoke-virtual {v5, p2}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    const v6, 0x7f0b0b66

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iput-object v6, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->statusContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iput-object v4, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mNotifView:Landroid/view/View;

    const v6, 0x7f0b04b9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mNotifIconView:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    const v6, 0x7f0b08f1

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->padClockView:Landroid/view/View;

    const v6, 0x7f0b029c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->clockView:Landroid/view/View;

    iput v0, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mHoverWhere:I

    new-instance v6, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;

    invoke-direct {v6, p2, v0}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;

    invoke-direct {v3, p2, v2}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;

    const/4 v2, 0x2

    invoke-direct {v0, p2, v2}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;

    invoke-direct {v2, p2, v1}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$5;

    invoke-direct {v0, p2, v5}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$5;-><init>(Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;

    const/4 v2, 0x4

    invoke-direct {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;

    const/4 v2, 0x5

    invoke-direct {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper$attach$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->multiTaskFactory:Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    iget-object p1, p1, Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;->mMultiTaskStatusBarDotsAreaController:Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->splitScreenWhiteDotAreaListener:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$2;

    invoke-interface {p1, p2}, Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->addListener(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$2;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDripEnd:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setDripEnd$1(Z)V

    return-void

    :cond_6
    :goto_2
    const-string p1, "initDependence: fail, source: "

    const-string v0, ", mInited: "

    invoke-static {p1, p2, v0}, Landroidx/activity/result/ActivityResultRegistry$register$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mInited:Z

    invoke-static {p1, v3, p0}, Lcom/android/keyguard/injector/DozeServiceHostInjector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDependence:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;

    const-string v1, "onAttachedToWindow"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->initDependence(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBarStatusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setNeedLimitIcon(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mLastOrientation:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBarStatusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->updateLayoutFrom(I)V

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mLastOrientation:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mLastOrientation:I

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05009c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mHoverHelper:Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->miuiPhoneStatusBarView:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0718b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mPaddingTop:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mOperatorNameView:Lcom/android/systemui/statusbar/OperatorNameView;

    if-eqz p0, :cond_0

    const v0, 0x7f07187a

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDependence:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onDetachedFromWindow()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mPrivacyContainer:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->miuiPrivacy:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePromptContainer(Landroid/widget/LinearLayout;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mHomePrivacyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePromptContainer(Landroid/widget/LinearLayout;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->setView(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->fakeFocusNotifHeadsUpController:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifHeadsUpControllerImpl;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifHeadsUpControllerImpl;->statusBarDividerLine:Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifHeadsUpControllerImpl;->statusBarDividerLine:Landroid/widget/ImageView;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mHoverHelper:Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mDarkDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->multiTaskFactory:Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    iget-object v0, v0, Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;->mMultiTaskStatusBarDotsAreaController:Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->splitScreenWhiteDotAreaListener:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$2;

    invoke-interface {v0, v1}, Lcom/miui/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;->removeListener(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$2;)V

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    const v0, 0x7f0b092a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBarLeftContainer:Landroid/view/View;

    const v0, 0x7f0b088a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDripStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    const v0, 0x7f0b04f2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFullscreenStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    const v0, 0x7f0b0b66

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBarStatusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    const v0, 0x7f0b095d

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mPrivacyArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0962

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mPrivacyContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0be7

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    const v0, 0x7f0b0180

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    const v0, 0x7f0b0be6

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mSystemIconArea:Landroid/view/View;

    const v0, 0x7f0b0569

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mHomePrivacyContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b04ba

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFocusedNotifPromptView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->setLayoutFromTag(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->setStatusBatteryContainer(Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;)V

    return-void
.end method

.method public setDarkIconManager(Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDarkIconManager : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiPhoneStatusBarView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDripEnd:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setDripEnd$1(Z)V

    return-void
.end method

.method public setDependence(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;)V
    .registers 10

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDependence:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->ccControllerImpl:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mToken:Lcom/miui/systemui/statusbar/StatusBarToken;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->darkIconDispatcher:Lcom/miui/systemui/statusbar/data/repository/MultiStatusBarDarkIconDispatcherStoreImpl;

    check-cast v2, Lcom/miui/systemui/statusbar/data/repository/PerDisplayStatusBarStore;

    invoke-virtual {v2, v0}, Lcom/miui/systemui/statusbar/data/repository/PerDisplayStatusBarStore;->forStatusBarToken(Lcom/miui/systemui/statusbar/StatusBarToken;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v7, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->statusBarClickTool:Lcom/miui/systemui/statusbar/StatusBarClickTool;

    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->shadeController:Lcom/android/systemui/shade/ShadeController;

    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;Lcom/miui/systemui/statusbar/StatusBarClickTool;)V

    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mHoverHelper:Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;

    goto :goto_0

    :cond_0
    move-object v2, p0

    const/4 p0, 0x0

    iput-object p0, v2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mHoverHelper:Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;

    :goto_0
    iget-object p0, v2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFocusedNotifPromptView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mToken:Lcom/miui/systemui/statusbar/StatusBarToken;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->darkIconDispatcher:Lcom/miui/systemui/statusbar/data/repository/MultiStatusBarDarkIconDispatcherStoreImpl;

    check-cast v1, Lcom/miui/systemui/statusbar/data/repository/PerDisplayStatusBarStore;

    invoke-virtual {v1, v0}, Lcom/miui/systemui/statusbar/data/repository/PerDisplayStatusBarStore;->forStatusBarToken(Lcom/miui/systemui/statusbar/StatusBarToken;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->statusBarClickTool:Lcom/miui/systemui/statusbar/StatusBarClickTool;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->setDependency(Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/miui/systemui/statusbar/StatusBarClickTool;)V

    iget-object p0, v2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBarStatusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setIslandController(Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;I)V

    :cond_1
    const-string p0, "setDependence"

    invoke-virtual {v2, p1, p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->initDependence(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceProvision(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mHoverHelper:Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mDeviceProvision:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    :cond_0
    return-void
.end method

.method public setDripEnd$1(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDripEnd:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->setDripEnd(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDependence:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->isHomeBar:Z

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->ccFakeViewController:Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->headerController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakeStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->setIsDrip(Z)V

    :cond_1
    return-void
.end method

.method public setNotificationIconAreaInnner(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mNotificationIconAreaInner:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->updateNotificationIconAreaInnnerParent()V

    return-void
.end method

.method public setOperatorNameView(Landroid/view/View;)V
    .registers 2

    check-cast p1, Lcom/android/systemui/statusbar/OperatorNameView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mOperatorNameView:Lcom/android/systemui/statusbar/OperatorNameView;

    return-void
.end method

.method public setStatusBarToken(Lcom/miui/systemui/statusbar/StatusBarToken;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mToken:Lcom/miui/systemui/statusbar/StatusBarToken;

    iget p1, p1, Lcom/miui/systemui/statusbar/StatusBarToken;->statusBarIndex:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->isHomeBar:Z

    return-void
.end method

.method public setStatusBarType(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mCurrentStatusBarType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mCurrentStatusBarType:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->updateNotificationIconAreaInnnerParent()V

    return-void
.end method

.method public updateCutoutLocation()V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBarStatusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiIconManagerUtils;->RIGHT_BLOCK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setIgnoredSlots(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHasCornerCutoutFetcher:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$1$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$1$1;->$it:Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;

    check-cast v0, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;->currentRotationHasCornerCutout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setStatusBarType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBarLeftContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mSystemIconArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFullscreenStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDripStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setDripEnd$1(Z)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setStatusBarType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v5, 0x30

    invoke-static {v5, v3, v4}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(ILandroid/graphics/Rect;Landroid/view/DisplayCutout;)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBarLeftContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v3, 0x3f800000

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mSystemIconArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFullscreenStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDripStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setDripEnd$1(Z)V

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setStatusBarType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mStatusBarLeftContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mSystemIconArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFullscreenStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDripStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setDripEnd$1(Z)V

    return-void
.end method

.method public updateNotificationIconAreaInnnerParent()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mNotificationIconAreaInner:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFullscreenStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDripStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mCurrentStatusBarType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mFullscreenStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mDripStatusBarNotificationIconArea:Landroid/view/ViewGroup;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mNotificationIconAreaInner:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public updatePaddings()V
    .registers 11

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0718b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0718b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0715ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    const v3, 0x7f0b0b6b

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0718b5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0718b1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v3, v0, v4, v2, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v3, 0x7f0b0be7

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mPrivacyArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0715cb

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v3, v4, v7, v5, v9}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mPrivacyArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mPrivacyArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0b04bc

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v2, v0, v3, v1, p0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :cond_3
    return-void
.end method

.method public updateSafeInsets()V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mInsetsFetcher:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$1$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$1$1;->$it:Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;

    check-cast v0, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;->getStatusBarContentInsetsForCurrentRotation()Landroid/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->right:I

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/utils/configs/MiuiConfigs;->getAdjustedRotation(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070340

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const/4 v5, 0x2

    const-string v6, "MiuiPhoneStatusBarView"

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "tmp == "

    invoke-static {v4, v2, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    iget v2, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v2, v4

    if-lt v1, v4, :cond_2

    sub-int/2addr v1, v4

    :cond_2
    if-gt v2, v4, :cond_8

    add-int/2addr v2, v4

    goto :goto_2

    :cond_3
    const-string v4, "180 displayCutout is null"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    if-nez v3, :cond_8

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "leftTmp == "

    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    if-ge v1, v4, :cond_6

    add-int/2addr v1, v4

    :cond_6
    if-lt v2, v4, :cond_8

    sub-int/2addr v2, v4

    goto :goto_2

    :cond_7
    const-string v4, "0 displayCutout is null"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    const-string v4, "updateSafeInsets: left: "

    const-string v5, "   right "

    const-string v7, " insets: "

    invoke-static {v1, v2, v4, v5, v7}, Landroidx/collection/MutableObjectList$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " rotation: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const v0, 0x7f0b0b6f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mPrivacyArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mPrivacyArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

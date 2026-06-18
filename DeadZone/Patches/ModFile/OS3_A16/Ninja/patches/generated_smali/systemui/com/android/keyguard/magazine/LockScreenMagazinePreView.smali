.class public Lcom/android/keyguard/magazine/LockScreenMagazinePreView;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDarkStyle:Z

.field public mDensityDpi:I

.field public mEnterButton:Landroid/widget/TextView;

.field public mFontScale:F

.field public mFullScreenBottomLayout:Landroid/widget/LinearLayout;

.field public mFullScreenContent:Landroid/widget/TextView;

.field public mFullScreenLayout:Landroid/widget/LinearLayout;

.field public mFullScreenLinkButton:Landroid/widget/ImageView;

.field public mFullScreenProvider:Landroid/widget/TextView;

.field public mFullScreenRemoteView:Landroid/widget/RemoteViews;

.field public mFullScreenRemoteViewApplyed:Z

.field public mFullScreenSettingButton:Landroid/widget/ImageView;

.field public mFullScreenSource:Landroid/widget/TextView;

.field public mFullScreenTitle:Landroid/widget/TextView;

.field public mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

.field public mFullScreenTitleLayoutWidth:F

.field public mLocaleList:Ljava/lang/Object;

.field public final mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

.field public mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

.field public mMainLayout:Landroid/widget/LinearLayout;

.field public mMainProvider:Landroid/widget/TextView;

.field public mMainRemoteView:Landroid/widget/RemoteViews;

.field public mMainRemoteViewApplyed:Z

.field public mMainSource:Landroid/widget/TextView;

.field public mMainTitle:Landroid/widget/TextView;

.field public final mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

.field public mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;

.field public mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

.field public mRemoteFullScreenView:Landroid/view/View;

.field public mRemoteMainLayout:Landroid/widget/LinearLayout;

.field public mRemoteMainView:Landroid/view/View;

.field public mRemotePackageName:Ljava/lang/String;

.field public mRemoteViewYHeight:I

.field public mScreenHeight:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$mupdateFullScreenView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-class v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v4, v4, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getProviderText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v5, v5, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenProvider:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenProvider:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenProvider:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getSourceText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v5, v5, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object v4, v4, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object v5, v5, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenTitleText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-virtual {v4}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->isSupportLockScreenTextClick()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    new-instance v5, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButton()V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenContentText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-virtual {v1}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->isSupportLockScreenTextClick()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v4}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_8

    const v2, 0x7f140823

    goto :goto_4

    :cond_8
    const v2, 0x7f140824

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v2, v2, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {v2}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object v2, v2, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->btnText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object v1, v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->btnText:Ljava/lang/String;

    :cond_9
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->globalBtnText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object v1, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->globalBtnText:Ljava/lang/String;

    goto :goto_5

    :cond_a
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1404ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_b
    :goto_5
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static -$$Nest$mupdateMainView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v0, :cond_3

    const-class v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getProviderText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainSourceText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object p0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public static -$$Nest$mupdateRemoteFullScreenView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteViewApplyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteViewApplyed:Z

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->applyFullScreenRemoteView()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reapply RemoteFullScreenView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockScreenMagazinePreView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->applyFullScreenRemoteView()V

    return-void
.end method

.method public static -$$Nest$mupdateRemoteMainView(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteViewApplyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteViewApplyed:Z

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->applyMainRemoteView()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reapply RemoteMainView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockScreenMagazinePreView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->applyMainRemoteView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteViewYHeight:I

    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mScreenHeight:I

    const-class p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    const-class p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteViewYHeight:I

    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mScreenHeight:I

    const-class p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    const-class p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getFullScreenContentText()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14081f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0
.end method

.method private getFullScreenLayout()Landroid/view/View;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFullScreenLayout()  mRemoteFullScreenView:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockScreenMagazinePreView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private getFullScreenTitleText()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140820

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->isTitleCustomized:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object v1, v1, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-nez v1, :cond_3

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getMainSourceText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object p0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v1
.end method

.method private getMainTitleText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private getProviderText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->provider:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object p0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->provider:Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v1
.end method

.method private getSourceText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object p0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v1
.end method

.method private getTitleTextWidth()I
    .registers 5

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyFullScreenRemoteView()V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setIsRootNamespace(Z)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final applyMainRemoteView()V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setIsRootNamespace(Z)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateMainRemoteViewPosition(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getMainLayout()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getRemoteViewYHeight()I
    .registers 1

    iget p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteViewYHeight:I

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final initLayoutVisibility()V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 9

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHasAttachedToWindow:Z

    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    iget-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsInit:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->init$5()V

    :cond_0
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_RSA4_FROM_WC:Z

    if-eqz v1, :cond_1

    const-class v1, Lcom/miui/systemui/functions/SettingsObserverImpl;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/systemui/functions/SettingsObserverImpl;

    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->lockScreenMagazineCloseCallback:Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

    const-string v1, "lock_wallpaper_provider_authority"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget v6, v2, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCurrentUser:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/systemui/functions/SettingsObserverImpl;->addCallback(Lcom/miui/interfaces/SettingsObserver$Callback;III[Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsCompleteInitiation:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsCompleteInitiation:Z

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {p0}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->onMagazineResourceInited()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLocaleList:Ljava/lang/Object;

    if-eq v2, v0, :cond_0

    new-instance v2, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;

    invoke-direct {v2, p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLocaleList:Ljava/lang/Object;

    :cond_0
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateFontScale()V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButton()V

    iput v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFontScale:F

    :cond_1
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDensityDpi:I

    if-eq v0, p1, :cond_b

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateFontScale()V

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v2, v2, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    if-ne v2, v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070631

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v1, v1, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070854

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070853

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070852

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateMainRemoteViewPosition(Landroid/view/View;)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v2, v2, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07084e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07084d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07084a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenBottomLayoutPadding()V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenTitleLayoutMargin()V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenContentMargin()V

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070833

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenButtonPadding()V

    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    if-ne v1, v2, :cond_a

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDarkStyle:Z

    if-eqz v1, :cond_6

    const v1, 0x7f0814ab

    goto :goto_1

    :cond_6
    const v1, 0x7f0814aa

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    iget v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->linkType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    const v1, 0x7f0814a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    const v1, 0x7f081e65

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    const v1, 0x7f0814a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_a
    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDensityDpi:I

    :cond_b
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mScreenHeight:I

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHasAttachedToWindow:Z

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBroadcastReceiver:Lcom/android/keyguard/magazine/LockScreenMagazineController$3;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPanelExpansionObserver:Lcom/miui/systemui/functions/PanelExpansionObserver;

    iget-object v2, v1, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_RSA4_FROM_WC:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/miui/systemui/functions/SettingsObserverImpl;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/functions/SettingsObserverImpl;

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->lockScreenMagazineCloseCallback:Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

    invoke-virtual {v1, v2}, Lcom/miui/systemui/functions/SettingsObserverImpl;->removeCallback(Lcom/android/keyguard/magazine/LockScreenMagazineController$2;)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsInit:Z

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final onFinishInflate()V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v2, 0x7f0b06af

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b06b0

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    const v2, 0x7f0b06ac

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b06ae

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    const v2, 0x7f0b06ad

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    const v2, 0x7f0b06a9

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenBottomLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b06a8

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    const v2, 0x7f0b06a7

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    const v2, 0x7f0b06aa

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenProvider:Landroid/widget/TextView;

    const v2, 0x7f0b06ab

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    const v2, 0x7f0b06b1

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b06b4

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    const v2, 0x7f0b06b2

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    const v2, 0x7f0b06b3

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    const v2, 0x7f0b06b6

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b06b5

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mScreenHeight:I

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->initLayoutVisibility()V

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$2;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenTitleLayoutMargin()V

    sget-boolean v2, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    const v3, 0x3c23d70a

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    new-array v5, v0, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x28

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    const-string v5, "sans-serif-medium"

    invoke-static {v5, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    const-string v5, "miui-bold"

    invoke-static {v5, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;

    invoke-direct {v5, p0, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$4;

    invoke-direct {v5, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$4;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenBottomLayoutPadding()V

    const/high16 v4, 0x3f800000

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    new-array v5, v0, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x96

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060200

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07083c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    const-string v3, "miui-light"

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070838

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenContentMargin()V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$3;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$4;

    invoke-direct {v2, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$4;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenButtonPadding()V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateFontScale()V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iput-object p0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setButtonClickListener(Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;)V

    return-void
.end method

.method public setButtonClickListener(Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;

    return-void
.end method

.method public setDarkStyle(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDarkStyle:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDarkStyle:Z

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSettingButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f0814ab

    goto :goto_0

    :cond_0
    const p1, 0x7f0814aa

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutDarkStyle()V

    :cond_1
    return-void
.end method

.method public final setFullScreenBottomLayoutPadding()V
    .registers 6

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070844

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070845

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sget-boolean v3, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07083f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070843

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f070842

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final setFullScreenButtonPadding()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070836

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sget-boolean v1, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07083b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070835

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070834

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    :goto_1
    invoke-virtual {v3, v2, v0, v2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public final setFullScreenContentMargin()V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v1, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07083d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070839

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setFullScreenLayoutAlpha(F)V
    .registers 2

    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setFullScreenLayoutVisible(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setFullScreenTitleLayoutMargin()V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v1, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070840

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07084b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMainLayoutAlpha(F)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setMainLayoutDarkStyle()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mDarkStyle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060546

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object v1, v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->sourceColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setMainLayoutTranslationY(F)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setMainLayoutVisible(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateFontScale()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getMainLayout()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070855

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainProvider:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07084f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainSource:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_5

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v1, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenProvider:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070846

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenSource:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070848

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_3

    const v4, 0x7f070849

    goto :goto_1

    :cond_3
    const v4, 0x7f07084c

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_4

    const v0, 0x7f07083e

    goto :goto_2

    :cond_4
    const v0, 0x7f07083a

    :goto_2
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mEnterButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070837

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    return-void
.end method

.method public final updateLinkButton()V
    .registers 10

    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getFullScreenLayout()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->landingPageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07084a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070841

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->getTitleTextWidth()I

    move-result v3

    add-float v4, v0, v2

    add-int/lit8 v3, v3, 0x14

    int-to-float v5, v3

    iget v6, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayoutWidth:F

    sub-float v7, v6, v4

    cmpl-float v8, v5, v7

    if-lez v8, :cond_0

    float-to-int v2, v7

    float-to-int v3, v4

    sub-float/2addr v6, v0

    float-to-int v0, v6

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButtonLayoutParams(III)V

    goto :goto_0

    :cond_0
    add-float/2addr v5, v2

    float-to-int v0, v5

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButtonLayoutParams(III)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->linkType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    const v0, 0x7f0814a9

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    const v0, 0x7f081e65

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitleLayoutWidth:F

    float-to-int v0, v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->updateLinkButtonLayoutParams(III)V

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public final updateLinkButtonLayoutParams(III)V
    .registers 5

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenLinkButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateMainRemoteViewPosition(Landroid/view/View;)V
    .registers 6

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemotePackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "wallpaper_title"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateRemoteTextView "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "LockScreenMagazinePreView"

    invoke-static {p0, p1, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteViewYHeight:I

    return-void
.end method

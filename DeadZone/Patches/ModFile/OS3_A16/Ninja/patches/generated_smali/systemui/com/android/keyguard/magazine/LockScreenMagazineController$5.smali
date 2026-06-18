.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    return-void
.end method


# virtual methods
.method public final onLockScreenMagazinePreViewVisibilityChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePreViewVisible:Z

    if-nez p1, :cond_0

    const-class p0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    check-cast p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getKeyguardPanelViewController()Lcom/android/keyguard/panel/KeyguardPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/panel/KeyguardPanelViewController;->updateBottomAreaVisible()V

    :cond_0
    return-void
.end method

.method public final onLockWallpaperChange(Z)V
    .registers 3

    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    move-result p1

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateKeyguardSupportDisplayMagazineState()V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->-$$Nest$mqueryLockScreenMagazineWallpaperInfo(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {p1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    invoke-direct {p1}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    invoke-virtual {p1}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->initExtra()V

    sget-boolean p1, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMainRemoteView:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMainRemoteView:Landroid/widget/RemoteViews;

    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateLockScreenMagazineWallpaperInfo()V

    return-void
.end method

.method public final onMagazineResourceInited()V
    .registers 4

    const-string v0, "LockScreenMagazineController"

    const-string v1, "refresh MagazineInfo after MagazineRes Initialization complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;

    invoke-direct {v1, v0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    iget-object v1, v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v2, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDeviceProvisioned:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreSettingsDeeplink:Ljava/lang/String;

    new-instance v2, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;

    invoke-direct {v2, v0, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$1;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;Ljava/lang/String;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    const-class v0, Lcom/android/keyguard/injector/KeyguardNegative1PageInjector;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/injector/KeyguardNegative1PageInjector;

    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/widget/MiuiKeyguardMoveLeftViewContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/widget/MiuiKeyguardMoveLeftViewContainer;->inflateLeftView()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->reset$1()V

    return-void
.end method

.method public final onRegionChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateKeyguardSupportDisplayMagazineState()V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    return-void
.end method

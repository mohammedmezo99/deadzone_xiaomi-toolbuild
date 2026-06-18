.class public abstract Lcom/android/systemui/SystemUIInitializer;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUIFactory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

.field private mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

.field private mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

.field private mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;


# direct methods
.method public static synthetic $r8$lambda$QYvDnW0XyzgDh_C_u5znA3aE5Nk(Lcom/android/systemui/SystemUIInitializer;Lcom/android/wm/shell/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/android/wm/shell/dagger/WMComponent$Builder;->setShellMainThread(Landroid/os/HandlerThread;)Lcom/android/wm/shell/dagger/WMComponent$Builder;

    invoke-interface {p1}, Lcom/android/wm/shell/dagger/WMComponent$Builder;->build()Lcom/android/wm/shell/dagger/WMComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract getGlobalRootComponentBuilder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
.end method

.method public getRootComponent()Lcom/android/systemui/dagger/GlobalRootComponent;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    return-object p0
.end method

.method public getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    return-object p0
.end method

.method public getVendorComponent(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const p0, 0x7f1403b2

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWMComponent()Lcom/android/wm/shell/dagger/WMComponent;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    return-object p0
.end method

.method public init(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIInitializer;->getGlobalRootComponentBuilder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->context:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->instrumentationTest:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;->build()Lcom/android/systemui/dagger/ReferenceGlobalRootComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    check-cast p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    invoke-virtual {p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->getInitializationChecker()Lcom/android/systemui/util/InitializationChecker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

    invoke-virtual {p1}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    invoke-interface {v1}, Lcom/android/systemui/dagger/GlobalRootComponent;->getWMComponentBuilder()Lcom/android/wm/shell/dagger/WMComponent$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

    invoke-virtual {v2}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule;->enableShellMainThread(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule;->createShellMainThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/perfdebug/MessageMonitor;->enableMonitorMessage(Z)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "wmshell"

    invoke-static {v0, v3, v2}, Landroid/app/AppScoutStateMachine;->CreateAppScoutStateMachine(Landroid/os/HandlerThread;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/app/AppScoutStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/SystemUIInitializer;Lcom/android/wm/shell/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "SystemUIFactory"

    const-string p1, "Failed to initialize WMComponent"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    check-cast v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->build()Lcom/android/wm/shell/dagger/WMComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    check-cast v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->getSysUIComponent()Lcom/android/systemui/dagger/ReferenceSysUIComponent$Builder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/SystemUIInitializer;->prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/wm/shell/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getShell()Lcom/android/wm/shell/sysui/ShellInterface;

    move-result-object v2

    check-cast v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getPip()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getSplitScreen()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getOneHanded()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getBubbles()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getTaskViewFactory()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getShellTransitions()Lcom/android/wm/shell/shared/ShellTransitions;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getKeyguardTransitions()Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getStartingSurface()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getDisplayAreaHelper()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getRecentTasks()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getBackAnimation()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getDesktopMode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getAppZoomOut()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setAppZoomOut:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getMiuiBubbleNotification()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setMiuiBubbleNotification:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getMultiTaskingSystemUIInterface()Lcom/android/wm/shell/multitasking/common/MultiTaskingSystemUIInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setMultiTaskingSystemUIInterface:Lcom/android/wm/shell/multitasking/common/MultiTaskingSystemUIInterface;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getMulWinSwitchStatusbarChecker()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setMulWinSwitchStatusbarChecker:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->getDynamicIslandAnimController()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDynamicIslandAnimController:Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-interface {v2}, Lcom/android/wm/shell/dagger/WMComponent;->init()V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/wm/shell/dagger/WMComponent;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/SystemUIInitializer;->prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/wm/shell/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/SystemUIInitializer$3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    check-cast v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    new-instance v2, Lcom/android/systemui/SystemUIInitializer$2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;

    new-instance v2, Lcom/android/systemui/SystemUIInitializer$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setAppZoomOut:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setMiuiBubbleNotification:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/multitasking/common/MultiTaskingSystemUIInterface;

    invoke-direct {v2}, Lcom/android/wm/shell/multitasking/common/MultiTaskingSystemUIInterface;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setMultiTaskingSystemUIInterface:Lcom/android/wm/shell/multitasking/common/MultiTaskingSystemUIInterface;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDynamicIslandAnimController:Ljava/util/Optional;

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setMulWinSwitchStatusbarChecker:Ljava/util/Optional;

    :goto_3
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->build()Lcom/android/systemui/dagger/ReferenceSysUIComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    check-cast p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->getMiuiDependencyManager()Lcom/miui/systemui/dependency/MiuiDependencyManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "start register dependencies."

    const-string v1, "MiuiDependencyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/miui/systemui/dependency/MiuiDependencyManager;->miuiDependencyRegister:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/dependency/MiuiDependencyRegister;

    sget-boolean v2, Lcom/miui/systemui/dependency/MiuiDependencyManager;->DEBUG:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "register "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v0}, Lcom/miui/interfaces/dependency/MiuiDependencyRegister;->register()V

    goto :goto_4

    :cond_6
    sget-object p1, Lmiui/stub/MiuiStub;->INSTANCE:Lmiui/stub/MiuiStub;

    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/android/systemui/dagger/ReferenceSysUIComponent;

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/android/systemui/dagger/ReferenceSysUIComponent;

    iget-object v1, p1, Lmiui/stub/MiuiStub;->mBaseProvider:Lmiui/stub/MiuiStub$BaseProvider;

    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/ReferenceSysUIComponent;->inject(Lmiui/stub/MiuiStub$BaseProvider;)V

    iget-object v1, p1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/ReferenceSysUIComponent;->inject(Lmiui/stub/MiuiStub$SysUIProvider;)V

    iget-object v3, p1, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    invoke-interface {v0, v3}, Lcom/android/systemui/dagger/ReferenceSysUIComponent;->inject(Lmiui/stub/MiuiStub$MiuiModuleProvider;)V

    new-instance v0, Lmiui/stub/MiuiStub$1;

    invoke-direct {v0, p1}, Lmiui/stub/MiuiStub$1;-><init>(Lmiui/stub/MiuiStub;)V

    const-class v4, Lmiui/stub/MiuiStub$1;

    invoke-static {v4, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v3, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mSystemUIStat:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v4, Lcom/miui/interfaces/ISystemUIStat;

    invoke-static {v4, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v3, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mCarrierTextController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v3, Lcom/miui/interfaces/statusbar/ICarrierTextController;

    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mUserTracker:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v3, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mSelectedUserInteractor:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v3, Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;

    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mActivityStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mBlurUtils:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v3, Lcom/miui/systemui/statusbar/BlurUtilsDelegate;

    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mNotificationShadeWindowController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v3, Lcom/miui/systemui/statusbar/NotificationShadeWindowControllerDelegate;

    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mCommandQueue:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v3, Lcom/miui/sysuiinterfaces/ICommandQueue;

    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lmiui/stub/CommonStub$registerFlashlightController$1;

    invoke-direct {v0, v1}, Lmiui/stub/CommonStub$registerFlashlightController$1;-><init>(Lmiui/stub/MiuiStub$SysUIProvider;)V

    const-class v3, Lmiui/stub/CommonStub$registerFlashlightController$1;

    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mSysuiStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v3, Lcom/miui/systemui/statusbar/StatusBarStateControllerDelegate;

    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lmiui/stub/CommonStub$registerCentralSurfaces$1;

    invoke-direct {v0, v1}, Lmiui/stub/CommonStub$registerCentralSurfaces$1;-><init>(Lmiui/stub/MiuiStub$SysUIProvider;)V

    const-class v1, Lcom/miui/sysuiinterfaces/ICentralSurfaces;

    invoke-static {v1, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lmiui/stub/MiuiStub$2;

    invoke-direct {v0, p1}, Lmiui/stub/MiuiStub$2;-><init>(Lmiui/stub/MiuiStub;)V

    const-class v1, Lcom/miui/systemui/safemode/interfaces/NotificationSafemodeListener;

    invoke-static {v1, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lmiui/stub/MiuiStub$3;

    invoke-direct {v0, p1}, Lmiui/stub/MiuiStub$3;-><init>(Lmiui/stub/MiuiStub;)V

    const-class v1, Lcom/miui/systemui/safemode/interfaces/PluginManagerSafemodeListener;

    invoke-static {v1, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lmiui/stub/MiuiStub$4;

    invoke-direct {v0, p1}, Lmiui/stub/MiuiStub$4;-><init>(Lmiui/stub/MiuiStub;)V

    const-class v1, Lcom/miui/systemui/safemode/interfaces/CloudDataSafemodeListener;

    invoke-static {v1, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lmiui/stub/MiuiStub$5;

    invoke-direct {v0, p1}, Lmiui/stub/MiuiStub$5;-><init>(Lmiui/stub/MiuiStub;)V

    const-class v1, Lcom/miui/systemui/safemode/interfaces/AODSafemodeListener;

    invoke-static {v1, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lmiui/stub/MiuiStub$6;

    invoke-direct {v0, p1}, Lmiui/stub/MiuiStub$6;-><init>(Lmiui/stub/MiuiStub;)V

    const-class v1, Lcom/miui/systemui/safemode/interfaces/KeyguardSafemodeListener;

    invoke-static {v1, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lmiui/stub/MiuiStub$7;

    invoke-direct {v0, p1}, Lmiui/stub/MiuiStub$7;-><init>(Lmiui/stub/MiuiStub;)V

    const-class p1, Lcom/miui/systemui/safemode/interfaces/KeyguardPanelSafemodeListener;

    invoke-static {p1, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->createDependency()Lcom/android/systemui/Dependency;

    move-result-object p0

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBroadcastDispatcher:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/LightBarControllerImpl;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mLauncherProxyService:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/recents/LauncherProxyService;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/media/NotificationMediaManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSysUiStateFlagsContainer:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mCommandQueue:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/internal/logging/UiEventLogger;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mUiEventLogger:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v0, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mFeatureFlagsLazy:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {p1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mNotificationSectionsManagerLazy:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mScreenOffAnimationController:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mAmbientStateLazy:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mGroupMembershipManagerLazy:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mGroupExpansionManagerLazy:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mSystemUIDialogManagerLazy:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDialogTransitionAnimatorLazy:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mUserTrackerLazy:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/settings/UserTracker;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mStatusBarWindowControllerStoreLazy:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v0, Lcom/android/systemui/statusbar/window/StatusBarWindowControllerStore;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/Dependency;->mMiuiLegacyDependency:Lcom/miui/systemui/LegacyDependency;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mConfigurationController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mBatteryController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mMinimalismModeController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mMiuiStatusBarClockController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mMiuiCarrierTextController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextController;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mEventTracker:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/miui/interfaces/IEventTracker;

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mActivityStarter:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mControlPanelController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mSecurityController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mOperatorCustomizedPolicy:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/miui/interfaces/IOperatorCustomizedPolicy;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mControlCenterFakeViewController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mMiuiHomePrivacyController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    iget-object v2, p1, Lcom/miui/systemui/LegacyDependency;->mMiuiPrivacyController:Ldagger/Lazy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mFocusedNotifPromptController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mMiuiPhoneStatusBarClockController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/MiuiPhoneStatusBarClockController;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mRegionController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/miui/systemui/controller/RegionController;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mSuperSaveModeController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mContentInsetsProviderLazy:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mKeyguardMonitor:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mMiuiBubbleController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/miui/systemui/notification/interruption/MiuiBubbleController;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/miui/systemui/LegacyDependency;->mFakeFocusNotifController:Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class v1, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/miui/systemui/LegacyDependency;->mWeatherController:Ldagger/Lazy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;)V

    const-class p1, Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->setInstance(Lcom/android/systemui/Dependency;)V

    const-class p0, Lcom/miui/systemui/safemode/SafemodeController;

    invoke-static {p0}, Lcom/miui/systemui/safemode/dagger/SafemodeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/systemui/safemode/SafemodeController;

    invoke-virtual {p0}, Lcom/miui/systemui/safemode/SafemodeController;->onStartProcess()V

    return-void
.end method

.method public prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/wm/shell/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .registers 3

    return-object p1
.end method

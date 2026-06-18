.class public final Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

.field public final callbacks:Ljava/util/List;

.field public centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

.field public final context:Landroid/content/Context;

.field public dragDownAmount:F

.field public dragDownAnimator:Landroid/animation/ValueAnimator;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public forceApplyAmount:Z

.field public fractionToShade:F

.field public fullTransitionDistance:I

.field public fullTransitionDistanceByTap:I

.field public isWakingToShadeLocked:Z

.field public final keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final keyguardTransitionControllerFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$35;

.field public final lazyQSSceneAdapter:Ldagger/Lazy;

.field public final lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

.field public final mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

.field public nextHideKeyguardNeedsNoAnimation:Z

.field public notificationShelfTransitionDistance:I

.field public nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final phoneShadeOverScroller$delegate:Lkotlin/Lazy;

.field public pulseHeight:F

.field public pulseHeightAnimator:Landroid/animation/ValueAnimator;

.field public qS:Lcom/android/systemui/plugins/qs/QS;

.field public final qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final shadeLockscreenInteractorLazy:Ldagger/Lazy;

.field public final shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public final singleShadeOverScrollerFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$37;

.field public final splitShadeOverScroller$delegate:Lkotlin/Lazy;

.field public final splitShadeOverScrollerFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$36;

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public statusBarTransitionDistance:I

.field public final touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field public udfpsTransitionDistance:I

.field public useSplitShade:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$35;Landroid/content/Context;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$36;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$37;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$38;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;Ldagger/Lazy;Ldagger/Lazy;)V
    .registers 24

    move-object/from16 v0, p18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    iput-object p3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iput-object p6, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-object p7, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iput-object p8, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardTransitionControllerFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$35;

    iput-object p9, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    iput-object p10, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeOverScrollerFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$36;

    iput-object p11, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->singleShadeOverScrollerFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$37;

    iput-object p12, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 p2, p20

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    move-object/from16 p2, p21

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeLockscreenInteractorLazy:Ldagger/Lazy;

    move-object/from16 p2, p22

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->lazyQSSceneAdapter:Ldagger/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/DragDownHelper;

    move-object/from16 p3, p15

    invoke-direct {p2, p3, p0, v0, p9}, Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/shade/data/repository/ShadeRepository;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;I)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeOverScroller$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;I)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->phoneShadeOverScroller$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;I)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;I)V

    move-object/from16 p3, p17

    invoke-virtual {p3, p2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$38;->create(Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->updateResources$17()V

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    move-object p3, p14

    check-cast p3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 p2, p16

    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$3;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    iget-object p0, p13, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic getDragDownAnimator$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getPulseHeightAnimator$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final canDragDown$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isQsFullyCollapsed$1()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    new-instance p2, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "LSShadeTransitionController:"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pulseHeight: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    const-string v0, "useSplitShade: "

    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dragDownAmount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownAnywhereEnabled$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z

    move-result p1

    const-string v0, "isDragDownAnywhereEnabled: "

    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-string v2, "isFalsingCheckNeeded: "

    invoke-static {v2, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isWakingToShadeLocked:Z

    const-string v2, "isWakingToShadeLocked: "

    invoke-static {v2, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    const-string p0, "hasPendingHandlerOnKeyguardDismiss: "

    invoke-static {p0, v0, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final finishPulseAnimation(Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v1, 0x0

    const-string v2, "LockscreenShadeTransitionController"

    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;

    iget-object v2, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput-boolean v0, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimateNextNotificationBounds:Z

    const-wide/16 v3, 0x1c0

    iput-wide v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationBoundsAnimationDuration:J

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationBoundsAnimationDelay:J

    iput-boolean v0, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsPulseExpansionResettingAnimator:Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    return-void
.end method

.method public final getFractionToShade()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fractionToShade:F

    return p0
.end method

.method public final goToLockedShade(Landroid/view/View;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v3, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "LockscreenShadeTransitionController"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v1, v3, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz v1, :cond_3

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object p2, v5

    :goto_2
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShadeInternal(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;)V

    :cond_3
    return-void
.end method

.method public final goToLockedShadeInternal(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;)V
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    const-string v2, "LockscreenShadeTransitionController"

    const/4 v3, 0x0

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;->run()V

    :cond_0
    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    new-instance p1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2, p0, p1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void

    :cond_1
    const-class v0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getKeyguardPanelViewController()Lcom/android/keyguard/panel/KeyguardPanelViewController;

    move-result-object v4

    iget-object v5, v4, Lcom/android/keyguard/panel/KeyguardPanelViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v4}, Lcom/android/keyguard/panel/KeyguardPanelViewController;->isOnKeyguard()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, v4, Lcom/android/keyguard/panel/KeyguardPanelViewController;->keyguardCommonSettingObserver:Lcom/miui/keyguard/KeyguardCommonSettingObserver;

    invoke-virtual {v4}, Lcom/miui/keyguard/KeyguardCommonSettingObserver;->getExpandableStatusBarUnderKeyguard()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_3
    iget-object v4, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->keyguardMoveHelper:Lcom/android/keyguard/panel/KeyguardMoveHelper;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/keyguard/panel/KeyguardMoveHelper;->isInLeftView()Z

    move-result v4

    if-ne v4, v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->safemodeKeyguardEditor:Lcom/android/keyguard/injector/SafemodeKeyguardEditorInjector;

    invoke-virtual {v0}, Lcom/android/keyguard/injector/SafemodeKeyguardEditorInjector;->getEditor()Lcom/miui/interfaces/keyguard/IKeyguardEditor;

    move-result-object v0

    if-eqz v0, :cond_10

    check-cast v0, Lcom/android/keyguard/editor/KeyguardEditorHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/editor/KeyguardEditorHelper;->isInEnterEditorMode()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v4, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    instance-of v6, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_5

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, v5, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntryLegacy()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    :cond_5
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    const/4 v6, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p1, v6

    goto :goto_0

    :cond_6
    move p1, v5

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    move p1, v6

    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v0

    const/4 v4, 0x2

    iget-object v7, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {v7, v5}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    if-eqz p2, :cond_8

    new-instance p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_8
    move-object p1, v3

    :goto_1
    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;)V

    sget-object p3, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;

    const/16 v7, 0x13

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2, p3, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    move-object p0, v3

    :goto_2
    iget p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    if-eq p3, v5, :cond_a

    if-ne p3, v4, :cond_b

    :cond_a
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean p3, p3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez p3, :cond_b

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, p1, p2, v6, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1;->run()V

    return-void

    :cond_c
    if-eqz p2, :cond_d

    move p1, v5

    goto :goto_3

    :cond_d
    move p1, v6

    :goto_3
    sget-object p3, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda10;-><init>(Z)V

    invoke-virtual {v1, v2, p3, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v1, p3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isWakingToShadeLocked:Z

    :cond_e
    invoke-interface {v7, v4, v6}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(IZ)Z

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_f
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->performDefaultGoToFullShadeAnimation(J)V

    return-void

    :cond_10
    :goto_4
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;->run()V

    :cond_11
    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    new-instance p1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2, p0, p1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final isDragDownAnywhereEnabled$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z
    .registers 3

    const-class v0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->keyguardMoveHelper:Lcom/android/keyguard/panel/KeyguardMoveHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/keyguard/panel/KeyguardMoveHelper;->isInCenterScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isQsFullyCollapsed$1()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    if-eqz p0, :cond_2

    :cond_0
    sget-object p0, Lcom/miui/keyguard/utils/MiuiKeyguardUtils;->INSTANCE:Lcom/miui/keyguard/utils/MiuiKeyguardUtils;

    const-class p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isDefaultLockScreenTheme()Z

    move-result p0

    if-nez p0, :cond_1

    const-class p0, Lcom/miui/systemui/SettingsManager;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/systemui/SettingsManager;

    iget-boolean p0, p0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    if-nez p0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isDragDownEnabledForView$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownAnywhereEnabled$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntryLegacy()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final isQsFullyCollapsed$1()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qS:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isFullyCollapsed()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->lazyQSSceneAdapter:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsImpl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->isFullyCollapsed()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final performDefaultGoToFullShadeAnimation(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v2, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "LockscreenShadeTransitionController"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide p1, v2, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeLockscreenInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->transitionToExpandedShade(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->forceApplyAmount:Z

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(F)V

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fullTransitionDistanceByTap:I

    int-to-float v0, v0

    new-instance v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;I)V

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmountAnimated(FJLcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public final setDragDownAmount$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(F)V
    .registers 9

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->forceApplyAmount:Z

    if-eqz v0, :cond_3

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->forceApplyAmount:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    iget v3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->notificationShelfTransitionDistance:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fractionToShade:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v3

    :goto_1
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFractionToShade(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    iget v1, v0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    cmpg-float v1, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    iput p1, v0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    iget v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionStartDelay:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsDragDownAmount:F

    iget v5, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionDistance:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionFraction:F

    iget v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishStartFraction:F

    iget v5, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsDragDownAmount:F

    iget v6, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionDistance:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/MathUtils;->saturate(F)F

    move-result v5

    const/high16 v6, 0x3f800000

    invoke-static {v1, v6, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionFraction:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    move p1, v4

    goto :goto_2

    :cond_7
    move p1, v3

    :goto_2
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->isTransitioningToFullShade:Z

    iget-object p1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_8

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->isTransitioningToFullShade:Z

    iget v2, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionFraction:F

    iget v0, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionFraction:F

    invoke-interface {p1, v1, v2, v0}, Lcom/android/systemui/plugins/qs/QS;->setTransitionToFullShadeProgress(ZFF)V

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-eq p1, v4, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;->setTransitionToFullShadeAmount(FJZ)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->setTransitionToFullShadeAmount(F)V

    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->transitionToShadeAmountCommon(F)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeOverScroller$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller;

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->phoneShadeOverScroller$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;

    :goto_5
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/LockScreenShadeOverScroller;->setExpansionDragDownAmount(F)V

    return-void
.end method

.method public final setDragDownAmountAnimated(FJLcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;)V
    .registers 11

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v3, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v5, "LockscreenShadeTransitionController"

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    float-to-double v3, p1

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide v3, v5, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    aput p1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/shared/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x177

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    if-eqz p4, :cond_1

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setDragDownAmountAnimated$2;

    invoke-direct {p2, p4}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setDragDownAmountAnimated$2;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$$ExternalSyntheticLambda0;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setPulseHeight(FZ)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p2, v1, v0

    const/4 p2, 0x1

    aput p1, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/shared/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x177

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeightAnimator:Landroid/animation/ValueAnimator;

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    iget-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseHeight(F)F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeLockscreenInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {v0, p2}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->setOverStretchAmount(F)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->transitionToShadeAmountCommon(F)V

    return-void
.end method

.method public final transitionToShadeAmountCommon(F)V
    .registers 5

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->udfpsTransitionDistance:I

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_udfpsTransitionToFullShadeProgress:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarTransitionDistance:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    if-eqz p0, :cond_0

    move-object v2, p0

    :cond_0
    iput p1, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransitionToFullShadeProgress:F

    return-void
.end method

.method public final updateResources$17()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07086c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fullTransitionDistance:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07087b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fullTransitionDistanceByTap:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070871

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->notificationShelfTransitionDistance:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07086b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07087c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->udfpsTransitionDistance:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07087a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarTransitionDistance:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->useSplitShade:Z

    return-void
.end method

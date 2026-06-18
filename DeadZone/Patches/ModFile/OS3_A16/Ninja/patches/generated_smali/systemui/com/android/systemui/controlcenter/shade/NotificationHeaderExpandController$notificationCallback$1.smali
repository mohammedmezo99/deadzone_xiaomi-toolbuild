.class public final Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/miui/shade/PanelExpandController$Callback;


# instance fields
.field public animate:Z

.field public newAppearance:Z

.field public oldAppearance:Z

.field public oldOrientation:I

.field public oldVisibility:Ljava/lang/Integer;

.field public final synthetic this$0:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->this$0:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->oldAppearance:Z

    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->animate:Z

    iget-object v0, p1, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->oldOrientation:I

    iget-object p1, p1, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->miuiPhoneStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiPhoneStatusBarClockController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MiuiPhoneStatusBarClockController;->statusBarClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->oldVisibility:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final onAppearanceChanged(ZZ)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAppearanceChanged appearance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  animate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationHeaderExpandController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->newAppearance:Z

    iput-boolean p2, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->animate:Z

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->this$0:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->headerController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTop:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->shortcutTranslationX:I

    iget-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTopFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, p1, v3, v2, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottom:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->shortcutTranslationX:I

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottomFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, p1, v4, v2, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHorizontalTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHorizontalTimeFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, p1, v2, v1, v1}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V

    iget-object v5, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopView:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopViewFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, v5, v6, v1, v1}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V

    iget-object v1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomView:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->notificationCarrierTranslationX:I

    iget-object v7, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomViewFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, v1, v7, v5, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V

    iget-object v1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v5, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationDateTimeFolme:Lmiuix/animation/IFolme;

    const/4 v8, 0x0

    invoke-static {p0, v1, v5, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object v1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTop:Landroid/widget/ImageView;

    invoke-static {p0, v1, v3, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottom:Landroid/widget/ImageView;

    invoke-static {p0, v3, v4, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationWeather:Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationWeatherFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, v3, v1, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    invoke-static {p0, p1, v2, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopView:Landroid/widget/LinearLayout;

    invoke-static {p0, p1, v6, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopView:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomView:Landroid/widget/LinearLayout;

    invoke-static {p0, p1, v7, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object p0, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    return-void

    :cond_0
    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTop:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTopFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, p1, v2, v1, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottom:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottomFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, p1, v3, v1, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHorizontalTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHorizontalTimeFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, p1, v4, v1, v1}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V

    iget-object v5, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopView:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopViewFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, v5, v6, v1, v1}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V

    iget-object v5, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomView:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomViewFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, v5, v7, v1, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V

    iget-object v1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v5, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationDateTimeFolme:Lmiuix/animation/IFolme;

    const/high16 v8, 0x3f800000

    invoke-static {p0, v1, v5, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object v1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTop:Landroid/widget/ImageView;

    invoke-static {p0, v1, v2, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottom:Landroid/widget/ImageView;

    invoke-static {p0, v2, v3, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationWeather:Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationWeatherFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, v2, v1, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    invoke-static {p0, p1, v4, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopView:Landroid/widget/LinearLayout;

    invoke-static {p0, p1, v6, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierTopView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    iget-object p1, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomView:Landroid/widget/LinearLayout;

    invoke-static {p0, p1, v7, v8, p2}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    iget-object p0, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public final onExpansionChanged(F)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->this$0:Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;

    iput v1, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->progress:F

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    const/high16 v5, 0x3f800000

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v6, v1, v5

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v6, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->DEBUG:Z

    if-eqz v6, :cond_2

    :goto_0
    const-string v6, "onExpansionChanged: progress =  "

    const-string v7, "NotificationHeaderExpandController"

    invoke-static {v1, v6, v7}, Lcom/android/keyguard/clock/animation/TinyClockBaseAnimation$$ExternalSyntheticOutline0;->m(FLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v6, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->headerController:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    cmpl-float v8, v1, v5

    if-gtz v8, :cond_21

    if-ltz v4, :cond_21

    iget-boolean v4, v7, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->switching:Z

    if-eqz v4, :cond_3

    cmpg-float v4, v1, v5

    if-nez v4, :cond_3

    goto :goto_f

    :cond_3
    iget-object v4, v7, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationHeaderView:Lcom/android/systemui/qs/MiuiNotificationHeaderView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v8, 0x40400000

    mul-float/2addr v8, v1

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v4, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mWhiteFraction:F

    invoke-virtual {v4}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateBigTimeColor()V

    iget-object v4, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/utils/configs/MiuiConfigs;->isVerticalMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    int-to-float v8, v4

    sub-float v9, v8, v1

    iget-object v10, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    iget v11, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->notificationTranslationX:I

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-ne v10, v12, :cond_4

    move v11, v13

    :cond_4
    const/high16 v10, 0x3f000000

    cmpg-float v10, v1, v10

    iget-object v14, v7, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    const/4 v15, 0x0

    if-gez v10, :cond_9

    iget v10, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->lastSetTextSizeExpansion:F

    cmpg-float v10, v10, v1

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v14}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    iget v4, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->statusBarClockSize:I

    int-to-float v4, v4

    cmpg-float v10, v10, v4

    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    iput v1, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->lastSetTextSizeExpansion:F

    invoke-virtual {v14, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v10, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->statusBarBigTimeHeight:I

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v14}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v10, v4, Landroid/view/ViewGroup;

    if-eqz v10, :cond_7

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_7
    move-object v4, v15

    :goto_1
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_8
    :goto_2
    iget v4, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->clockScaleEnlarge:F

    invoke-static {v4, v8, v1, v8}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    goto :goto_5

    :cond_9
    iget v4, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->lastSetTextSizeExpansion:F

    cmpg-float v4, v4, v1

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v14}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget v10, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->bigTimeSize:I

    int-to-float v10, v10

    cmpg-float v4, v4, v10

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    iput v1, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->lastSetTextSizeExpansion:F

    invoke-virtual {v14, v13, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v10, -0x2

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v14}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v10, v4, Landroid/view/ViewGroup;

    if-eqz v10, :cond_c

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_c
    move-object v4, v15

    :goto_3
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_d
    :goto_4
    iget v4, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->clockScale:F

    invoke-static {v8, v4, v1, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    :goto_5
    iget-object v8, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v10, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->statusBarBigTimeHeight:I

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_e
    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v14}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    goto :goto_6

    :cond_f
    move v8, v3

    :goto_6
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setPivotX(F)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v10, v12

    div-float/2addr v8, v10

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setPivotY(F)V

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setScaleY(F)V

    int-to-float v4, v11

    mul-float/2addr v4, v9

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    iget v8, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->bigTimeTranslationY:I

    int-to-float v8, v8

    mul-float/2addr v8, v9

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v8, v7, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationDateTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    iget v4, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->notificationTranslationY:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v4, v7, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutTop:Landroid/widget/ImageView;

    iget v8, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->notificationTranslationY:I

    int-to-float v8, v8

    mul-float/2addr v8, v9

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v4, v7, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationShortcutBottom:Landroid/widget/ImageView;

    iget v8, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->notificationTranslationY:I

    int-to-float v8, v8

    mul-float/2addr v8, v9

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v4, v7, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationCarrierBottomView:Landroid/widget/LinearLayout;

    iget v7, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->notificationTranslationY:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->updateWeight(F)V

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object v6, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->miuiPhoneStatusBarClockController:Lcom/android/systemui/statusbar/policy/MiuiPhoneStatusBarClockController;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MiuiPhoneStatusBarClockController;->statusBarClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :cond_10
    iget-object v6, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iget-object v7, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->oldVisibility:Ljava/lang/Integer;

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    iput-object v15, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->oldVisibility:Ljava/lang/Integer;

    const/4 v7, 0x1

    goto :goto_7

    :cond_11
    move v7, v13

    :goto_7
    iget v8, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->oldOrientation:I

    if-eq v8, v6, :cond_12

    iput v6, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->oldOrientation:I

    const/4 v8, 0x1

    goto :goto_8

    :cond_12
    move v8, v13

    :goto_8
    if-nez v7, :cond_14

    if-eqz v8, :cond_13

    goto :goto_9

    :cond_13
    move v7, v13

    goto :goto_a

    :cond_14
    :goto_9
    const/4 v7, 0x1

    :goto_a
    iget-boolean v8, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->oldAppearance:Z

    iget-boolean v9, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->newAppearance:Z

    if-eq v8, v9, :cond_15

    iput-boolean v9, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->oldAppearance:Z

    const/16 v16, 0x1

    goto :goto_b

    :cond_15
    move/from16 v16, v13

    :goto_b
    iget-boolean v8, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->animate:Z

    if-eqz v7, :cond_16

    move v8, v13

    :cond_16
    iget-object v9, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    const/16 v10, 0x8

    if-nez v15, :cond_17

    goto :goto_c

    :cond_17
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v10, :cond_18

    iget-boolean v11, v9, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsFocusedNotifPromptShowing:Z

    if-eqz v11, :cond_19

    :cond_18
    :goto_c
    if-ne v6, v12, :cond_1c

    :cond_19
    if-nez v7, :cond_1a

    if-eqz v16, :cond_21

    :cond_1a
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1;->oldAppearance:Z

    if-eqz v0, :cond_1b

    iget-object v0, v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v1, v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTimeFolme:Lmiuix/animation/IFolme;

    invoke-static {v2, v0, v1, v5, v8}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    return-void

    :cond_1b
    iget-object v0, v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v1, v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTimeFolme:Lmiuix/animation/IFolme;

    invoke-static {v2, v0, v1, v3, v8}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    return-void

    :cond_1c
    iget-boolean v0, v9, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsFocusedNotifPromptShowing:Z

    if-eqz v0, :cond_1e

    if-nez v15, :cond_1d

    goto :goto_d

    :cond_1d
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_20

    :cond_1e
    :goto_d
    iget-object v0, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v2, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->headsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_1f

    goto :goto_e

    :cond_1f
    iget-object v0, v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v1, v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTimeFolme:Lmiuix/animation/IFolme;

    invoke-static {v2, v0, v1, v5, v13}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    return-void

    :cond_20
    :goto_e
    iget-object v0, v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v3, v4, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->notificationBigTimeFolme:Lmiuix/animation/IFolme;

    invoke-static {v2, v0, v3, v1, v13}, Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;->access$startFolmeAnimationAlpha(Lcom/android/systemui/controlcenter/shade/NotificationHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    :cond_21
    :goto_f
    return-void
.end method

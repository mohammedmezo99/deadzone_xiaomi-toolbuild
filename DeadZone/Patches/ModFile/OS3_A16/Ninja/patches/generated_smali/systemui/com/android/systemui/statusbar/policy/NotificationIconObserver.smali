.class public final Lcom/android/systemui/statusbar/policy/NotificationIconObserver;
.super Ljava/lang/Object;


# instance fields
.field public final maxIconFlow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/settings/data/repository/MiuiSystemSettingsRepository;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    check-cast p1, Lcom/android/systemui/util/settings/repository/UserAwareSettingsRepository;

    const-string v1, "status_bar_show_notification_icon"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/util/settings/repository/UserAwareSettingsRepository;->intSetting(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->maxIconFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.class Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkSpeedController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Landroid/net/ConnectivityManager;Lcom/android/systemui/statusbar/policy/MinimalismModeController;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    return-void
.end method

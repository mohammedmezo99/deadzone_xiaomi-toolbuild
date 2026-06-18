.class Lcom/android/systemui/statusbar/policy/NetworkSpeedController$WorkHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkSpeedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$WorkHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x30d41

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$WorkHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$900(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    :cond_0
    return-void
.end method

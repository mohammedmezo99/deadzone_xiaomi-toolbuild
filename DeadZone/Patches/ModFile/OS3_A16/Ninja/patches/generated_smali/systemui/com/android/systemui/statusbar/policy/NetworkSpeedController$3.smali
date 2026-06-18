.class Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkSpeedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

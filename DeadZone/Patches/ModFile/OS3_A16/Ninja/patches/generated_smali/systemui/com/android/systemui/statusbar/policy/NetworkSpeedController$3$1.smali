.class Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;->onUserChanged(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    return-void
.end method

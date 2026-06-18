.class Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/net/Network;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/net/Network;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    return-void
.end method

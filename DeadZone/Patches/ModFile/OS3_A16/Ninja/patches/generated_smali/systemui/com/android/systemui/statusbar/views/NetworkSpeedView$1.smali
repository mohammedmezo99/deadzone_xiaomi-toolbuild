.class Lcom/android/systemui/statusbar/views/NetworkSpeedView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/views/NetworkSpeedView;->onIconChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/views/NetworkSpeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/views/NetworkSpeedView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/views/NetworkSpeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/views/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->access$000(Lcom/android/systemui/statusbar/views/NetworkSpeedView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/views/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->access$100(Lcom/android/systemui/statusbar/views/NetworkSpeedView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/views/NetworkSpeedView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->requestLayout()V

    return-void
.end method

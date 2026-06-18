.class Lcom/android/systemui/statusbar/policy/ControllerExpandHeight$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ControllerExpandHeight$2;->this$0:Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ControllerExpandHeight$2;->this$0:Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;->access$102(Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ControllerExpandHeight$2;->this$0:Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;->access$200(Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

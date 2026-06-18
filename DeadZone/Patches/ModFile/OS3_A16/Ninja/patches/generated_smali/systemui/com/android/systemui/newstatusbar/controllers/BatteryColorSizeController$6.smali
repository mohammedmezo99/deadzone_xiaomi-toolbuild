.class Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->postUpdateAfterStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;->this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    iput-object p2, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;->this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->access$900(Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;)Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;->this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v1}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->access$900(Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;)Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v1

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    :goto_0
    iput v2, v1, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;->this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v1}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->access$400(Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;)V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;->this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v1}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->access$500(Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->updateCallBacks(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;->this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v1}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->access$200(Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->updateCallBacks(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;->this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v1}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->access$300(Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->updateCallBacks(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6$1;-><init>(Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

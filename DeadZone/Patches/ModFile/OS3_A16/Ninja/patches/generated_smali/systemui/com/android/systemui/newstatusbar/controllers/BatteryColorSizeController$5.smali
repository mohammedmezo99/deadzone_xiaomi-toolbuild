.class Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$5;->this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController$5;->this$0:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->access$300(Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->updateCallBacks(Ljava/util/ArrayList;)V

    return-void
.end method

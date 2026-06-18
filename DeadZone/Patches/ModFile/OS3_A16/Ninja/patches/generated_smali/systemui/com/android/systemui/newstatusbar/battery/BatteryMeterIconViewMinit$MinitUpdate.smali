.class Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MinitUpdate"
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate;->list:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate$1;-><init>(Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.three.minit.BATTERY_TYPE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method addCallBack(Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit;)V
    .registers 3

    goto :goto_1

    nop

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate;->list:Ljava/util/List;

    goto :goto_2

    nop

    :goto_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop
.end method

.method removeCallBack(Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit;)V
    .registers 3

    goto :goto_2

    nop

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :goto_1
    return-void

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate;->list:Ljava/util/List;

    goto :goto_0

    nop
.end method

.method update()V
    .registers 3

    goto :goto_5

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    goto :goto_a

    nop

    :goto_3
    check-cast v1, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit;

    goto :goto_8

    nop

    :goto_4
    return-void

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate;->list:Ljava/util/List;

    goto :goto_1

    nop

    :goto_6
    goto :goto_2

    :goto_7
    goto :goto_4

    nop

    :goto_8
    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit;->updateImage()V

    goto :goto_6

    nop

    :goto_9
    if-nez v1, :cond_0

    goto :goto_7

    :cond_0
    goto :goto_0

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    goto :goto_9

    nop
.end method

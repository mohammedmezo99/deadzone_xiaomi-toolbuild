.class public Lcom/android/systemui/newstatusbar/battery/BatteryChargeView;
.super Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlpha;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;


# instance fields
.field private final controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlpha;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryChargeView;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlpha;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryChargeView;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    return-void
.end method


# virtual methods
.method public getData()Lcom/android/systemui/newstatusbar/data/IconData;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryChargeView;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->getIconData(Z)Lcom/android/systemui/newstatusbar/data/IconData;

    move-result-object v0

    return-object v0
.end method

.method protected onAttached()V
    .registers 2

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryChargeView;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    goto :goto_2

    nop

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_3

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/battery/BatteryChargeView;->update()V

    goto :goto_1

    nop
.end method

.method protected onDetached()V
    .registers 2

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryChargeView;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    goto :goto_1

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_2

    nop

    :goto_2
    return-void
.end method

.method public onIconChange()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/battery/BatteryChargeView;->update()V

    return-void
.end method

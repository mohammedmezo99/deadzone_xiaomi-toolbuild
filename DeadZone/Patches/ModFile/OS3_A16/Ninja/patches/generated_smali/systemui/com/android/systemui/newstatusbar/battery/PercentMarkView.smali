.class public Lcom/android/systemui/newstatusbar/battery/PercentMarkView;
.super Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;


# instance fields
.field private controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

.field private isMarkSettingsEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/PercentMarkView;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/PercentMarkView;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    return-void
.end method


# virtual methods
.method protected getData()Lcom/android/systemui/newstatusbar/data/TextData;
    .registers 3

    goto :goto_5

    nop

    :goto_0
    xor-int/lit8 v1, v1, 0x1

    goto :goto_4

    nop

    :goto_1
    return-object v0

    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/newstatusbar/battery/PercentMarkView;->isMarkSettingsEnable:Z

    goto :goto_0

    nop

    :goto_3
    const/4 v0, 0x0

    goto :goto_6

    nop

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->getTextData(Z)Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    goto :goto_1

    nop

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/PercentMarkView;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    goto :goto_8

    nop

    :goto_6
    return-object v0

    :goto_7
    goto :goto_2

    nop

    :goto_8
    if-eqz v0, :cond_0

    goto :goto_7

    :cond_0
    goto :goto_3

    nop
.end method

.method protected onAttached()V
    .registers 2

    goto :goto_2

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/battery/PercentMarkView;->onIconChange()V

    goto :goto_1

    nop

    :goto_1
    return-void

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/PercentMarkView;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    goto :goto_3

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_0

    nop
.end method

.method protected onDetached()V
    .registers 2

    goto :goto_2

    nop

    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_0

    nop

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/PercentMarkView;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    goto :goto_1

    nop
.end method

.method public onIconChange()V
    .registers 2

    const-string v0, "battery_percent_mark_settings_enable"

    invoke-static {v0}, Landroid/preference/SettingsEliteHelper;->getBoolofSettings1(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/battery/PercentMarkView;->isMarkSettingsEnable:Z

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/battery/PercentMarkView;->update()V

    return-void
.end method

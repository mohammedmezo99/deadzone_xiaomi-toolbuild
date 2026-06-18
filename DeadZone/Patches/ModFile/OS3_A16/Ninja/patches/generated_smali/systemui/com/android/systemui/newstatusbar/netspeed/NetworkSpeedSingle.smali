.class public Lcom/android/systemui/newstatusbar/netspeed/NetworkSpeedSingle;
.super Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;


# instance fields
.field private final controller:Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/newstatusbar/netspeed/NetworkSpeedSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/netspeed/NetworkSpeedSingle;->controller:Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    return-void
.end method


# virtual methods
.method protected getData()Lcom/android/systemui/newstatusbar/data/TextData;
    .registers 2

    goto :goto_1

    nop

    :goto_0
    return-object v0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/netspeed/NetworkSpeedSingle;->controller:Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    goto :goto_2

    nop

    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;->getCurrData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    goto :goto_0

    nop
.end method

.method protected onAttached()V
    .registers 2

    goto :goto_3

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_2

    nop

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/netspeed/NetworkSpeedSingle;->update()V

    goto :goto_1

    nop

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/netspeed/NetworkSpeedSingle;->controller:Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    goto :goto_0

    nop
.end method

.method protected onDetached()V
    .registers 2

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/netspeed/NetworkSpeedSingle;->controller:Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    goto :goto_1

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_2

    nop

    :goto_2
    return-void
.end method

.method public onIconChange()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/netspeed/NetworkSpeedSingle;->update()V

    return-void
.end method

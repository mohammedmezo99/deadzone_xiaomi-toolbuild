.class public Lcom/android/systemui/newstatusbar/views/WifiView;
.super Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlpha;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;


# instance fields
.field protected controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/newstatusbar/views/WifiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlpha;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/WifiView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    return-void
.end method


# virtual methods
.method public getData()Lcom/android/systemui/newstatusbar/data/IconData;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/WifiView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/WifiView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/WifiView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;->getWifiData()Lcom/android/systemui/newstatusbar/data/IconData;

    move-result-object v0

    return-object v0
.end method

.method protected onAttached()V
    .registers 2

    goto :goto_2

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_1

    nop

    :goto_1
    return-void

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/WifiView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    goto :goto_0

    nop
.end method

.method protected onDetached()V
    .registers 2

    goto :goto_2

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_1

    nop

    :goto_1
    return-void

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/WifiView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    goto :goto_0

    nop
.end method

.method public onIconChange()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/WifiView;->update()V

    return-void
.end method

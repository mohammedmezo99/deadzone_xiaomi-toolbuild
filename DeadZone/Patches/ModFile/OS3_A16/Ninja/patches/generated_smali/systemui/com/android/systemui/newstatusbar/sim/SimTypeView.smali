.class public Lcom/android/systemui/newstatusbar/sim/SimTypeView;
.super Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;


# instance fields
.field protected controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/newstatusbar/sim/SimTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    return-void
.end method


# virtual methods
.method protected getData()Lcom/android/systemui/newstatusbar/data/TextData;
    .registers 2

    goto :goto_6

    nop

    :goto_0
    return-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;->getSimTypeData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    goto :goto_0

    nop

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    goto :goto_1

    nop

    :goto_3
    const-class v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    goto :goto_8

    nop

    :goto_4
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    :goto_5
    goto :goto_2

    nop

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    goto :goto_9

    nop

    :goto_7
    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    goto :goto_4

    nop

    :goto_8
    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    nop

    :goto_9
    if-eqz v0, :cond_0

    goto :goto_5

    :cond_0
    goto :goto_3

    nop
.end method

.method protected onAttached()V
    .registers 2

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    goto :goto_1

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_2

    nop

    :goto_2
    return-void
.end method

.method protected onDetached()V
    .registers 2

    goto :goto_1

    nop

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    goto :goto_2

    nop

    :goto_2
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_0

    nop
.end method

.method public onIconChange()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeView;->update()V

    return-void
.end method

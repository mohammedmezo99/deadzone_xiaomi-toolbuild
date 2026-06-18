.class public Lcom/android/systemui/newstatusbar/views/CustSimIcon;
.super Lcom/android/systemui/newstatusbar/sim/SimIcon;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/CustomIconController$CallBack;


# instance fields
.field private iconController:Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

.field private mIds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/sim/SimIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/CustSimIcon;->iconController:Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/newstatusbar/sim/SimIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/CustSimIcon;->iconController:Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    return-void
.end method


# virtual methods
.method protected onAttached()V
    .registers 2

    goto :goto_3

    nop

    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/CustomIconController;->addCallBack(Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;)V

    goto :goto_0

    nop

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/CustSimIcon;->iconController:Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    goto :goto_1

    nop

    :goto_3
    invoke-super {p0}, Lcom/android/systemui/newstatusbar/sim/SimIcon;->onAttached()V

    goto :goto_2

    nop
.end method

.method protected onDetached()V
    .registers 2

    goto :goto_1

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/CustomIconController;->removeCallBack(Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;)V

    goto :goto_2

    nop

    :goto_1
    invoke-super {p0}, Lcom/android/systemui/newstatusbar/sim/SimIcon;->onDetached()V

    goto :goto_3

    nop

    :goto_2
    return-void

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/CustSimIcon;->iconController:Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    goto :goto_0

    nop
.end method

.method public onIconStyleChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/CustSimIcon;->iconController:Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    iget v1, p0, Lcom/android/systemui/newstatusbar/views/CustSimIcon;->mIds:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/CustomIconController;->getSimIds(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/systemui/newstatusbar/sim/SimIcon;->setImageResource(I)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/sim/SimIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    iput p1, p0, Lcom/android/systemui/newstatusbar/views/CustSimIcon;->mIds:I

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/CustSimIcon;->iconController:Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/CustSimIcon;->iconController:Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/CustSimIcon;->iconController:Lcom/android/systemui/newstatusbar/controllers/CustomIconController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/newstatusbar/controllers/CustomIconController;->getSimIds(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/systemui/newstatusbar/sim/SimIcon;->setImageResource(I)V

    return-void
.end method

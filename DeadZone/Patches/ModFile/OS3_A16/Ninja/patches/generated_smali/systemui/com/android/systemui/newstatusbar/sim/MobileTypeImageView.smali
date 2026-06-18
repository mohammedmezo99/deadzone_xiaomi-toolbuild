.class public Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;
.super Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;


# instance fields
.field protected controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

.field public drawable:Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;

.field private inOut:Landroid/widget/ImageView;

.field private leftContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    goto :goto_3

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_1

    nop

    :goto_1
    return-void

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    goto :goto_0

    nop

    :goto_3
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->onAttachedToWindow()V

    goto :goto_2

    nop
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    goto :goto_3

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    goto :goto_1

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_2

    nop

    :goto_2
    return-void

    :goto_3
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->onDetachedFromWindow()V

    goto :goto_0

    nop
.end method

.method public onIconChange()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->drawable:Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->onIconChange()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    instance-of v0, p1, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->drawable:Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->setParent(Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftContainerAndInOut(Landroid/view/ViewGroup;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->leftContainer:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->inOut:Landroid/widget/ImageView;

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateMobileTypeLayout()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->drawable:Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->inOut:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->leftContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->updateMobileTypeLayoutParams(Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

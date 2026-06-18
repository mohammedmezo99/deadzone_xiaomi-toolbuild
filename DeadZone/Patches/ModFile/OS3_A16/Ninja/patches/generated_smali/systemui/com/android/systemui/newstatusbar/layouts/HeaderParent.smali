.class public Lcom/android/systemui/newstatusbar/layouts/HeaderParent;
.super Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    goto :goto_1

    nop

    :goto_0
    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    goto :goto_3

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    goto :goto_4

    nop

    :goto_2
    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;->setParent(Lcom/android/systemui/newstatusbar/layouts/HeaderParent;)V

    goto :goto_5

    nop

    :goto_4
    const-class v0, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    goto :goto_2

    nop

    :goto_5
    return-void
.end method

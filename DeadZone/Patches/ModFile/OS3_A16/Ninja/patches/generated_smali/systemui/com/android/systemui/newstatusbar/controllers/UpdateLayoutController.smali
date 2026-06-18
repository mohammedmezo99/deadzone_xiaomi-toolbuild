.class public Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;
.super Lcom/android/systemui/plugins/controllers/ControllerExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController$CallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/plugins/controllers/ControllerExt<",
        "Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController$CallBack;",
        ">;"
    }
.end annotation


# instance fields
.field private changed:Z

.field private elementController:Lcom/android/systemui/newstatusbar/controllers/ElementController;

.field private final handler:Landroid/os/Handler;

.field private final layoutListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/controllers/ControllerExt;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController$1;-><init>(Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;)V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;->changed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;)Lcom/android/systemui/newstatusbar/controllers/ElementController;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;->elementController:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    return-object v0
.end method

.method private compare(FF)Z
    .registers 11

    add-float v0, p1, p2

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    sub-float v2, p1, p2

    float-to-double v4, v2

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method public getLayoutListener()Landroid/view/View$OnLayoutChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method isChange(IIIIIIII)Z
    .registers 15

    goto :goto_0

    nop

    :goto_0
    sub-int v0, p3, p1

    goto :goto_12

    nop

    :goto_1
    int-to-float v4, v0

    goto :goto_7

    nop

    :goto_2
    int-to-float v5, v3

    goto :goto_3

    nop

    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;->compare(FF)Z

    move-result v4

    goto :goto_11

    nop

    :goto_4
    const/4 v4, 0x1

    :goto_5
    goto :goto_13

    nop

    :goto_6
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;->compare(FF)Z

    move-result v4

    goto :goto_b

    nop

    :goto_7
    int-to-float v5, v1

    goto :goto_6

    nop

    :goto_8
    const/4 v4, 0x0

    goto :goto_9

    nop

    :goto_9
    goto :goto_5

    :goto_a
    goto :goto_4

    nop

    :goto_b
    if-eqz v4, :cond_0

    goto :goto_a

    :cond_0
    goto :goto_f

    nop

    :goto_c
    goto :goto_a

    :goto_d
    goto :goto_8

    nop

    :goto_e
    sub-int v2, p4, p2

    goto :goto_10

    nop

    :goto_f
    int-to-float v4, v2

    goto :goto_2

    nop

    :goto_10
    sub-int v3, p8, p6

    goto :goto_1

    nop

    :goto_11
    if-nez v4, :cond_1

    goto :goto_d

    :cond_1
    goto :goto_c

    nop

    :goto_12
    sub-int v1, p7, p5

    goto :goto_e

    nop

    :goto_13
    return v4
.end method

.method public setElementController(Lcom/android/systemui/newstatusbar/controllers/ElementController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;->elementController:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    return-void
.end method

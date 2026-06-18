.class public Lcom/android/systemui/newstatusbar/layouts/DateLayout;
.super Lcom/android/systemui/newstatusbar/layouts/ElementLayout;

# interfaces
.implements Lcom/android/systemui/newstatusbar/policy/ISlots;


# instance fields
.field private child:Lcom/android/systemui/newstatusbar/views/DateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method getView()Landroid/view/View;
    .registers 4

    goto :goto_7

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/DateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_3

    nop

    :goto_1
    check-cast v0, Lcom/android/systemui/newstatusbar/views/DateView;

    goto :goto_9

    nop

    :goto_2
    return-object v0

    :goto_3
    const-string v2, "element_date"

    goto :goto_8

    nop

    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    nop

    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    nop

    :goto_6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/DateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_6

    nop

    :goto_8
    invoke-static {v1, v2}, Landroid/Utils/Utils;->LayoutToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_4

    nop

    :goto_9
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/DateLayout;->child:Lcom/android/systemui/newstatusbar/views/DateView;

    goto :goto_2

    nop
.end method

.method public setSlot(Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/DateLayout;->child:Lcom/android/systemui/newstatusbar/views/DateView;

    invoke-interface {v0, p1}, Lcom/android/systemui/newstatusbar/policy/ISlots;->setSlot(Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;)V

    return-void
.end method

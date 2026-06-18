.class public Lcom/android/systemui/newstatusbar/layouts/StatusLayout;
.super Lcom/android/systemui/newstatusbar/layouts/ElementLayout;


# instance fields
.field private child:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getChild()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/StatusLayout;->child:Landroid/view/View;

    return-object v0
.end method

.method getView()Landroid/view/View;
    .registers 4

    goto :goto_1

    nop

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/StatusLayout;->child:Landroid/view/View;

    goto :goto_5

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/StatusLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_3

    nop

    :goto_2
    const-string v2, "element_status"

    goto :goto_7

    nop

    :goto_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_4

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/StatusLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_2

    nop

    :goto_5
    return-object v0

    :goto_6
    const/4 v2, 0x0

    goto :goto_8

    nop

    :goto_7
    invoke-static {v1, v2}, Landroid/Utils/Utils;->LayoutToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_6

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop
.end method

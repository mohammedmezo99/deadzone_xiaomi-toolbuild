.class public Lcom/android/systemui/newstatusbar/layouts/PromptLayout;
.super Lcom/android/systemui/newstatusbar/layouts/ElementLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAddedChild()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method getView()Landroid/view/View;
    .registers 4

    goto :goto_5

    nop

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/PromptLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_6

    nop

    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    nop

    :goto_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_1

    nop

    :goto_4
    invoke-static {v1, v2}, Landroid/Utils/Utils;->LayoutToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/PromptLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_3

    nop

    :goto_6
    const-string v2, "element_prompt"

    goto :goto_4

    nop

    :goto_7
    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 4

    goto :goto_3

    nop

    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/newstatusbar/layouts/PromptLayout;->setMeasuredDimension(II)V

    goto :goto_2

    nop

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :goto_2
    return-void

    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->onMeasure(II)V

    goto :goto_1

    nop
.end method

.class public Lcom/android/systemui/newstatusbar/layouts/NotifPromptLayout;
.super Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "Nastya_s"

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotifPromptLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "Nastya_s"

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotifPromptLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "Nastya_s"

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NotifPromptLayout;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onViewAdded(Landroid/view/View;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;->onViewAdded(Landroid/view/View;)V

    const-string v0, "Nastya_s"

    const-string v1, "onViewAdded: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewAdded: params width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, -0x2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const-string v2, "onViewAdded: params = null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

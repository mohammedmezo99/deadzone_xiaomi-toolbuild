.class public Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;
.super Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

# interfaces
.implements Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/AlphaOptimizedImageView;",
        "Lcom/android/systemui/statusbar/views/MobileSignalDisplayable;"
    }
.end annotation


# instance fields
.field public blurRadius:I

.field public iconVisible:Z

.field public islandState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x14

    iput p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;->islandState:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public copyView()Landroid/view/View;
    .registers 8

    new-instance v0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getAdjustViewBounds()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    return-object v0
.end method

.method public getBlurRadius()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;->blurRadius:I

    return p0
.end method

.method public getCopyId()I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result p0

    return p0
.end method

.method public getIconVisible()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;->iconVisible:Z

    return p0
.end method

.method public getIslandState()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;->islandState:I

    return p0
.end method

.method public setBlurRadius(I)V
    .registers 3

    iput p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;->blurRadius:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setMiSelfBlur(ILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setIconVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;->iconVisible:Z

    return-void
.end method

.method public setIslandState(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorImageView;->islandState:I

    return-void
.end method

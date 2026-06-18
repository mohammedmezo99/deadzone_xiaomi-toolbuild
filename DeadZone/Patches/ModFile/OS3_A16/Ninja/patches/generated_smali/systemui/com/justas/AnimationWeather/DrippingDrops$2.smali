.class Lcom/justas/AnimationWeather/DrippingDrops$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/justas/AnimationWeather/DrippingDrops;->showAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/justas/AnimationWeather/DrippingDrops;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/justas/AnimationWeather/DrippingDrops;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/justas/AnimationWeather/DrippingDrops$2;->this$0:Lcom/justas/AnimationWeather/DrippingDrops;

    iput-object p2, p0, Lcom/justas/AnimationWeather/DrippingDrops$2;->val$iv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/justas/AnimationWeather/DrippingDrops$2;->this$0:Lcom/justas/AnimationWeather/DrippingDrops;

    iget-object v1, p0, Lcom/justas/AnimationWeather/DrippingDrops$2;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/justas/AnimationWeather/DrippingDrops;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

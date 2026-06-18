.class Lcom/justas/AnimationWeather/DrippingDrops$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/justas/AnimationWeather/DrippingDrops;->startDropAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/justas/AnimationWeather/DrippingDrops;


# direct methods
.method constructor <init>(Lcom/justas/AnimationWeather/DrippingDrops;)V
    .registers 2

    iput-object p1, p0, Lcom/justas/AnimationWeather/DrippingDrops$1;->this$0:Lcom/justas/AnimationWeather/DrippingDrops;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/justas/AnimationWeather/DrippingDrops$1;->this$0:Lcom/justas/AnimationWeather/DrippingDrops;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/DrippingDrops;->startDropAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/DrippingDrops$1;->this$0:Lcom/justas/AnimationWeather/DrippingDrops;

    invoke-static {v0}, Lcom/justas/AnimationWeather/DrippingDrops;->access$000(Lcom/justas/AnimationWeather/DrippingDrops;)V

    return-void
.end method

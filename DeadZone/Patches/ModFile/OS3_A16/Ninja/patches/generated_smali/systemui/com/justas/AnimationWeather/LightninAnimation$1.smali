.class Lcom/justas/AnimationWeather/LightninAnimation$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/justas/AnimationWeather/LightninAnimation;->startLightnin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/justas/AnimationWeather/LightninAnimation;


# direct methods
.method constructor <init>(Lcom/justas/AnimationWeather/LightninAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/justas/AnimationWeather/LightninAnimation$1;->this$0:Lcom/justas/AnimationWeather/LightninAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/justas/AnimationWeather/LightninAnimation$1;->this$0:Lcom/justas/AnimationWeather/LightninAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/LightninAnimation;->showLightnin()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/LightninAnimation$1;->this$0:Lcom/justas/AnimationWeather/LightninAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/LightninAnimation;->startLightnin()V

    return-void
.end method

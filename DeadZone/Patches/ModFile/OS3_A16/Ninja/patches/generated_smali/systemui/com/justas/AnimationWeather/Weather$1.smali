.class Lcom/justas/AnimationWeather/Weather$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/justas/AnimationWeather/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/justas/AnimationWeather/Weather;


# direct methods
.method constructor <init>(Lcom/justas/AnimationWeather/Weather;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/justas/AnimationWeather/Weather$1;->this$0:Lcom/justas/AnimationWeather/Weather;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather$1;->this$0:Lcom/justas/AnimationWeather/Weather;

    invoke-static {v0}, Lcom/justas/AnimationWeather/Weather;->access$000(Lcom/justas/AnimationWeather/Weather;)V

    return-void
.end method

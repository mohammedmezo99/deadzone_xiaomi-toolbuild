.class public final Lcom/miui/systemui/controller/WeatherController$1;
.super Landroid/database/ContentObserver;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/controller/WeatherController;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/WeatherController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/systemui/controller/WeatherController$1;->this$0:Lcom/miui/systemui/controller/WeatherController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 5

    iget-object p1, p0, Lcom/miui/systemui/controller/WeatherController$1;->this$0:Lcom/miui/systemui/controller/WeatherController;

    iget-object v0, p1, Lcom/miui/systemui/controller/WeatherController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_weather"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Lcom/miui/systemui/controller/WeatherController;->mEnabled:Z

    iget-object p0, p0, Lcom/miui/systemui/controller/WeatherController$1;->this$0:Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {p0}, Lcom/miui/systemui/controller/WeatherController;->updateState()V

    return-void
.end method

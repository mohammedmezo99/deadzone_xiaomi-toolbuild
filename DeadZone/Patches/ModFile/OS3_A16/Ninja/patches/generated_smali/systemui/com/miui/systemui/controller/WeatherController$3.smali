.class public final Lcom/miui/systemui/controller/WeatherController$3;
.super Landroid/database/ContentObserver;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/controller/WeatherController;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/WeatherController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/systemui/controller/WeatherController$3;->this$0:Lcom/miui/systemui/controller/WeatherController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 2

    iget-object p0, p0, Lcom/miui/systemui/controller/WeatherController$3;->this$0:Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {p0}, Lcom/miui/systemui/controller/WeatherController;->startQuery()V

    return-void
.end method

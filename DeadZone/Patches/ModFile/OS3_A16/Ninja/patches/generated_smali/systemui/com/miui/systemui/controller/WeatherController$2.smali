.class public final Lcom/miui/systemui/controller/WeatherController$2;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/controller/WeatherController;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/WeatherController;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/systemui/controller/WeatherController$2;->this$0:Lcom/miui/systemui/controller/WeatherController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.miui.weather2"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/systemui/controller/WeatherController$2;->this$0:Lcom/miui/systemui/controller/WeatherController;

    invoke-virtual {p0}, Lcom/miui/systemui/controller/WeatherController;->updateState()V

    :cond_0
    return-void
.end method

.class Lcom/android/systemui/newstatusbar/policy/Shake$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/policy/Shake;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/policy/Shake;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/policy/Shake;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/policy/Shake$2;->this$0:Lcom/android/systemui/newstatusbar/policy/Shake;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/policy/Shake$2;->this$0:Lcom/android/systemui/newstatusbar/policy/Shake;

    invoke-virtual {v2, v1}, Lcom/android/systemui/newstatusbar/policy/Shake;->onScreenOnOffChanged(Z)V

    return-void
.end method

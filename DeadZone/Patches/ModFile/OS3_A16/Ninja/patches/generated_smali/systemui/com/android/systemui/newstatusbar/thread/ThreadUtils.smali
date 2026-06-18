.class public Lcom/android/systemui/newstatusbar/thread/ThreadUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/newstatusbar/thread/ThreadUtils$HandlerHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUiThreadHandler()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/android/systemui/newstatusbar/thread/ThreadUtils$HandlerHolder;->INSTANCE:Landroid/os/Handler;

    return-object v0
.end method

.method public static postDelayedOnUiThread(Ljava/lang/Runnable;J)V
    .registers 4

    invoke-static {}, Lcom/android/systemui/newstatusbar/thread/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {}, Lcom/android/systemui/newstatusbar/thread/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

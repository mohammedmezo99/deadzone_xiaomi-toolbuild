.class public interface abstract Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/clock/SecondTick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallBack"
.end annotation


# virtual methods
.method public isSecondEnable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public secondTick()V
    .registers 1

    return-void
.end method

.class public interface abstract Lcom/android/systemui/newstatusbar/controllers/IslandController$OnIslandChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/controllers/IslandController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnIslandChangeListener"
.end annotation


# virtual methods
.method public abstract onIslandShowChange(Z)V
.end method

.method public onIslandSizeChange(II)V
    .registers 3

    return-void
.end method

.method public onIslandSizeChange(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

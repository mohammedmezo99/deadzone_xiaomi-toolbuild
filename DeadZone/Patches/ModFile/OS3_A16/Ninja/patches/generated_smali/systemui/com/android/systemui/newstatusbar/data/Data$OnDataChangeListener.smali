.class public interface abstract Lcom/android/systemui/newstatusbar/data/Data$OnDataChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/data/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDataChangeListener"
.end annotation


# virtual methods
.method public onDataChanged()V
    .registers 1

    return-void
.end method

.method public onDataChanged(Ljava/lang/String;)V
    .registers 2

    invoke-interface {p0}, Lcom/android/systemui/newstatusbar/data/Data$OnDataChangeListener;->onDataChanged()V

    return-void
.end method

.method public onDataChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-interface {p0, p2}, Lcom/android/systemui/newstatusbar/data/Data$OnDataChangeListener;->onDataChanged(Ljava/lang/String;)V

    return-void
.end method

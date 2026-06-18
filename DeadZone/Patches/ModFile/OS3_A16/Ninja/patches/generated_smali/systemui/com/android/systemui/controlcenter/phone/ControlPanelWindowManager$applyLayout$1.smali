.class public final Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;I)V
    .registers 3

    iput p2, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->this$0:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 4

    iget p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0  #0x0
    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->this$0:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    iget-object p1, p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->asView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->this$0:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    iget p2, p2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->visibility:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->this$0:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    iget-object p2, p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowManager:Landroid/view/WindowManager;

    iget-object p1, p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->asView()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->this$0:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->this$0:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onWindowChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$OnWindowChangeListener;

    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    invoke-interface {p2, v0}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$OnWindowChangeListener;->onExpandChange(Z)V

    goto :goto_4

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0  #00000000
    .end packed-switch
.end method

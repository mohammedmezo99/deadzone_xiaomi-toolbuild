.class Lcom/android/systemui/newstatusbar/views/DateView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/views/DateView;->setSlot(Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/views/DateView;

.field final synthetic val$slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/views/DateView;Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/views/DateView$3;->this$0:Lcom/android/systemui/newstatusbar/views/DateView;

    iput-object p2, p0, Lcom/android/systemui/newstatusbar/views/DateView$3;->val$slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/DateView$3;->val$slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    sget-object v2, Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;->slotA:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    if-ne v1, v2, :cond_0

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v1}, Lcom/android/systemui/SysDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    goto :goto_0

    :cond_0
    const-class v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;

    invoke-static {v1}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarViewDep;->darkIconDispatcher:Lcom/android/systemui/statusbar/data/repository/DarkIconDispatcherStoreImpl;

    iget-object v3, p0, Lcom/android/systemui/newstatusbar/views/DateView$3;->this$0:Lcom/android/systemui/newstatusbar/views/DateView;

    invoke-virtual {v3}, Lcom/android/systemui/newstatusbar/views/DateView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/data/repository/DarkIconDispatcherStoreImpl;->forDisplay(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/DateView$3;->this$0:Lcom/android/systemui/newstatusbar/views/DateView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_2
    return-void
.end method

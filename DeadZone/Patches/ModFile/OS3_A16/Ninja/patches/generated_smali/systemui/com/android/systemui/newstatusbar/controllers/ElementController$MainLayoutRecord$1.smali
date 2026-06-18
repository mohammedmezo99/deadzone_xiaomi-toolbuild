.class Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord;->setDispatcher(Lcom/android/systemui/plugins/DarkIconDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord;

    iget-object v1, v1, Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord;->dispatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/policy/ISlots;

    iget-object v2, p0, Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord;

    iget-object v2, v2, Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord;->slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    invoke-interface {v0, v2}, Lcom/android/systemui/newstatusbar/policy/ISlots;->setSlot(Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord;

    iget-object v1, v1, Lcom/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord;->dispatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

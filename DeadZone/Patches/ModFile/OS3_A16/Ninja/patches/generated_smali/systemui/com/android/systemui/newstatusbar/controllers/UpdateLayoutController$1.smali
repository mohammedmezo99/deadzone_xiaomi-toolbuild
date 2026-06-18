.class Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 20

    move-object v0, p0

    iget-object v1, v0, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;->isChange(IIIIIIII)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayoutChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Nastya_super_girl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;

    invoke-static {v2}, Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;->access$000(Lcom/android/systemui/newstatusbar/controllers/UpdateLayoutController;)Lcom/android/systemui/newstatusbar/controllers/ElementController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/controllers/ElementController;->updateMainLayouts()V

    :cond_0
    return-void
.end method

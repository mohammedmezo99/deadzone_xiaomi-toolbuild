.class Lcom/android/systemui/newstatusbar/controllers/DarkController$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/controllers/DarkController;->setColor(ILcom/android/systemui/newstatusbar/controllers/ElementController$Slots;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/controllers/DarkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/controllers/DarkController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/controllers/DarkController$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/DarkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/controllers/DarkController$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/DarkController;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/controllers/DarkController;->access$000(Lcom/android/systemui/newstatusbar/controllers/DarkController;)V

    return-void
.end method

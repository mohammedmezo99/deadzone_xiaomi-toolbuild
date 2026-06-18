.class Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/newstatusbar/data/Data$OnDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController$1;->this$0:Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;->onCustomChanged(Ljava/lang/String;)V

    return-void
.end method

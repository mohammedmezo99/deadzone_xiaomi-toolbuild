.class Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$2;->this$0:Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$2;->this$0:Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;->access$800(Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController;)Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$WorkHandler;

    move-result-object v0

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/FakeClockAnimController$WorkHandler;->sendEmptyMessage(I)Z

    return-void
.end method

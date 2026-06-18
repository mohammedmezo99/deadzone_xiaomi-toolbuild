.class Lcom/android/systemui/newstatusbar/clock/SecondTick$SecondTimerTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/clock/SecondTick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecondTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/clock/SecondTick;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/clock/SecondTick;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick$SecondTimerTask;->this$0:Lcom/android/systemui/newstatusbar/clock/SecondTick;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick$SecondTimerTask;->this$0:Lcom/android/systemui/newstatusbar/clock/SecondTick;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->access$000(Lcom/android/systemui/newstatusbar/clock/SecondTick;)V

    return-void
.end method

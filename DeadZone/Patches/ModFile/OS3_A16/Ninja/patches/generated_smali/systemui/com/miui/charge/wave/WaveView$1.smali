.class public final Lcom/miui/charge/wave/WaveView$1;
.super Landroid/os/Handler;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/wave/WaveView;


# direct methods
.method public constructor <init>(Lcom/miui/charge/wave/WaveView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/charge/wave/WaveView$1;->this$0:Lcom/miui/charge/wave/WaveView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/miui/charge/wave/WaveView$1;->this$0:Lcom/miui/charge/wave/WaveView;

    invoke-virtual {p0}, Lcom/miui/charge/wave/WaveView;->tryCreateBubble()V

    :cond_0
    return-void
.end method

.class Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkSpeedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x30d41

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0  #0x186a3
    return-void

    :pswitch_1  #0x186a4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Z

    move-result v6

    invoke-static {v1, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->formatSpeed(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v6, v0, v2

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v0, v2

    invoke-virtual {v6, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    goto :goto_0

    :cond_0
    aget-object v6, v0, v2

    invoke-virtual {v6, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object v5, v0, v3

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateText([Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    new-array v1, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Z

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->formatSpeed(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    const-string v6, "△"

    goto :goto_1

    :cond_3
    const-string v6, "▲"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    aget-object v7, v0, v2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Z

    move-result v7

    invoke-static {v6, v10, v11, v7}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->formatSpeed(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-nez v2, :cond_4

    const-string v2, "▽"

    goto :goto_2

    :cond_4
    const-string v2, "▼"

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateText([Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    :goto_3
    nop

    :goto_4
    return-void

    :pswitch_2  #0x186a2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeed:Z

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v5, v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$200(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$200(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$202(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Z)Z

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeed:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    const-string v3, "show"

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateVisibility(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$000(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    return-void

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_9
    return-void

    :pswitch_3  #0x186a1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v3, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkConnected:Z

    if-eq v2, v4, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkConnected:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    const-string v4, "connect"

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateVisibility(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$000(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    return-void

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_3  #000186a1
        :pswitch_2  #000186a2
        :pswitch_0  #000186a3
        :pswitch_1  #000186a4
    .end packed-switch
.end method

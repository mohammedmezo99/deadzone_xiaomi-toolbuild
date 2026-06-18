.class Lbg/mods/Lockscreen/ChargingInfoHelper$UpdateRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lbg/mods/Lockscreen/ChargingInfoHelper;


# direct methods
.method constructor <init>(Lbg/mods/Lockscreen/ChargingInfoHelper;)V
    .registers 2

    iput-object p1, p0, Lbg/mods/Lockscreen/ChargingInfoHelper$UpdateRunnable;->this$0:Lbg/mods/Lockscreen/ChargingInfoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lbg/mods/Lockscreen/ChargingInfoHelper$UpdateRunnable;->this$0:Lbg/mods/Lockscreen/ChargingInfoHelper;

    invoke-static {v0}, Lbg/mods/Lockscreen/ChargingInfoHelper;->access$000(Lbg/mods/Lockscreen/ChargingInfoHelper;)V

    iget-object v0, p0, Lbg/mods/Lockscreen/ChargingInfoHelper$UpdateRunnable;->this$0:Lbg/mods/Lockscreen/ChargingInfoHelper;

    invoke-static {v0}, Lbg/mods/Lockscreen/ChargingInfoHelper;->access$100(Lbg/mods/Lockscreen/ChargingInfoHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lbg/mods/Lockscreen/ChargingInfoHelper$UpdateRunnable;->this$0:Lbg/mods/Lockscreen/ChargingInfoHelper;

    invoke-static {v0}, Lbg/mods/Lockscreen/ChargingInfoHelper;->access$200(Lbg/mods/Lockscreen/ChargingInfoHelper;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.class public final Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$isNightMode$1$listener$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$isNightMode$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$isNightMode$1$listener$1;->this$0:Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;

    return-void
.end method


# virtual methods
.method public final onUiModeChanged()V
    .registers 2

    iget-object v0, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$isNightMode$1$listener$1;->this$0:Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;

    iget-object v0, v0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isNightMode1(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$isNightMode$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

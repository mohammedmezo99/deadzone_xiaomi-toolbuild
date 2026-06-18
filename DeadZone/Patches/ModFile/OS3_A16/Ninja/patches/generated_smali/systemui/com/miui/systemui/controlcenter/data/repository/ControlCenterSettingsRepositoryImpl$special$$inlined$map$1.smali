.class public final Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic this$0:Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/Flow;Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;I)V
    .registers 4

    iput p3, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->$r8$classId:I

    iput-object p1, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->this$0:Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$5$2;

    iget-object v1, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->this$0:Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    invoke-direct {v0, p1, v1}, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$5$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;)V

    iget-object p0, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    check-cast p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-virtual {p0, v0, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0

    :pswitch_0  #0x2
    new-instance v0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$2$2;

    iget-object v1, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->this$0:Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    invoke-direct {v0, p1, v1}, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$2$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;)V

    iget-object p0, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-object p0

    :pswitch_1  #0x1
    new-instance v0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$3$2;

    iget-object v1, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->this$0:Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    invoke-direct {v0, p1, v1}, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$3$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;)V

    iget-object p0, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    check-cast p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-virtual {p0, v0, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object p0

    :pswitch_2  #0x0
    new-instance v0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1$2;

    iget-object v1, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->this$0:Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    invoke-direct {v0, p1, v1}, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;)V

    iget-object p0, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    check-cast p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-virtual {p0, v0, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2  #00000000
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

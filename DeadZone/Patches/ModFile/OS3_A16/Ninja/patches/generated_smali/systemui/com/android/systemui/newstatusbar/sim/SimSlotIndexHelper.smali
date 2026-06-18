.class public Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;->list:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;
    .registers 3

    const-class v0, Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;->instance:Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;->instance:Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;

    :cond_0
    sget-object v1, Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;->instance:Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getSlot(I)I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/sim/SimSlotIndexHelper;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method public setSubs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

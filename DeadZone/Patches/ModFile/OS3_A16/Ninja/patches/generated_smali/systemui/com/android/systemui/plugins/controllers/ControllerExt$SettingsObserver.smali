.class public Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/controllers/ControllerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer;,
        Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;,
        Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;,
        Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CE:",
        "Lcom/android/systemui/plugins/controllers/ControllerExt",
        "<+",
        "Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final controllerExt:Lcom/android/systemui/plugins/controllers/ControllerExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCE;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final keys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;

.field private final observer:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver",
            "<TCE;>.Observer;"
        }
    .end annotation
.end field

.field private final type:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/controllers/ControllerExt;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCE;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;->System:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;-><init>(Lcom/android/systemui/plugins/controllers/ControllerExt;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/controllers/ControllerExt;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCE;",
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->keys:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer;-><init>(Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;)V

    iput-object v0, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->observer:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer;

    iput-object p1, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->controllerExt:Lcom/android/systemui/plugins/controllers/ControllerExt;

    iput-object p2, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->type:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/controllers/ControllerExt;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCE;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;->System:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;-><init>(Lcom/android/systemui/plugins/controllers/ControllerExt;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->addKeys([Ljava/lang/String;)Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/controllers/ControllerExt;[Ljava/lang/String;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCE;[",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;-><init>(Lcom/android/systemui/plugins/controllers/ControllerExt;[Ljava/lang/String;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/controllers/ControllerExt;[Ljava/lang/String;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCE;[",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;",
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;-><init>(Lcom/android/systemui/plugins/controllers/ControllerExt;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;)V

    invoke-virtual {p0, p4}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->addListener(Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;)Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->addKeys([Ljava/lang/String;)Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/controllers/ControllerExt;[Ljava/lang/String;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCE;[",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;->System:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;-><init>(Lcom/android/systemui/plugins/controllers/ControllerExt;Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->addListener(Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;)Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->addKeys([Ljava/lang/String;)Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;)Lcom/android/systemui/plugins/controllers/ControllerExt;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->controllerExt:Lcom/android/systemui/plugins/controllers/ControllerExt;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;)Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->listener:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;

    return-object v0
.end method


# virtual methods
.method public varargs addKeys([Ljava/lang/String;)Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver",
            "<TCE;>;"
        }
    .end annotation

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    iget-object v3, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->keys:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;

    invoke-direct {v4, v0}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->register()V

    return-object p0
.end method

.method public addListener(Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;)Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;",
            ")",
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver",
            "<TCE;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->listener:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener;

    return-object p0
.end method

.method public addUri(Landroid/net/Uri;)Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver",
            "<TCE;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->controllerExt:Lcom/android/systemui/plugins/controllers/ControllerExt;

    iget-object v1, v1, Lcom/android/systemui/plugins/controllers/ControllerExt;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->observer:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object p0
.end method

.method register()V
    .registers 7

    goto :goto_b

    nop

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->keys:Ljava/util/ArrayList;

    goto :goto_2

    nop

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->keys:Ljava/util/ArrayList;

    goto :goto_29

    nop

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    goto :goto_12

    nop

    :goto_4
    iget-boolean v3, v1, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->isRegister:Z

    goto :goto_d

    nop

    :goto_5
    if-nez v3, :cond_0

    goto :goto_a

    :cond_0
    goto :goto_34

    nop

    :goto_6
    iget-object v3, v1, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->key:Ljava/lang/String;

    goto :goto_17

    nop

    :goto_7
    goto :goto_3

    :goto_8
    goto :goto_15

    nop

    :goto_9
    goto :goto_1b

    :goto_a
    goto :goto_14

    nop

    :goto_b
    const/4 v5, 0x0

    goto :goto_1d

    nop

    :goto_c
    invoke-virtual {v1}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->register()V

    goto :goto_9

    nop

    :goto_d
    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    goto :goto_30

    nop

    :goto_e
    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_24

    nop

    :goto_f
    iget-object v2, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->type:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;

    goto :goto_18

    nop

    :goto_10
    goto :goto_2a

    :goto_11
    goto :goto_1c

    nop

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    goto :goto_5

    nop

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_37

    nop

    :goto_14
    return-void

    :goto_15
    iget-object v2, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->type:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;

    goto :goto_26

    nop

    :goto_16
    invoke-virtual {v1}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->register()V

    goto :goto_10

    nop

    :goto_17
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1f

    nop

    :goto_18
    sget-object v3, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;->System:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;

    goto :goto_28

    nop

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_35

    nop

    :goto_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    goto :goto_2e

    nop

    :goto_1c
    iget-object v2, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->keys:Ljava/util/ArrayList;

    goto :goto_1a

    nop

    :goto_1d
    iget-object v2, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->controllerExt:Lcom/android/systemui/plugins/controllers/ControllerExt;

    goto :goto_27

    nop

    :goto_1e
    iget-object v4, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->observer:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer;

    goto :goto_32

    nop

    :goto_1f
    iget-object v4, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->observer:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer;

    goto :goto_25

    nop

    :goto_20
    if-eqz v3, :cond_2

    goto :goto_1b

    :cond_2
    goto :goto_38

    nop

    :goto_21
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1e

    nop

    :goto_22
    if-eq v2, v3, :cond_3

    goto :goto_11

    :cond_3
    goto :goto_1

    nop

    :goto_23
    if-eqz v3, :cond_4

    goto :goto_2a

    :cond_4
    goto :goto_6

    nop

    :goto_24
    invoke-virtual {v1}, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->register()V

    goto :goto_7

    nop

    :goto_25
    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_16

    nop

    :goto_26
    sget-object v3, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;->Secure:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType;

    goto :goto_22

    nop

    :goto_27
    iget-object v2, v2, Lcom/android/systemui/plugins/controllers/ControllerExt;->context:Landroid/content/Context;

    goto :goto_39

    nop

    :goto_28
    if-eq v2, v3, :cond_5

    goto :goto_8

    :cond_5
    goto :goto_0

    nop

    :goto_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    goto :goto_2b

    nop

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    goto :goto_2c

    nop

    :goto_2c
    if-nez v3, :cond_6

    goto :goto_a

    :cond_6
    goto :goto_19

    nop

    :goto_2d
    if-nez v3, :cond_7

    goto :goto_a

    :cond_7
    goto :goto_13

    nop

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    goto :goto_2d

    nop

    :goto_2f
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_36

    nop

    :goto_30
    iget-object v3, v1, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->key:Ljava/lang/String;

    goto :goto_2f

    nop

    :goto_31
    iget-boolean v3, v1, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->isRegister:Z

    goto :goto_20

    nop

    :goto_32
    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_c

    nop

    :goto_33
    check-cast v1, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;

    goto :goto_4

    nop

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_33

    nop

    :goto_35
    check-cast v1, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;

    goto :goto_3a

    nop

    :goto_36
    iget-object v4, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;->observer:Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer;

    goto :goto_e

    nop

    :goto_37
    check-cast v1, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;

    goto :goto_31

    nop

    :goto_38
    iget-object v3, v1, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->key:Ljava/lang/String;

    goto :goto_21

    nop

    :goto_39
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_f

    nop

    :goto_3a
    iget-boolean v3, v1, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->isRegister:Z

    goto :goto_23

    nop
.end method

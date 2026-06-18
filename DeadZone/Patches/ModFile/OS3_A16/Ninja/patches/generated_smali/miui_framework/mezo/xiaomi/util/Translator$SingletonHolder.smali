.class final Lmezo/xiaomi/util/Translator$SingletonHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmezo/xiaomi/util/Translator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lmezo/xiaomi/util/Translator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lmezo/xiaomi/util/Translator;
    .registers 1

    sget-object v0, Lmezo/xiaomi/util/Translator$SingletonHolder;->INSTANCE:Lmezo/xiaomi/util/Translator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    new-instance v0, Lmezo/xiaomi/util/Translator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmezo/xiaomi/util/Translator;-><init>(Lmezo/xiaomi/util/Translator-IA;)V

    sput-object v0, Lmezo/xiaomi/util/Translator$SingletonHolder;->INSTANCE:Lmezo/xiaomi/util/Translator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

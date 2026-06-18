.class public Lmiui/payment/PaymentManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/payment/PaymentManager$PaymentCallback;,
        Lmiui/payment/PaymentManager$PaymentListener;,
        Lmiui/payment/PaymentManager$PaymentManagerCallback;,
        Lmiui/payment/PaymentManager$PaymentManagerFuture;,
        Lmiui/payment/PaymentManager$PmsTask;
    }
.end annotation


# static fields
.field private static final ACTION_PAYMENT:Ljava/lang/String; = "com.xiaomi.xmsf.action.PAYMENT"

.field public static final CAPABILITY:I = 0x3

.field private static final DEBUG:Z = true

.field public static final ERROR_CODE_ACCOUNT_CHANGED:I = 0xa

.field public static final ERROR_CODE_ACCOUNT_FROZEN:I = 0x9

.field public static final ERROR_CODE_ACCOUNT_THROTTING:I = 0xf

.field public static final ERROR_CODE_AUTHENTICATION_ERROR:I = 0x5

.field public static final ERROR_CODE_CALLER_INVALID:I = 0xc

.field public static final ERROR_CODE_CALL_TOO_FAST:I = 0xe

.field public static final ERROR_CODE_CANCELED:I = 0x4

.field public static final ERROR_CODE_DUPLICATE_DEDUCT:I = 0x10

.field public static final ERROR_CODE_DUPLICATE_PURCHASE:I = 0x7

.field public static final ERROR_CODE_EXCEPTION:I = 0x1

.field public static final ERROR_CODE_INVALID_PARAMS:I = 0x2

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final ERROR_CODE_ORDER_ERROR:I = 0xd

.field public static final ERROR_CODE_SERVER_ERROR:I = 0x6

.field public static final ERROR_CODE_THIRD_PARTY:I = 0xb

.field public static final ERROR_CODE_USER_ID_MISMATCH:I = 0x8

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final PACKAGE_PAYMENT:Ljava/lang/String; = "com.xiaomi.payment"

.field public static final PAYMENT_KEY_IS_NO_ACCOUNT:Ljava/lang/String; = "payment_is_no_account"

.field public static final PAYMENT_KEY_PAYMENT_RESULT:Ljava/lang/String; = "payment_payment_result"

.field public static final PAYMENT_KEY_QUICK:Ljava/lang/String; = "payment_quick"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PAYMENT_KEY_TRADE_BALANCE:Ljava/lang/String; = "payment_trade_balance"

.field private static final TAG:Ljava/lang/String; = "PaymentManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lmiui/payment/PaymentManager;
    .registers 2

    new-instance v0, Lmiui/payment/PaymentManager;

    invoke-direct {v0, p0}, Lmiui/payment/PaymentManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private internalGetMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lmiui/payment/PaymentManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lmiui/payment/PaymentManager$2;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/payment/PaymentManager$PmsTask;->start()Lmiui/payment/PaymentManager$PaymentManagerFuture;

    move-result-object p0

    return-object p0
.end method

.method private internalPayForOrder(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lmiui/payment/PaymentManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lmiui/payment/PaymentManager$1;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/payment/PaymentManager$PmsTask;->start()Lmiui/payment/PaymentManager$PaymentManagerFuture;

    move-result-object p0

    return-object p0
.end method

.method private internalStartMibiIntent(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.xiaomi.payment"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "intent uri cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "activity cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V
    .registers 7

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lmiui/payment/PaymentManager$PaymentCallback;

    invoke-direct {v0, p0, p3, p2, p5}, Lmiui/payment/PaymentManager$PaymentCallback;-><init>(Lmiui/payment/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V

    invoke-direct {p0, p1, p3, p4, v0}, Lmiui/payment/PaymentManager;->internalGetMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "verify cannot be empty"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "serviceId cannot be empty"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "activity cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public gotoMiliCenter(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "https://app.mibi.xiaomi.com/?id=mibi.milicenter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiui/payment/PaymentManager;->internalStartMibiIntent(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method public gotoPayRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p2, "https://app.mibi.xiaomi.com/?id=mibi.billRecord"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmiui/payment/PaymentManager;->internalStartMibiIntent(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method public gotoRechargeRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p2, "https://app.mibi.xiaomi.com/?id=mibi.billRecord"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmiui/payment/PaymentManager;->internalStartMibiIntent(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method public isMibiServiceDisabled()Z
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.action.PAYMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.payment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-boolean p0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz p0, :cond_1

    const-string p0, "HK"

    invoke-static {p0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public payForOrder(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lmiui/payment/PaymentManager$PaymentListener;)V
    .registers 8

    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lmiui/payment/PaymentManager$PaymentCallback;

    const-string v1, "thd"

    invoke-direct {v0, p0, v1, p2, p5}, Lmiui/payment/PaymentManager$PaymentCallback;-><init>(Lmiui/payment/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V

    invoke-direct {p0, p1, p3, p4, v0}, Lmiui/payment/PaymentManager;->internalPayForOrder(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "order cannot be empty"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "activity cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public recharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p2, "https://app.mibi.xiaomi.com/?id=mibi.recharge"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmiui/payment/PaymentManager;->internalStartMibiIntent(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

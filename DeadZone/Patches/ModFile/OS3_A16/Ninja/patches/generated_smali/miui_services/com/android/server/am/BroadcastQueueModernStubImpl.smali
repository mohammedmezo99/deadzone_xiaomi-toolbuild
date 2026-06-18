.class public Lcom/android/server/am/BroadcastQueueModernStubImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/am/BroadcastQueueModernStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueueModernStubImpl$BRReportHandler;,
        Lcom/android/server/am/BroadcastQueueModernStubImpl$BroadcastMap;,
        Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;
    }
.end annotation


# static fields
.field private static final ACTION_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final ACTION_MIPUSH_MESSAGE_ARRIVED:Ljava/lang/String; = "com.xiaomi.mipush.MESSAGE_ARRIVED"

.field private static final ACTION_NFC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BR_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/mqsas/sdk/event/BroadcastEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final DEFER_CACHED_WHITE_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final FLAG_IMMUTABLE:I = 0x4000000

.field private static final IS_BLOCK_BROADCAST_FIRST_BOOT:Ljava/lang/String; = "is_block_broadcast_first_boot"

.field private static final IS_STABLE_VERSION:Z

.field private static final MAX_PENDING_BROADCASTS_PER_APP:I = 0x4e20

.field private static final MAX_QUANTITY:I = 0x1e

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field private static final PENDING_BROADCASTS_WARNING_THRESHOLD_PER_APP:I = 0x1388

.field static final TAG:Ljava/lang/String; = "BroadcastQueueInjector"

.field private static volatile mBRHandler:Lcom/android/server/am/BroadcastQueueModernStubImpl$BRReportHandler;

.field private static final mBroadcastMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastQueueModernStubImpl$BroadcastMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDispatchThreshold:J

.field private static final mFinishDeno:I

.field private static mIndex:I

.field private static final mInternationalSpecialAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mObject:Ljava/lang/Object;

.field private static final sSpecialSkipAction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemBootCompleted:Z

.field private static final sSystemSkipAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ABNORMAL_BROADCAST_TIME:I

.field private final MAX_ABNORMAL_BROADCASTS:I

.field private final mAbnormalBroadcasts:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityRequestId:I

.field private mAmService:Lcom/android/server/am/ActivityManagerService;

.field private final mBroadcastCountByAction:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastCountByUid:Landroid/util/SparseIntArray;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mIsBlockBroadcastFirstBoot:Z

.field private final mIsBlockBroadcastFirstBootUri:Landroid/net/Uri;

.field private mSecurityInternal:Lmiui/security/SecurityManagerInternal;

.field private mShowingWarningDialog:Z

.field private volatile mWarningDialogLastPopupTime:J

.field private mWarningDialogPopupCount:I


# direct methods
.method public static synthetic $r8$lambda$7G3Do6KfI_rfZDiwIEPPP20FwqM(Lcom/android/server/am/BroadcastQueueModernStubImpl;Ljava/lang/String;IILjava/lang/String;ILcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->lambda$doShowAppErrorDialog$2(Ljava/lang/String;IILjava/lang/String;ILcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NxU8fxOcYbkSk8K5S5yLq2f7C3k(Lcom/android/server/am/BroadcastQueueModernStubImpl;IILjava/lang/String;ILcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;Z)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->lambda$doShowAppErrorDialog$1(IILjava/lang/String;ILcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/BroadcastQueueModernStubImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBlockBroadcastFirstBootUri(Lcom/android/server/am/BroadcastQueueModernStubImpl;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIsBlockBroadcastFirstBootUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateBlockBroadcast(Lcom/android/server/am/BroadcastQueueModernStubImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->updateBlockBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisSystemBootCompleted()Z
    .registers 1

    invoke-static {}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mInternationalSpecialAction:Ljava/util/List;

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mInternationalSpecialAction:Ljava/util/List;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mInternationalSpecialAction:Ljava/util/List;

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->BR_LIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastMap:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mObject:Ljava/lang/Object;

    const-string v1, "persist.broadcast.time"

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mDispatchThreshold:J

    const-string v1, "persist.broadcast.count"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mFinishDeno:I

    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->IS_STABLE_VERSION:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ACTION_NFC:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->DEFER_CACHED_WHITE_LIST:Ljava/util/Set;

    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v2, "com.android.updater.action.UPDATE_SUCCESSED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v2, "com.android.updater.action.OTA_UPDATE_SUCCESSED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v2, "miui.media.AUDIO_VOIP_RECORD_STATE_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v2, "com.android.settings.stylus.STYLUS_STATE_SOC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v2, "com.android.settings.stylus.STYLUS_BATTERY_NOTIFY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v2, "com.android.settings.stylus.STYLUS_PLACE_ERROR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v2, "com.xiaomi.bluetooth.action.KEYBOARD_ATTACH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "is_pad"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v1, "miui.intent.action.ACTION_POGO_CONNECTED_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    const-string v1, "android.appwidget.action.APPWIDGET_RESTORED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    const-string v1, "miui.intent.action.contentcatcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    const-string v1, "com.miui.contentextension.action.PACKAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ACTION_NFC:Ljava/util/Set;

    const-string v1, "com.miui.nfc.action.TRANSACTION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ACTION_NFC:Ljava/util/Set;

    const-string v1, "com.miui.intent.action.SWIPE_CARD"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ACTION_NFC:Ljava/util/Set;

    const-string v1, "com.miui.nfc.action.RF_ON"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ACTION_NFC:Ljava/util/Set;

    const-string v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ACTION_NFC:Ljava/util/Set;

    const-string v1, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ACTION_NFC:Ljava/util/Set;

    const-string v1, "android.nfc.action.TRANSACTION_DETECTED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->DEFER_CACHED_WHITE_LIST:Ljava/util/Set;

    const-string v1, "com.xiaomi.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->DEFER_CACHED_WHITE_LIST:Ljava/util/Set;

    const-string v1, "com.xiaomi.mipicks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    iput v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->MAX_ABNORMAL_BROADCASTS:I

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x15f90

    goto :goto_1

    :cond_1
    const v0, 0x11170

    :goto_1
    iput v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ABNORMAL_BROADCAST_TIME:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAbnormalBroadcasts:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIsBlockBroadcastFirstBoot:Z

    const-string v1, "is_block_broadcast_first_boot"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIsBlockBroadcastFirstBootUri:Landroid/net/Uri;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByUid:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByAction:Landroid/util/ArrayMap;

    iput v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mWarningDialogPopupCount:I

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mShowingWarningDialog:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mWarningDialogLastPopupTime:J

    new-instance v0, Lcom/android/server/am/BroadcastQueueModernStubImpl$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastQueueModernStubImpl$1;-><init>(Lcom/android/server/am/BroadcastQueueModernStubImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private checkSpecialAction(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 6

    if-eqz p2, :cond_1

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSpecialSkipAction:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ACTION_NFC:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v2, 0x1

    invoke-static {v2, v0, v1, p2}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->notifyPowerKeeperEvent(IIILjava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static checkTime(JLjava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: processNextBroadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v0, p0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastQueueInjector"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private doShowAppErrorDialog(Ljava/lang/String;IIILjava/lang/String;Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)V
    .registers 16

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/am/BroadcastQueueModernStubImpl$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v7, p3

    move v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueModernStubImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BroadcastQueueModernStubImpl;Ljava/lang/String;IILjava/lang/String;ILcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private genActionKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getBRReportHandler()Landroid/os/Handler;
    .registers 4

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBRHandler:Lcom/android/server/am/BroadcastQueueModernStubImpl$BRReportHandler;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBRHandler:Lcom/android/server/am/BroadcastQueueModernStubImpl$BRReportHandler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "brreport-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/am/BroadcastQueueModernStubImpl$BRReportHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/am/BroadcastQueueModernStubImpl$BRReportHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBRHandler:Lcom/android/server/am/BroadcastQueueModernStubImpl$BRReportHandler;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBRHandler:Lcom/android/server/am/BroadcastQueueModernStubImpl$BRReportHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/BroadcastQueueModernStubImpl;
    .registers 1

    invoke-static {}, Lcom/android/server/am/BroadcastQueueModernStub;->get()Lcom/android/server/am/BroadcastQueueModernStub;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;

    return-object v0
.end method

.method private getNextRequestIdLocked()I
    .registers 3

    iget v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mActivityRequestId:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mActivityRequestId:I

    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mActivityRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mActivityRequestId:I

    iget v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mActivityRequestId:I

    return v0
.end method

.method private getPackageLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, p1

    :goto_0
    return-object v3
.end method

.method private declared-synchronized getTopPendingBroadcastActions(II)[Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;
    .registers 13

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->genActionKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/PriorityQueue;

    new-instance v2, Lcom/android/server/am/BroadcastQueueModernStubImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastQueueModernStubImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    if-le p2, v3, :cond_0

    const/16 p2, 0xa

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    const/4 p2, 0x1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByAction:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v7

    if-lt v7, p2, :cond_4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;

    invoke-static {v8}, Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;->-$$Nest$fgetcount(Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)I

    move-result v8

    if-gt v7, v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_4
    new-instance v7, Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9, v5}, Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;-><init>(Ljava/lang/String;ILcom/android/server/am/BroadcastQueueModernStubImpl-IA;)V

    invoke-virtual {v1, v7}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    nop

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    new-array v3, v4, [Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;

    new-instance v4, Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;

    const-string v6, ""

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;-><init>(Ljava/lang/String;ILcom/android/server/am/BroadcastQueueModernStubImpl-IA;)V

    aput-object v4, v3, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_6
    :try_start_1
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;

    array-length v5, v3

    sub-int/2addr v5, v4

    :goto_2
    if-ltz v5, :cond_7

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;

    aput-object v4, v3, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_7
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private isInternationalSpecialAction(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Z
    .registers 8

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mInternationalSpecialAction:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v4, "BroadcastQueueImpl#specifyBroadcast"

    invoke-static {v0, v2, v3, v4}, Landroid/miui/AppOpsUtils;->getApplicationSpecialBroadcast(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private static isSystemBootCompleted()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemBootCompleted:Z

    if-nez v0, :cond_0

    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemBootCompleted:Z

    :cond_0
    sget-boolean v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemBootCompleted:Z

    return v0
.end method

.method private synthetic lambda$doShowAppErrorDialog$1(IILjava/lang/String;ILcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;Z)V
    .registers 16

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mShowingWarningDialog:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent too many broadcasts: top suspect action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;->action()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object p1, v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1
.end method

.method private synthetic lambda$doShowAppErrorDialog$2(Ljava/lang/String;IILjava/lang/String;ILcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)V
    .registers 15

    invoke-static {}, Lcom/android/server/am/MiuiWarnings;->getInstance()Lcom/android/server/am/MiuiWarnings;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/BroadcastQueueModernStubImpl$$ExternalSyntheticLambda2;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueueModernStubImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BroadcastQueueModernStubImpl;IILjava/lang/String;ILcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/MiuiWarnings;->showWarningDialog(Ljava/lang/String;Lcom/android/server/am/MiuiWarnings$WarningCallback;)Z

    return-void
.end method

.method static synthetic lambda$getTopPendingBroadcastActions$0(Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;->-$$Nest$fgetcount(Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)I

    move-result v0

    return v0
.end method

.method private static notifyPowerKeeperEvent(IIILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method static onBroadcastFinished(Landroid/content/Intent;Ljava/lang/String;IJJJJI)V
    .registers 34

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move/from16 v6, p11

    sget-boolean v7, Lcom/android/server/am/BroadcastQueueModernStubImpl;->IS_STABLE_VERSION:Z

    if-eqz v7, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, "null"

    :cond_1
    if-nez p1, :cond_2

    const-string v8, "android"

    goto :goto_0

    :cond_2
    move-object/from16 v8, p1

    :goto_0
    move/from16 v9, p2

    const-string v10, ""

    move-object v11, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v14, v2, v0

    sget-wide v16, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mDispatchThreshold:J

    cmp-long v14, v14, v16

    const/16 p1, 0x0

    if-gez v14, :cond_4

    sub-long v16, v4, v2

    move-wide/from16 v18, v12

    int-to-long v12, v6

    mul-long v12, v12, p9

    sget v14, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mFinishDeno:I

    move-wide/from16 v20, v12

    int-to-long v12, v14

    div-long v12, v20, v12

    cmp-long v12, v16, v12

    if-ltz v12, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v12, p1

    goto :goto_2

    :cond_4
    move-wide/from16 v18, v12

    :goto_1
    const/4 v12, 0x1

    :goto_2
    sget v13, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    const/16 v14, 0x1e

    if-ltz v13, :cond_6

    sget v13, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    if-le v13, v14, :cond_5

    goto :goto_3

    :cond_5
    sget v13, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    goto :goto_4

    :cond_6
    :goto_3
    move/from16 v13, p1

    :goto_4
    sput v13, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    new-instance v13, Lcom/android/server/am/BroadcastQueueModernStubImpl$BroadcastMap;

    invoke-direct {v13, v7, v8}, Lcom/android/server/am/BroadcastQueueModernStubImpl$BroadcastMap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v16, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    if-eqz v16, :cond_8

    sget v15, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    if-gt v15, v14, :cond_8

    sget-object v15, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    sget-object v14, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    sget-object v15, Lcom/android/server/am/BroadcastQueueModernStubImpl;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-virtual {v15}, Lmiui/mqsas/sdk/event/BroadcastEvent;->addCount()V

    move-object/from16 v17, v11

    move/from16 v20, v12

    sub-long v11, v4, v0

    invoke-virtual {v15, v11, v12}, Lmiui/mqsas/sdk/event/BroadcastEvent;->addTotalTime(J)V

    if-eqz v20, :cond_7

    invoke-virtual {v15, v10}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setReason(Ljava/lang/String;)V

    invoke-virtual {v15, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    invoke-virtual {v15, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    invoke-virtual {v15, v4, v5}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    invoke-virtual {v15, v6}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setNumReceivers(I)V

    :cond_7
    move-object/from16 p1, v13

    move-object/from16 v14, v17

    move-wide/from16 v12, v18

    goto :goto_5

    :cond_8
    move-object/from16 v17, v11

    move/from16 v20, v12

    sget v11, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    if-lt v11, v14, :cond_9

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    const/4 v12, 0x1

    iput v12, v11, Landroid/os/Message;->what:I

    new-instance v12, Landroid/content/pm/ParceledListSlice;

    sget-object v14, Lcom/android/server/am/BroadcastQueueModernStubImpl;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-direct {v12, v14}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iput-object v12, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->getBRReportHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v12, Lcom/android/server/am/BroadcastQueueModernStubImpl;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    sget-object v12, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    sput p1, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    :cond_9
    sget-object v11, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v11, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIndex:I

    new-instance v11, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-direct {v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>()V

    const/16 v12, 0x40

    invoke-virtual {v11, v12}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setType(I)V

    if-eqz v20, :cond_a

    invoke-virtual {v11, v10}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setReason(Ljava/lang/String;)V

    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    invoke-virtual {v11, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    invoke-virtual {v11, v4, v5}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    invoke-virtual {v11, v6}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setNumReceivers(I)V

    :cond_a
    invoke-virtual {v11, v7}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setAction(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setCallerPackage(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setCount(I)V

    sub-long v14, v4, v0

    invoke-virtual {v11, v14, v15}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTotalTime(J)V

    invoke-virtual {v11, v9}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPid(I)V

    move-object/from16 v14, v17

    invoke-virtual {v11, v14}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPackageName(Ljava/lang/String;)V

    move-object/from16 p1, v13

    move-wide/from16 v12, v18

    invoke-virtual {v11, v12, v13}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTimeStamp(J)V

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setSystem(Z)V

    sget-object v15, Lcom/android/server/am/BroadcastQueueModernStubImpl;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    return-void
.end method

.method private shouldStopBroadcastDispatch(Landroid/content/pm/ResolveInfo;ZLandroid/content/Intent;)Z
    .registers 14

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/WindowProcessUtils;->isPackageRunning(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p2, :cond_1

    const-string v5, "BroadcastQueueModernStubImpl#checkApplicationAutoStart#"

    goto :goto_0

    :cond_1
    const-string v5, "BroadcastQueueModernStubImpl#specifyBroadcast"

    :goto_0
    invoke-static {v2, v3, v4, v5}, Landroid/miui/AppOpsUtils;->noteApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v3, :cond_2

    const-class v3, Lmiui/security/SecurityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/security/SecurityManagerInternal;

    iput-object v3, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_2
    if-eqz p3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p3}, Lmiui/security/AppBehavior;->parseIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x6

    const-wide/16 v7, 0x1

    invoke-virtual/range {v4 .. v9}, Lmiui/security/SecurityManagerInternal;->recordAppBehaviorAsync(ILjava/lang/String;JLjava/lang/String;)V

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private declared-synchronized showAppErrorDialogIfNeed(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)V
    .registers 13

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mWarningDialogPopupCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mShowingWarningDialog:Z

    if-eqz v0, :cond_0

    move-object v3, p0

    move-object v9, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mWarningDialogLastPopupTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-wide v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mWarningDialogLastPopupTime:J

    iget v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mWarningDialogPopupCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mWarningDialogPopupCount:I

    iput-boolean v3, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mShowingWarningDialog:Z

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object v8, v2

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->getPackageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v6, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v7, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p0

    move-object v9, p2

    :try_start_2
    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->doShowAppErrorDialog(Ljava/lang/String;IIILjava/lang/String;Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_2
    move-object v3, p0

    move-object v9, p2

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v3, p0

    :goto_1
    move-object p1, v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private updateBlockBroadcast()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    invoke-virtual {v0}, Lmiui/security/SecurityManagerInternal;->isAllowedDeviceProvision()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_block_broadcast_first_boot"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIsBlockBroadcastFirstBoot:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public checkAbnormalBroadcast(Lcom/android/server/am/BroadcastRecord;)V
    .registers 6

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ABNORMAL_BROADCAST_TIME:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAbnormalBroadcasts:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->MAX_ABNORMAL_BROADCASTS:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAbnormalBroadcasts:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAbnormalBroadcasts:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkApplicationAutoStart(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    const/4 v8, 0x1

    if-eqz v6, :cond_16

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_16

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_0

    move/from16 v17, v8

    goto :goto_8

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    sget-boolean v2, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v2, 0x1

    if-eqz v2, :cond_1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v8

    :cond_1
    invoke-static {v10}, Lcom/miui/server/process/ProcessManagerInternal;->checkCtsProcess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v17, v8

    goto :goto_7

    :cond_2
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    const-string v12, "BroadcastQueueInjector"

    const/4 v13, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceImpl;->WIDGET_PROVIDER_WHITE_LIST:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":widgetProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG- Reject widget call from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_3
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v3, 0x403

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ACTION_NFC:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/PendingIntentRecordImpl;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/server/am/PendingIntentRecordImpl;->exemptTemporarily(Ljava/lang/String;Z)V

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG- Allow NFC start application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_5
    iget-boolean v2, v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIsBlockBroadcastFirstBoot:Z

    const-string v14, " for broadcast "

    const-string v15, "/"

    const-string v3, "Unable to launch app "

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v4, 0x2710

    if-lt v2, v4, :cond_6

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-static {v10}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v8

    goto :goto_0

    :cond_7
    move v2, v13

    :goto_0
    if-nez v2, :cond_9

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string v4, "android"

    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": process is not permitted to first boot block"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_9
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v2, :cond_a

    const-class v2, Lmiui/security/SecurityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/SecurityManagerInternal;

    iput-object v2, v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_a
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    move-object v4, v3

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object v5, v4

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_b

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    :cond_b
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v16, v5

    move-object v5, v7

    iget v7, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v17, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v2 .. v7}, Lmiui/security/SecurityManagerInternal;->checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v10}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2

    :cond_c
    move v2, v13

    goto :goto_3

    :cond_d
    :goto_2
    move/from16 v2, v17

    :goto_3
    const-string v3, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_12

    if-nez v3, :cond_e

    if-eqz v2, :cond_e

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    :cond_e
    if-eqz v2, :cond_f

    sget-object v4, Lcom/android/server/am/BroadcastQueueModernStubImpl;->sSystemSkipAction:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_f
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move/from16 v4, v17

    goto :goto_4

    :cond_10
    move v4, v13

    :goto_4
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v6, v4, v5}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->shouldStopBroadcastDispatch(Landroid/content/pm/ResolveInfo;ZLandroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-direct {v0, v9, v6}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->isInternationalSpecialAction(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_5

    :cond_11
    const-string v2, " auto start"

    goto :goto_6

    :cond_12
    :goto_5
    return v17

    :cond_13
    move-object v8, v3

    :cond_14
    const-string v2, " wake path"

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": process is not permitted to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_15
    move/from16 v17, v8

    :goto_7
    return v17

    :cond_16
    move/from16 v17, v8

    :goto_8
    return v17
.end method

.method public checkReceiverAppDealBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 19

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    const-string v4, ""

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v0

    :goto_0
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v6, v4

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_4

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_4
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/16 v10, 0x2000

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lmiui/security/SecurityManagerInternal;->calleeAliveMatchBlackRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    return v13

    :cond_5
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    const-string v4, "BroadcastQueueInjector"

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v7, 0x403

    if-ne v0, v7, :cond_6

    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->ACTION_NFC:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/PendingIntentRecordImpl;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/server/am/PendingIntentRecordImpl;->exemptTemporarily(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIUILOG- Allow NFC start appliction "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " background start"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v0, 0x1

    if-nez v0, :cond_9

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v8}, Landroid/miui/AppOpsUtils;->isExceptionByTestPolicy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_7

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    invoke-virtual {v0}, Lmiui/security/SecurityManagerInternal;->enableRejectPackageAddBroadcast()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    invoke-virtual {v0, v8}, Lmiui/security/SecurityManagerInternal;->isInPackageAddBroadcastWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getOriginatingPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MIUILOG- Reject ACTION_PACKAGE_ADDED dispatch to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v13

    :cond_8
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v10, "getInstallSourceInfo exception"

    invoke-static {v4, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_2
    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v0

    if-nez v0, :cond_a

    return v3

    :cond_a
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->checkSpecialAction(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v3

    :cond_b
    return v3

    :cond_c
    :goto_3
    return v3
.end method

.method public checkReceiverIfRestricted(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 13

    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v6, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_0
    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/server/greeze/GreezeManagerInternal;->isRestrictReceiver(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method public checkSkipReceiver(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;ZLjava/lang/Object;)Z
    .registers 8

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->checkReceiverAppDealBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    instance-of v0, p6, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    move-object v0, p6

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->checkApplicationAutoStart(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dumpAbnormalBroadcasts(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAbnormalBroadcasts:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n  Abnormal Broadcasts ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAbnormalBroadcasts:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    const-string v2, "    abnormal"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "      "

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized dumpPendingBroadcastHistogram(Ljava/io/PrintWriter;)V
    .registers 8

    monitor-enter p0

    :try_start_0
    const-string v0, "  Pending BroadcastRecord histogram:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const-string v3, "    sender uid "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": count="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x1388

    if-le v2, v3, :cond_0

    const/4 v3, 0x5

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->getTopPendingBroadcastActions(II)[Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", top actions="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public initForBlockNonSystemBroadcast()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->updateBlockBroadcast()V

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIsBlockBroadcastFirstBoot:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mIsBlockBroadcastFirstBootUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public isInDeferCachedWhiteList(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->DEFER_CACHED_WHITE_LIST:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    const-string v2, "android"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method isSKipNotifySms(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z
    .registers 11

    const-string v0, "BroadcastQueueInjector"

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq p4, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    :try_start_0
    const-string v3, "miui.intent.SERVICE_NUMBER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v4, 0x2722

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUILOG- Sms Filter packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "isSKipNotifySms"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public isSkip(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;I)Z
    .registers 6

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->isSKipNotifySms(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSkip(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)Z
    .registers 6

    iget-object v0, p2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v0, v0, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v1, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->isSKipNotifySms(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isSkipForUser(Landroid/content/pm/ResolveInfo;Z)Z
    .registers 6

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public declared-synchronized noteEnqueueBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isReplacePending()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "android"

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByUid:Landroid/util/SparseIntArray;

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/16 v1, 0x4e20

    if-le v0, v1, :cond_2

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->getTopPendingBroadcastActions(II)[Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;

    move-result-object v0

    const-string v1, "BroadcastQueueInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sent too many pending broadcasts: top actions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, v0, v2

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->showAppErrorDialogIfNeed(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;)V

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueueModernStubImpl$ActionCount;->action()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :goto_0
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/am/BroadcastRecord;)I
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    return v5

    :cond_0
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v7, 0x3e7

    if-ne v6, v7, :cond_1

    return v5

    :cond_1
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->isSKipNotifySms(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    return v5

    :cond_2
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v2, v3, v8}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;I)V

    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.miui.intent.action.REQUEST_PERMISSIONS"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.lbe.security.miui"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v9, 0x18800000

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v9, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.intent.extra.UID"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "op"

    invoke-virtual {v7, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v9, v4, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v9, :cond_7

    iget-object v9, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v14, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-nez v9, :cond_5

    if-nez v14, :cond_3

    const-string v9, "root"

    move-object v12, v9

    goto :goto_0

    :cond_3
    const/16 v10, 0x7d0

    if-ne v14, v10, :cond_4

    const-string v9, "com.android.shell"

    move-object v12, v9

    goto :goto_0

    :cond_4
    const/16 v10, 0x3e8

    if-ne v14, v10, :cond_5

    const-string v9, "android"

    move-object v12, v9

    goto :goto_0

    :cond_5
    move-object v12, v9

    :goto_0
    if-nez v12, :cond_6

    return v5

    :cond_6
    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->getNextRequestIdLocked()I

    move-result v18

    new-instance v9, Landroid/content/Intent;

    iget-object v10, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    iget v15, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    new-array v11, v8, [Landroid/content/Intent;

    const/4 v13, 0x0

    aput-object v9, v11, v13

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v20

    move-object/from16 v19, v11

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v21, 0x4c000000

    const/16 v22, 0x0

    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v10

    new-instance v11, Landroid/content/IntentSender;

    invoke-direct {v11, v10}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v13, "android.intent.extra.INTENT"

    invoke-virtual {v7, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIUILOG - Launching Request permission [Broadcast] uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " op : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BroadcastQueueInjector"

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x36

    if-ne v1, v9, :cond_8

    const-wide/16 v9, 0x5dc

    goto :goto_1

    :cond_8
    const-wide/16 v9, 0xa

    :goto_1
    new-instance v11, Lcom/android/server/am/BroadcastQueueModernStubImpl$2;

    invoke-direct {v11, v0, v7, v2}, Lcom/android/server/am/BroadcastQueueModernStubImpl$2;-><init>(Lcom/android/server/am/BroadcastQueueModernStubImpl;Landroid/content/Intent;I)V

    move-object/from16 v12, p4

    invoke-virtual {v12, v11, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v8
.end method

.method public notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    .registers 8

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    :cond_1
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/miui/server/greeze/GreezeManagerInternal;->updateOrderBCStatus(Ljava/lang/String;IZZ)V

    :cond_3
    return-void
.end method

.method public declared-synchronized onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;)V
    .registers 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "android"

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByUid:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByUid:Landroid/util/SparseIntArray;

    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x1388

    if-ge v1, v3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->genActionKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByAction:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByAction:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onBroadcastFinished(Lcom/android/server/am/BroadcastRecord;)V
    .registers 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "android"

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByUid:Landroid/util/SparseIntArray;

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    sub-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByUid:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByUid:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByAction:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->genActionKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByAction:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    if-nez v3, :cond_3

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByAction:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueModernStubImpl;->mBroadcastCountByAction:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public updateReceiverColdUid(IZ)V
    .registers 5

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    move v0, p1

    :cond_0
    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/server/greeze/GreezeManagerInternal;->updateReceiverColdUid(I)V

    return-void
.end method

.class public Lmiui/yellowpage/YellowPageUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ANTISPAM_COLUMN_CID:I = 0x1

.field private static final ANTISPAM_COLUMN_MARKED_COUNT:I = 0x3

.field private static final ANTISPAM_COLUMN_NORMALIZED_NUMBER:I = 0x4

.field private static final ANTISPAM_COLUMN_NUMBER_TYPE:I = 0x5

.field private static final ANTISPAM_COLUMN_PID:I = 0x0

.field private static final ANTISPAM_COLUMN_TYPE:I = 0x2

.field private static final ANTISPAM_PROJECTION:[Ljava/lang/String;

.field private static final CLOUD_ANTISPAM:Ljava/lang/String; = "cloud_antispam"

.field private static final CLOUD_ANTISPAM_DISABLE:I = 0x0

.field private static final CLOUD_ANTISPAM_ENANBLE:I = 0x1

.field private static final PHONE_COLUMN_ATD_COUNT:I = 0xf

.field private static final PHONE_COLUMN_ATD_ID:I = 0xd

.field private static final PHONE_COLUMN_ATD_PROVIDER:I = 0x10

.field private static final PHONE_COLUMN_CALL_MENU:I = 0xb

.field private static final PHONE_COLUMN_CREDIT_IMG:I = 0x11

.field private static final PHONE_COLUMN_NORMALIZED_NUMBER:I = 0x9

.field private static final PHONE_COLUMN_NUMBER_TYPE:I = 0x12

.field private static final PHONE_COLUMN_PHOTO_URL:I = 0x3

.field private static final PHONE_COLUMN_PROVIDER_ID:I = 0x1

.field private static final PHONE_COLUMN_SLOGAN:I = 0xe

.field private static final PHONE_COLUMN_SUSPECT:I = 0xa

.field private static final PHONE_COLUMN_T9_RANK:I = 0xc

.field private static final PHONE_COLUMN_TAG:I = 0x2

.field private static final PHONE_COLUMN_TAG_PINYIN:I = 0x7

.field private static final PHONE_COLUMN_THUMBNAIL_URL:I = 0x4

.field private static final PHONE_COLUMN_VISIBLE:I = 0x8

.field private static final PHONE_COLUMN_YID:I = 0x0

.field private static final PHONE_COLUMN_YP_NAME:I = 0x5

.field private static final PHONE_COLUMN_YP_NAME_PINYIN:I = 0x6

.field private static final PHONE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "YellowPageUtils"

.field private static final sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiui/yellowpage/AntispamCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProviders:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmiui/yellowpage/YellowPageProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 20

    const-string v18, "credit_img"

    const-string v19, "number_type"

    const-string v1, "yid"

    const-string v2, "provider_id"

    const-string v3, "tag"

    const-string v4, "photo_url"

    const-string v5, "thumbnail_url"

    const-string v6, "yellow_page_name"

    const-string v7, "yellow_page_name_pinyin"

    const-string v8, "tag_pinyin"

    const-string v9, "hide"

    const-string v10, "normalized_number"

    const-string v11, "suspect"

    const-string v12, "call_menu"

    const-string v13, "t9_rank"

    const-string v14, "atd_category_id"

    const-string v15, "slogan"

    const-string v16, "atd_count"

    const-string v17, "atd_provider"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    const-string v5, "normalized_number"

    const-string v6, "number_type"

    const-string v1, "pid"

    const-string v2, "cid"

    const-string v3, "type"

    const-string v4, "marked_count"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static antispamNumberNotInPresetFile(Landroid/database/Cursor;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    :goto_0
    return v0
.end method

.method private static varargs buildAntispamCategorySelection([Ljava/lang/Integer;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "("

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .registers 20

    move-object/from16 v0, p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "YellowPageUtils"

    const-string v3, "invalid cid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_1
    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lmiui/yellowpage/YellowPageUtils;->getCidName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    move v10, v7

    goto :goto_1

    :cond_3
    move v10, v5

    :goto_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v3, Lmiui/yellowpage/YellowPagePhone;

    if-ne v5, v10, :cond_4

    if-eqz v6, :cond_4

    const-string v4, ""

    :cond_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    move v8, v7

    move-object v7, v4

    const-wide/16 v4, -0x1

    move v13, v6

    const/4 v6, 0x0

    move/from16 v16, v13

    const/4 v13, 0x1

    move/from16 v8, v16

    move/from16 v16, v2

    move v2, v8

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v16}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v2}, Lmiui/yellowpage/YellowPagePhone;->setNumberType(I)V

    const/4 v8, 0x3

    if-eqz v1, :cond_5

    if-ne v10, v8, :cond_0

    :cond_5
    if-ne v10, v8, :cond_6

    return-object v3

    :cond_6
    move-object v1, v3

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private static buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .registers 29

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move v7, v3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v8, 0x6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x7

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v8, 0x9

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_0

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v7

    :goto_0
    const/16 v9, 0xa

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_1

    move v15, v1

    goto :goto_1

    :cond_1
    move v15, v7

    :goto_1
    const/16 v9, 0xb

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_2

    move/from16 v16, v1

    goto :goto_2

    :cond_2
    move/from16 v16, v7

    :goto_2
    const/16 v9, 0xc

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/16 v9, 0xd

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v7, 0xe

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xf

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-wide/from16 v19, v1

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x11

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    const/16 v2, 0x12

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-wide/16 v22, -0x1

    cmp-long v2, v3, v22

    if-eqz v2, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    if-lez v9, :cond_4

    const/16 v17, 0x2

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    :goto_3
    new-instance v2, Lmiui/yellowpage/YellowPagePhone;

    move/from16 p0, v0

    move/from16 v18, v1

    move-object/from16 v25, v7

    move/from16 v24, v9

    move/from16 v9, v17

    move-wide/from16 v0, v19

    move-object/from16 v26, v21

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v16}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v0, v1}, Lmiui/yellowpage/YellowPagePhone;->setT9Rank(J)Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lmiui/yellowpage/YellowPagePhone;->setRawSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lmiui/yellowpage/YellowPagePhone;->setCreditImg(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lmiui/yellowpage/YellowPagePhone;->setCid(I)Lmiui/yellowpage/YellowPagePhone;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lmiui/yellowpage/YellowPagePhone;->setAntispamProviderId(I)Lmiui/yellowpage/YellowPagePhone;

    move/from16 v0, p0

    invoke-virtual {v2, v0}, Lmiui/yellowpage/YellowPagePhone;->setNumberType(I)V

    return-object v2
.end method

.method public static createAntispamCategory(Landroid/content/Context;Ljava/lang/String;)I
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "YellowPageUtils"

    const-string v1, "The category name must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "MAX(cid)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x2710

    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_3
    :goto_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "names"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p1, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return v4
.end method

.method public static formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "com.miui.yellowpage_preferences.%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAntispamCategoryFromCursor(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;
    .registers 16

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne v1, v2, :cond_0

    :goto_0
    move v11, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    if-eqz v11, :cond_1

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    :cond_1
    sget-object p0, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/yellowpage/AntispamCategory;

    if-eqz p0, :cond_2

    new-instance v3, Lmiui/yellowpage/AntispamCustomCategory;

    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->getCategoryId()I

    move-result v4

    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->getCategoryAllNames()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->getCategoryType()I

    move-result v6

    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->getOrder()I

    move-result v8

    move-object v9, p3

    invoke-direct/range {v3 .. v11}, Lmiui/yellowpage/AntispamCustomCategory;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    invoke-virtual {v3, p1}, Lmiui/yellowpage/AntispamCustomCategory;->setNumberType(I)V

    return-object v3

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object p0

    return-object p0
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/AntispamCustomCategory;
    .registers 15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    return-object v1

    :cond_0
    sget-object p2, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v5, v6, v7}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamCategorySelection([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    const-string v0, "getAntispamNumberCategory(): find nothing in db"

    const-string v3, "YellowPageUtils"

    if-eqz v2, :cond_a

    const/4 v4, -0x1

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eq v8, v9, :cond_4

    if-eq v8, v10, :cond_4

    if-eq v8, p2, :cond_3

    if-eq v8, v11, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    goto :goto_0

    :cond_5
    if-eq v5, v4, :cond_6

    const-string p2, "getAntispamNumberCategory(): found type user marked in db"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_1

    :cond_6
    if-eq v6, v4, :cond_7

    const-string p2, "getAntispamNumberCategory(): found type preset/cloud in db"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_1

    :cond_7
    if-eq v7, v4, :cond_8

    const-string p2, "getAntispamNumberCategory(): found type not in preset in db"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_8
    :goto_1
    :try_start_1
    invoke-static {p0, v2, v4, p1}, Lmiui/yellowpage/YellowPageUtils;->getAntispamCategoryFromCursor(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_3
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_a
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-nez v1, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object p2, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PRESET_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_c

    const/4 v0, 0x0

    :try_start_3
    invoke-static {p0, p2, v0, p1}, Lmiui/yellowpage/YellowPageUtils;->getAntispamCategoryFromCursor(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string p0, "getAntispamNumberCategory(): found in preset"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_b
    const-string p0, "getAntispamNumberCategory(): not found in preset"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :goto_7
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :goto_8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_c
    const-string p0, "getAntispamNumberCategory(): find nothing in preset"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_9
    if-eqz v1, :cond_e

    invoke-static {p1}, Lmiui/yellowpage/YellowPageUtils;->getLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lmiui/yellowpage/AntispamCustomCategory;->getNumberType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1}, Lmiui/yellowpage/AntispamCategory;->getCategoryName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getAntispamNumberCategory(): number=%s, numberType=%s, category=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_e
    invoke-static {p1}, Lmiui/yellowpage/YellowPageUtils;->getLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getAntispamNumberCategory(): number=%s, not found"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-object v1
.end method

.method private static getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    sget-object v0, Lmiui/yellowpage/YellowPageContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_3
    :goto_1
    return v0
.end method

.method public static getCategories(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lmiui/yellowpage/AntispamCategory;",
            ">;"
        }
    .end annotation

    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "icon"

    const-string v2, "display_order"

    const-string v3, "cid"

    const-string v4, "names"

    const-string v5, "type"

    filled-new-array {v3, v4, v5, p0, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v1, Lmiui/yellowpage/AntispamCategory;

    invoke-direct/range {v1 .. v6}, Lmiui/yellowpage/AntispamCategory;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    sget-object v0, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    :goto_4
    sget-object p0, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_5

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_5
    return-object p0
.end method

.method public static getCidName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    sget-object v0, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/yellowpage/AntispamCategory;

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->getCategoryName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/yellowpage/AntispamCategory;

    if-nez p0, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->getCategoryName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIvrMenuByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    sget-object v0, Lmiui/yellowpage/YellowPageContract$Ivr;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "data"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_9

    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_b

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_8

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v4, 0x32

    if-gt v0, v4, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_a

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_7

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "normalized_number IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_a

    :goto_4
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lmiui/yellowpage/YellowPageUtils;->buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :goto_6
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_a
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    return-object v2

    :cond_c
    :goto_9
    return-object v1
.end method

.method private static getLogNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-gt v0, v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit8 v4, v0, -0x2

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_1
    if-ge v3, p0, :cond_7

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v4, :cond_5

    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    goto :goto_3

    :cond_3
    if-le v0, v4, :cond_7

    :goto_2
    add-int/lit8 v4, v0, -0x4

    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const-string p0, "****"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v2, v0, -0x3

    if-ge v3, v2, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const-string p0, "***"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_5
    const-string p0, "[empty number]"

    return-object p0
.end method

.method public static getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_NORMALIZED_NUMBER:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string p2, "true"

    goto :goto_0

    :cond_1
    const-string p2, "false"

    :goto_0
    const-string v0, "withCountryCode"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "defaultCountryCode"

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_5
    :goto_2
    return-object v1
.end method

.method public static getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->queryPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lmiui/yellowpage/YellowPageUtils;->queryPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;
    .registers 10

    sget-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/yellowpage/YellowPageProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v3, Lmiui/yellowpage/YellowPageContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "pid"

    const-string v0, "icon_big"

    const-string v4, "name"

    const-string v5, "icon"

    filled-new-array {v4, v5, p0, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5

    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    array-length v4, v3

    invoke-static {v3, v0, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    if-nez v4, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    array-length v5, v4

    invoke-static {v4, v0, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    const/4 v4, 0x2

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Lmiui/yellowpage/YellowPageProvider;

    invoke-direct {v5, v4, v2, v3, v0}, Lmiui/yellowpage/YellowPageProvider;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    sget-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_5
    :goto_6
    sget-object p0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/yellowpage/YellowPageProvider;

    if-nez p0, :cond_6

    sget-object p0, Lmiui/yellowpage/YellowPageProvider;->DEFAULT_PROVIDER:Lmiui/yellowpage/YellowPageProvider;

    :cond_6
    return-object p0
.end method

.method public static getUserAreaCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    sget-object v1, Lmiui/yellowpage/YellowPageContract$UserArea;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "area_code"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    :goto_3
    return-object v6
.end method

.method public static informYellowpagePhoneEvent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "direction"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p7, "number"

    invoke-virtual {v0, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p7, "connected"

    invoke-virtual {v0, p7, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object p7, Lmiui/yellowpage/YellowPageContract$MipubPhoneEvent;->CONTENT_URI_MIPUB_PHONE_EVENT:Landroid/net/Uri;

    invoke-virtual {p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p7

    const-string p8, "extra_start_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p8, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "extra_end_time"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "extra_source"

    invoke-virtual {p1, p2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "extra_type"

    invoke-virtual {p1, p2, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "extra_data"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p0, p3}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p6, 0x0

    const/4 p7, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-virtual/range {p2 .. p7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    throw p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method private static insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "YellowPageUtils"

    const-string p1, "insert-The provider is not installed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static isCloudAntispamEnable(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cloud_antispam"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public static isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "YellowPageUtils"

    const-string p1, "The content provider is not installed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isFraudIncomingNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_FRAUD_VERIFY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simIndex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "incoming"

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "yid"

    invoke-virtual {v0, p1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_3
    :goto_1
    return p2
.end method

.method public static isFraudNumOnlineIdentificationEnabled(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "online_fraud_enable"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v3, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "number"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "number LIKE \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5

    :cond_2
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "106"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_5
    :goto_4
    return v1
.end method

.method public static isIvrMenuExist(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    sget-object v0, Lmiui/yellowpage/YellowPageContract$Ivr;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "exist"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_3
    :goto_1
    return v0
.end method

.method public static isNeverRemindSmartAntispamEnable(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "never_remind_user_enable_antispam"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isRemindIgnoredUserSuspectNumber(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "remind_user_suspect_number"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isYellowPageAvailable(Landroid/content/Context;)Z
    .registers 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    const-string v0, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public static isYellowPageEnable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isCloudAntispamEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static markAntiSpam(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "categoryId"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "delete"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object p1, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_MARK_NUMBER_URI:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2, p2}, Lmiui/yellowpage/YellowPageUtils;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static queryCloudExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bizName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "serialNumber"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "request.remote.express.info"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_1
    :goto_0
    return-void
.end method

.method public static queryExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2}, Lmiui/yellowpage/YellowPageUtils;->queryLocalExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lmiui/yellowpage/YellowPageUtils;->queryCloudExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static queryLocalExpressInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bizName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "serialNumber"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "request.local.express.info"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "res"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static queryPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p2, :cond_0

    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI_CLOUD:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v4}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_1

    return-object v9

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3, v2}, Lmiui/yellowpage/YellowPageUtils;->buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    :goto_4
    if-nez p2, :cond_8

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v13, "type<>4"

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_6

    :try_start_2
    invoke-static {v1, v3, v2}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_4
    :try_start_3
    invoke-static {v3}, Lmiui/yellowpage/YellowPageUtils;->antispamNumberNotInPresetFile(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v9

    :cond_5
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    :goto_7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PRESET_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    sget-object v12, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8

    :try_start_5
    invoke-static {v1, v3, v2}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_7
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    :goto_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8
    :goto_a
    return-object v9
.end method

.method private static update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "YellowPageUtils"

    const-string p1, "update-The provider is not installed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI_CLOUD:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lmiui/yellowpage/YellowPageUtils;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static updatePhoneInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "YellowPageUtils"

    const-string v1, "updatePhoneInfo updateCloud"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

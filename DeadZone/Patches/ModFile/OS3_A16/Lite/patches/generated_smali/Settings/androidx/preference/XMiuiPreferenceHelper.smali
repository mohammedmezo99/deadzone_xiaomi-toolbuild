# classes11.dex

.class public Landroidx/preference/XMiuiPreferenceHelper;
.super Ljava/lang/Object;
.source "XMiuiPreferenceHelper.java"


# static fields
.field public static final ANDROID_RESOURCE_TAG:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAttr:Landroid/util/AttributeSet;

.field private mContext:Landroid/content/Context;

.field public mIntent:Ljava/lang/String;

.field public mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mIntent:Ljava/lang/String;

    iput-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    invoke-direct {p0}, Landroidx/preference/XMiuiPreferenceHelper;->init()V

    return-void
.end method

.method public static getTAG(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .registers 2

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_14

    const-string v0, "key"

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeAndroidValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    const-string v0, "intent"

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mIntent:Ljava/lang/String;

    :cond_14
    return-void
.end method

.method static isValidateKey(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_5
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception v2

    :try_start_a
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v2

    :try_start_f
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_f .. :try_end_12} :catch_13

    :goto_12
    return v1

    :catch_13
    move-exception v2

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method


# virtual methods
.method getAttributeAndroidBool(Ljava/lang/String;Z)Z
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_b

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_c

    :cond_b
    move v0, p2

    :goto_c
    return v0
.end method

.method getAttributeAndroidInt(Ljava/lang/String;I)I
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_b

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_c

    :cond_b
    move v0, p2

    :goto_c
    return v0
.end method

.method getAttributeAndroidValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_b

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {v0, v1, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method getAttributeBool(Ljava/lang/String;Z)Z
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    return v0
.end method

.method getAttributeInt(Ljava/lang/String;I)I
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    return v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mAttr:Landroid/util/AttributeSet;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_a
    const-string v0, ""

    :goto_c
    return-object v0
.end method

.method getBool()Z
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method getBool(I)Z
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method getBool(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method getBool(Z)Z
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public getInt()I
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getStr()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    move-object p1, v0

    :cond_f
    return-object p1
.end method

.method public isValidateKey()Z
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_7
    iget-object v2, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_1a

    :catch_d
    move-exception v2

    :try_start_e
    iget-object v2, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_13
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v2

    :try_start_15
    iget-object v2, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_1a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_15 .. :try_end_1a} :catch_1b

    :goto_1a
    return v1

    :catch_1b
    move-exception v2

    iget-object v2, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method public putInt(I)V
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method putStr(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public sendIntent()V
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mIntent:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Landroidx/preference/XMiuiPreferenceHelper;->mIntent:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_16
    return-void
.end method

.method setInt(I)V
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiPreferenceHelper;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

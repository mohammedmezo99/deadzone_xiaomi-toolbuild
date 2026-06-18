.class public Lcom/justas/AnimationWeather/Weather;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MyKeyguardStateController$CallBack;
.implements Lcom/android/systemui/statusbar/policy/ControllerExpandHeight$CallBack;
.implements Landroid/preference/CustomUpdater$CustomReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/justas/AnimationWeather/Weather$QueryHandler;
    }
.end annotation


# static fields
.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field public final CONTENT_URI:Landroid/net/Uri;

.field private isOnKeyguard:Z

.field private mAnimation:I

.field private mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

.field private mDrop:Lcom/justas/AnimationWeather/DrippingDrops;

.field private mFog:Landroid/widget/ImageView;

.field private mLightnin:Lcom/justas/AnimationWeather/LightninAnimation;

.field private mMoon:Lcom/justas/AnimationWeather/MoonAnimation;

.field private mQueryHandler:Lcom/justas/AnimationWeather/Weather$QueryHandler;

.field private mRain:Lcom/justas/AnimationWeather/RainAnimation;

.field private mSnow:Lcom/justas/AnimationWeather/SnowAnimation;

.field private mSun:Lcom/justas/AnimationWeather/SunAnimation;

.field private mSunrise:Ljava/lang/String;

.field private mSunset:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private final mWeatherObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "weather_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sunset"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sunrise"

    aput-object v2, v0, v1

    sput-object v0, Lcom/justas/AnimationWeather/Weather;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "content://weather/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/justas/AnimationWeather/Weather;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/justas/AnimationWeather/Weather$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/justas/AnimationWeather/Weather$1;-><init>(Lcom/justas/AnimationWeather/Weather;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mWeatherObserver:Landroid/database/ContentObserver;

    const/16 v0, 0x63

    iput v0, p0, Lcom/justas/AnimationWeather/Weather;->mAnimation:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/justas/AnimationWeather/Weather$2;

    invoke-direct {v1, p0}, Lcom/justas/AnimationWeather/Weather$2;-><init>(Lcom/justas/AnimationWeather/Weather;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static DrawableToID(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/justas/AnimationWeather/Weather;)V
    .registers 1

    invoke-direct {p0}, Lcom/justas/AnimationWeather/Weather;->startQuery()V

    return-void
.end method

.method static synthetic access$300(Lcom/justas/AnimationWeather/Weather;Landroid/database/Cursor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/justas/AnimationWeather/Weather;->updateWeather(Landroid/database/Cursor;)V

    return-void
.end method

.method private closeAll()V
    .registers 3

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/justas/AnimationWeather/Weather;->setVisibility(I)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/CloudAnimation;->stopAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mRain:Lcom/justas/AnimationWeather/RainAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/RainAnimation;->stopAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mSnow:Lcom/justas/AnimationWeather/SnowAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/SnowAnimation;->stopAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mSun:Lcom/justas/AnimationWeather/SunAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/SunAnimation;->stopAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mMoon:Lcom/justas/AnimationWeather/MoonAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/MoonAnimation;->stopAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mLightnin:Lcom/justas/AnimationWeather/LightninAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/LightninAnimation;->stopAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mFog:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mDrop:Lcom/justas/AnimationWeather/DrippingDrops;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/DrippingDrops;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public static convertDpToPx(Landroid/content/Context;I)I
    .registers 4

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isNight()Z
    .registers 8

    const/16 v6, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/justas/AnimationWeather/Weather;->mSunrise:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/justas/AnimationWeather/Weather;->mSunset:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/justas/AnimationWeather/Weather;->mSunrise:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    const-wide/32 v4, 0x5265c00

    rem-long/2addr v0, v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/justas/AnimationWeather/Weather;->mSunset:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/justas/AnimationWeather/Weather;->mSunrise:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    return v2

    :catch_0
    move-exception v4

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x12

    if-gt v4, v5, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method private registerObserver()V
    .registers 5

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mQueryHandler:Lcom/justas/AnimationWeather/Weather$QueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/justas/AnimationWeather/Weather$QueryHandler;

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/justas/AnimationWeather/Weather$QueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/justas/AnimationWeather/Weather$1;)V

    iput-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mQueryHandler:Lcom/justas/AnimationWeather/Weather$QueryHandler;

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/justas/AnimationWeather/Weather;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/justas/AnimationWeather/Weather;->mWeatherObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mQueryHandler:Lcom/justas/AnimationWeather/Weather$QueryHandler;

    invoke-static {v0, p0}, Lcom/justas/AnimationWeather/Weather$QueryHandler;->access$102(Lcom/justas/AnimationWeather/Weather$QueryHandler;Lcom/justas/AnimationWeather/Weather;)Lcom/justas/AnimationWeather/Weather;

    :cond_0
    return-void
.end method

.method private startQuery()V
    .registers 9

    const/16 v1, 0x64

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mQueryHandler:Lcom/justas/AnimationWeather/Weather$QueryHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mQueryHandler:Lcom/justas/AnimationWeather/Weather$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/justas/AnimationWeather/Weather$QueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mQueryHandler:Lcom/justas/AnimationWeather/Weather$QueryHandler;

    iget-object v3, p0, Lcom/justas/AnimationWeather/Weather;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/justas/AnimationWeather/Weather;->sProjection:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/justas/AnimationWeather/Weather$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private unregisterObserver()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mQueryHandler:Lcom/justas/AnimationWeather/Weather$QueryHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mQueryHandler:Lcom/justas/AnimationWeather/Weather$QueryHandler;

    invoke-static {v0, v1}, Lcom/justas/AnimationWeather/Weather$QueryHandler;->access$102(Lcom/justas/AnimationWeather/Weather$QueryHandler;Lcom/justas/AnimationWeather/Weather;)Lcom/justas/AnimationWeather/Weather;

    iput-object v1, p0, Lcom/justas/AnimationWeather/Weather;->mQueryHandler:Lcom/justas/AnimationWeather/Weather$QueryHandler;

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/justas/AnimationWeather/Weather;->mWeatherObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private updateRegister()V
    .registers 4

    const-string v1, "weather_anim_enable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/preference/SettingsEliteHelper;->getBoolofSettings(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/justas/AnimationWeather/Weather;->registerObserver()V

    invoke-direct {p0}, Lcom/justas/AnimationWeather/Weather;->startQuery()V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/justas/AnimationWeather/Weather;->updateVisiblity(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/justas/AnimationWeather/Weather;->unregisterObserver()V

    goto :goto_0
.end method

.method private updateWeather(Landroid/database/Cursor;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "weather_type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/justas/AnimationWeather/Weather;->mAnimation:I

    const-string v3, "sunset"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/justas/AnimationWeather/Weather;->mSunset:Ljava/lang/String;

    :cond_0
    const-string v3, "sunrise"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/justas/AnimationWeather/Weather;->mSunrise:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    goto :goto_6

    nop

    :goto_0
    invoke-static {}, Landroid/preference/CustomUpdater;->getInstance()Landroid/preference/CustomUpdater;

    move-result-object v0

    goto :goto_1

    nop

    :goto_1
    const-string v1, "weather_anim_enable"

    goto :goto_7

    nop

    :goto_2
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;->addCallBack(Lcom/android/systemui/statusbar/policy/ControllerExpandHeight$CallBack;)V

    goto :goto_5

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MyKeyguardStateController;->addCallBack(Lcom/android/systemui/statusbar/policy/MyKeyguardStateController$CallBack;)V

    goto :goto_8

    nop

    :goto_4
    invoke-direct {p0}, Lcom/justas/AnimationWeather/Weather;->updateRegister()V

    goto :goto_9

    nop

    :goto_5
    return-void

    :goto_6
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    goto :goto_0

    nop

    :goto_7
    invoke-virtual {v0, p0, v1}, Landroid/preference/CustomUpdater;->addCustomReceiver(Landroid/preference/CustomUpdater$CustomReceiver;Ljava/lang/String;)V

    goto :goto_4

    nop

    :goto_8
    invoke-static {}, Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;->getInstance()Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;

    move-result-object v0

    goto :goto_2

    nop

    :goto_9
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MyKeyguardStateController;->getInstance()Lcom/android/systemui/statusbar/policy/MyKeyguardStateController;

    move-result-object v0

    goto :goto_3

    nop
.end method

.method public onControlHeightChange(Z)V
    .registers 2

    return-void
.end method

.method public onCustomChanged(Ljava/lang/String;)V
    .registers 3

    const-string v0, "weather_anim_enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/justas/AnimationWeather/Weather;->updateRegister()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    goto :goto_8

    nop

    :goto_0
    invoke-direct {p0}, Lcom/justas/AnimationWeather/Weather;->unregisterObserver()V

    goto :goto_1

    nop

    :goto_1
    invoke-static {}, Landroid/preference/CustomUpdater;->getInstance()Landroid/preference/CustomUpdater;

    move-result-object v0

    goto :goto_3

    nop

    :goto_2
    invoke-static {}, Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;->getInstance()Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;

    move-result-object v0

    goto :goto_6

    nop

    :goto_3
    const-string v1, "weather_anim_enable"

    goto :goto_9

    nop

    :goto_4
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MyKeyguardStateController;->removeCallBack(Lcom/android/systemui/statusbar/policy/MyKeyguardStateController$CallBack;)V

    goto :goto_2

    nop

    :goto_5
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MyKeyguardStateController;->getInstance()Lcom/android/systemui/statusbar/policy/MyKeyguardStateController;

    move-result-object v0

    goto :goto_4

    nop

    :goto_6
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/ControllerExpandHeight;->removeCallBack(Lcom/android/systemui/statusbar/policy/ControllerExpandHeight$CallBack;)V

    goto :goto_7

    nop

    :goto_7
    return-void

    :goto_8
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    goto :goto_0

    nop

    :goto_9
    invoke-virtual {v0, p0, v1}, Landroid/preference/CustomUpdater;->removeCustomReceiver(Landroid/preference/CustomUpdater$CustomReceiver;Ljava/lang/String;)V

    goto :goto_5

    nop
.end method

.method public onExpandHeightChange(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/justas/AnimationWeather/Weather;->isOnKeyguard:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/justas/AnimationWeather/Weather;->updateVisiblity(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .registers 5

    goto :goto_17

    nop

    :goto_0
    check-cast v2, Lcom/justas/AnimationWeather/DrippingDrops;

    goto :goto_1d

    nop

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1c

    nop

    :goto_2
    invoke-virtual {p0, v2}, Lcom/justas/AnimationWeather/Weather;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_d

    nop

    :goto_3
    invoke-virtual {p0, v2}, Lcom/justas/AnimationWeather/Weather;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_21

    nop

    :goto_4
    return-void

    :goto_5
    const-string v2, "fog"

    goto :goto_1f

    nop

    :goto_6
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_24

    nop

    :goto_7
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    nop

    :goto_8
    invoke-virtual {p0, v2}, Lcom/justas/AnimationWeather/Weather;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_23

    nop

    :goto_9
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1e

    nop

    :goto_a
    const-string v3, "id"

    goto :goto_1

    nop

    :goto_b
    const-string v2, "drop_anim"

    goto :goto_16

    nop

    :goto_c
    const-string v2, "snow_anim"

    goto :goto_10

    nop

    :goto_d
    check-cast v2, Lcom/justas/AnimationWeather/RainAnimation;

    goto :goto_27

    nop

    :goto_e
    iput-object v2, p0, Lcom/justas/AnimationWeather/Weather;->mSnow:Lcom/justas/AnimationWeather/SnowAnimation;

    goto :goto_12

    nop

    :goto_f
    invoke-virtual {p0, v2}, Lcom/justas/AnimationWeather/Weather;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_34

    nop

    :goto_10
    const-string v3, "id"

    goto :goto_9

    nop

    :goto_11
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_8

    nop

    :goto_12
    const-string v2, "lightnin_anim"

    goto :goto_a

    nop

    :goto_13
    iput-object v2, p0, Lcom/justas/AnimationWeather/Weather;->mFog:Landroid/widget/ImageView;

    goto :goto_15

    nop

    :goto_14
    const-string v2, "sun_anim"

    goto :goto_31

    nop

    :goto_15
    const-string v2, "moon_anim"

    goto :goto_2b

    nop

    :goto_16
    const-string v3, "id"

    goto :goto_2e

    nop

    :goto_17
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    goto :goto_20

    nop

    :goto_18
    check-cast v2, Lcom/justas/AnimationWeather/CloudAnimation;

    goto :goto_2a

    nop

    :goto_19
    iput-object v2, p0, Lcom/justas/AnimationWeather/Weather;->mSun:Lcom/justas/AnimationWeather/SunAnimation;

    goto :goto_22

    nop

    :goto_1a
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    nop

    :goto_1b
    iput-object v2, p0, Lcom/justas/AnimationWeather/Weather;->mLightnin:Lcom/justas/AnimationWeather/LightninAnimation;

    goto :goto_b

    nop

    :goto_1c
    invoke-virtual {p0, v2}, Lcom/justas/AnimationWeather/Weather;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2f

    nop

    :goto_1d
    iput-object v2, p0, Lcom/justas/AnimationWeather/Weather;->mDrop:Lcom/justas/AnimationWeather/DrippingDrops;

    goto :goto_4

    nop

    :goto_1e
    invoke-virtual {p0, v2}, Lcom/justas/AnimationWeather/Weather;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_33

    nop

    :goto_1f
    const-string v3, "id"

    goto :goto_26

    nop

    :goto_20
    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1a

    nop

    :goto_21
    check-cast v2, Lcom/justas/AnimationWeather/SunAnimation;

    goto :goto_19

    nop

    :goto_22
    const-string v2, "cloud_anim"

    goto :goto_29

    nop

    :goto_23
    check-cast v2, Lcom/justas/AnimationWeather/MoonAnimation;

    goto :goto_30

    nop

    :goto_24
    invoke-virtual {p0, v2}, Lcom/justas/AnimationWeather/Weather;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_18

    nop

    :goto_25
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    nop

    :goto_26
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_f

    nop

    :goto_27
    iput-object v2, p0, Lcom/justas/AnimationWeather/Weather;->mRain:Lcom/justas/AnimationWeather/RainAnimation;

    goto :goto_c

    nop

    :goto_28
    const-string v2, "rain_anim"

    goto :goto_2d

    nop

    :goto_29
    const-string v3, "id"

    goto :goto_6

    nop

    :goto_2a
    iput-object v2, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    goto :goto_28

    nop

    :goto_2b
    const-string v3, "id"

    goto :goto_11

    nop

    :goto_2c
    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_5

    nop

    :goto_2d
    const-string v3, "id"

    goto :goto_7

    nop

    :goto_2e
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_32

    nop

    :goto_2f
    check-cast v2, Lcom/justas/AnimationWeather/LightninAnimation;

    goto :goto_1b

    nop

    :goto_30
    iput-object v2, p0, Lcom/justas/AnimationWeather/Weather;->mMoon:Lcom/justas/AnimationWeather/MoonAnimation;

    goto :goto_14

    nop

    :goto_31
    const-string v3, "id"

    goto :goto_25

    nop

    :goto_32
    invoke-virtual {p0, v2}, Lcom/justas/AnimationWeather/Weather;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    nop

    :goto_33
    check-cast v2, Lcom/justas/AnimationWeather/SnowAnimation;

    goto :goto_e

    nop

    :goto_34
    check-cast v2, Landroid/widget/ImageView;

    goto :goto_13

    nop
.end method

.method public onKeyguardStateChange(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/justas/AnimationWeather/Weather;->isOnKeyguard:Z

    invoke-virtual {p0, p1}, Lcom/justas/AnimationWeather/Weather;->updateVisiblity(Z)V

    return-void
.end method

.method public onScreenOnStateChange(Z)V
    .registers 2

    return-void
.end method

.method public updateVisiblity(Z)V
    .registers 12

    const/4 v9, -0x1

    const/16 v8, 0x1770

    const v5, -0xffff01

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    const-string v0, "weather_anim_enable"

    invoke-static {v0, v6}, Landroid/preference/SettingsEliteHelper;->getBoolofSettings(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v6}, Lcom/justas/AnimationWeather/Weather;->setVisibility(I)V

    iget v0, p0, Lcom/justas/AnimationWeather/Weather;->mAnimation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0  #0x12, 0x13, 0x14, 0x15, 0x16, 0x17
    return-void

    :pswitch_1  #0x0
    invoke-direct {p0}, Lcom/justas/AnimationWeather/Weather;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mMoon:Lcom/justas/AnimationWeather/MoonAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/MoonAnimation;->startAnimation()V

    :goto_1
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    invoke-virtual {v0, v7}, Lcom/justas/AnimationWeather/CloudAnimation;->startAnimation(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mSun:Lcom/justas/AnimationWeather/SunAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/SunAnimation;->startAnimation()V

    goto :goto_1

    :pswitch_2  #0x1
    invoke-direct {p0}, Lcom/justas/AnimationWeather/Weather;->isNight()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mMoon:Lcom/justas/AnimationWeather/MoonAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/MoonAnimation;->startAnimation()V

    :goto_2
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    invoke-virtual {v0, v6}, Lcom/justas/AnimationWeather/CloudAnimation;->startAnimation(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mSun:Lcom/justas/AnimationWeather/SunAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/SunAnimation;->startAnimation()V

    goto :goto_2

    :pswitch_3  #0x2
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    invoke-virtual {v0, v6}, Lcom/justas/AnimationWeather/CloudAnimation;->startAnimation(I)V

    goto :goto_0

    :pswitch_4  #0x3, 0x18
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mFog:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_5  #0x7
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mDrop:Lcom/justas/AnimationWeather/DrippingDrops;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/DrippingDrops;->startDropAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    invoke-virtual {v0, v6}, Lcom/justas/AnimationWeather/CloudAnimation;->startAnimation(I)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mRain:Lcom/justas/AnimationWeather/RainAnimation;

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "rain_water_2"

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8, v1, v5, v6}, Lcom/justas/AnimationWeather/RainAnimation;->startAnimation(IIII)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mLightnin:Lcom/justas/AnimationWeather/LightninAnimation;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/LightninAnimation;->startLightnin()V

    goto :goto_0

    :pswitch_6  #0x4, 0x5, 0x6, 0x8, 0x9, 0xa
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mDrop:Lcom/justas/AnimationWeather/DrippingDrops;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/DrippingDrops;->startDropAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    invoke-virtual {v0, v6}, Lcom/justas/AnimationWeather/CloudAnimation;->startAnimation(I)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mRain:Lcom/justas/AnimationWeather/RainAnimation;

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "rain_water_2"

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8, v1, v5, v6}, Lcom/justas/AnimationWeather/RainAnimation;->startAnimation(IIII)V

    goto :goto_0

    :pswitch_7  #0xb
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mDrop:Lcom/justas/AnimationWeather/DrippingDrops;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/DrippingDrops;->startDropAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    invoke-virtual {v0, v6}, Lcom/justas/AnimationWeather/CloudAnimation;->startAnimation(I)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mRain:Lcom/justas/AnimationWeather/RainAnimation;

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "rain_water_2"

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8, v1, v5, v7}, Lcom/justas/AnimationWeather/RainAnimation;->startAnimation(IIII)V

    goto :goto_0

    :pswitch_8  #0xc
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mDrop:Lcom/justas/AnimationWeather/DrippingDrops;

    invoke-virtual {v0}, Lcom/justas/AnimationWeather/DrippingDrops;->startDropAnimation()V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    invoke-virtual {v0, v6}, Lcom/justas/AnimationWeather/CloudAnimation;->startAnimation(I)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mRain:Lcom/justas/AnimationWeather/RainAnimation;

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "rain_water_2"

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8, v1, v5, v7}, Lcom/justas/AnimationWeather/RainAnimation;->startAnimation(IIII)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mSnow:Lcom/justas/AnimationWeather/SnowAnimation;

    const/16 v1, 0x3a98

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "snowflake"

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v9, v7}, Lcom/justas/AnimationWeather/SnowAnimation;->startAnimation(IIII)V

    goto :goto_0

    :pswitch_9  #0xd, 0xe, 0xf
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    invoke-virtual {v0, v6}, Lcom/justas/AnimationWeather/CloudAnimation;->startAnimation(I)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mSnow:Lcom/justas/AnimationWeather/SnowAnimation;

    const/16 v1, 0x3a98

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "snowflake"

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v9, v6}, Lcom/justas/AnimationWeather/SnowAnimation;->startAnimation(IIII)V

    goto :goto_0

    :pswitch_a  #0x10, 0x11
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mCloud:Lcom/justas/AnimationWeather/CloudAnimation;

    invoke-virtual {v0, v6}, Lcom/justas/AnimationWeather/CloudAnimation;->startAnimation(I)V

    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather;->mSnow:Lcom/justas/AnimationWeather/SnowAnimation;

    const/16 v1, 0x3a98

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "snowflake"

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/justas/AnimationWeather/Weather;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v9, v7}, Lcom/justas/AnimationWeather/SnowAnimation;->startAnimation(IIII)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/justas/AnimationWeather/Weather;->closeAll()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_2  #00000001
        :pswitch_3  #00000002
        :pswitch_4  #00000003
        :pswitch_6  #00000004
        :pswitch_6  #00000005
        :pswitch_6  #00000006
        :pswitch_5  #00000007
        :pswitch_6  #00000008
        :pswitch_6  #00000009
        :pswitch_6  #0000000a
        :pswitch_7  #0000000b
        :pswitch_8  #0000000c
        :pswitch_9  #0000000d
        :pswitch_9  #0000000e
        :pswitch_9  #0000000f
        :pswitch_a  #00000010
        :pswitch_a  #00000011
        :pswitch_0  #00000012
        :pswitch_0  #00000013
        :pswitch_0  #00000014
        :pswitch_0  #00000015
        :pswitch_0  #00000016
        :pswitch_0  #00000017
        :pswitch_4  #00000018
    .end packed-switch
.end method

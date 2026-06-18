.class public Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;
.super Lcom/android/systemui/statusbar/views/MiuiClock;


# instance fields
.field private final controller:Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

.field private final currData:Lcom/android/systemui/newstatusbar/data/TextData;

.field private final formats:[Ljava/lang/String;

.field private isAttach:Z

.field private mColorSet:I

.field private mCurrentTime:Lmiuix/pickerwidget/date/Calendar;

.field private mDateFormat:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/views/MiuiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "EEEE d MMMM"

    const-string v1, "d MMMM"

    const-string v2, "EE d"

    const-string v3, "d"

    const-string v4, "d MMMM"

    const-string v5, "d MM yyyy"

    const-string v6, "d MM yy"

    const-string v7, "MM yy"

    const-string v8, "EEEE"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->formats:[Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView$1;-><init>(Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;)V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/newstatusbar/data/TextData;

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Notif_date"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/newstatusbar/data/TextData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/data/TextData;->addKeys([Ljava/lang/String;)Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    const-string v1, "Notif_date_format"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/data/Data;->addKeys([Ljava/lang/String;)Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView$2;-><init>(Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/data/Data;->addListener(Lcom/android/systemui/newstatusbar/data/Data$OnDataChangeListener;)Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/Data;->update()Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/data/TextData;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->currData:Lcom/android/systemui/newstatusbar/data/TextData;

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->updateDateFormat()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->updateDate()V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->controller:Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/views/MiuiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "EE d MMMM"

    const-string v1, "d MMMM"

    const-string v2, "EE d"

    const-string v3, "d"

    const-string v4, "d MMMM"

    const-string v5, "d MM yyyy"

    const-string v6, "d MM yy"

    const-string v7, "MM yy"

    const-string v8, "EEEE"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->formats:[Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView$1;-><init>(Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;)V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/newstatusbar/data/TextData;

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Notif_date"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/newstatusbar/data/TextData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/data/TextData;->addKeys([Ljava/lang/String;)Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    const-string v1, "Notif_date_format"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/data/Data;->addKeys([Ljava/lang/String;)Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView$2;-><init>(Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/data/Data;->addListener(Lcom/android/systemui/newstatusbar/data/Data$OnDataChangeListener;)Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/Data;->update()Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/data/TextData;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->currData:Lcom/android/systemui/newstatusbar/data/TextData;

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->updateDateFormat()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->updateDate()V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->controller:Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->updateDateFormat()V

    return-void
.end method

.method private getTypeFace(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getTypeFase : fonts not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private resetClip()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method private setTime()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mCurrentTime:Lmiuix/pickerwidget/date/Calendar;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mCurrentTime:Lmiuix/pickerwidget/date/Calendar;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mCurrentTime:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setTimeZone"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/TimeZone;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mCurrentTime:Lmiuix/pickerwidget/date/Calendar;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mCurrentTime:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setTimeInMillis"

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mCurrentTime:Lmiuix/pickerwidget/date/Calendar;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private updateDateFormat()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->formats:[Ljava/lang/String;

    const-string v1, "Notif_date_format"

    invoke-static {v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mDateFormat:Ljava/lang/String;

    return-void
.end method

.method private updateDefault()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getCurrentTextColor()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->defColor:I

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getTextSize()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->defSize:F

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->defTypefase:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method private updateTyperface()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/TextData;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    invoke-super {p0, v1, v2}, Lcom/android/systemui/statusbar/views/MiuiClock;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v2, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    return-void
.end method


# virtual methods
.method protected getData()Lcom/android/systemui/newstatusbar/data/TextData;
    .registers 2

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->currData:Lcom/android/systemui/newstatusbar/data/TextData;

    goto :goto_1

    nop

    :goto_1
    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 7

    invoke-super {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->isAttach:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->isAttach:Z

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->updateDefault()V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "my.settings.intent.DATE_FORMAT_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-class v4, Landroid/os/UserHandle;

    const-string v5, "ALL"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    nop

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/SysDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0, v3, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->update()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->updateDate()V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->resetClip()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/views/MiuiClock;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/SysDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    goto :goto_21

    nop

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    goto :goto_3

    nop

    :goto_2
    if-eqz v2, :cond_0

    goto :goto_2d

    :cond_0
    goto :goto_1b

    nop

    :goto_3
    iget v2, v0, Lcom/android/systemui/newstatusbar/data/TextData;->color:I

    goto :goto_2

    nop

    :goto_4
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiClock;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_c

    nop

    :goto_5
    const/high16 v3, 0x40000000

    goto :goto_29

    nop

    :goto_6
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    :goto_7
    goto :goto_15

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getHeight()I

    move-result v2

    goto :goto_2f

    nop

    :goto_9
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    goto :goto_1c

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    goto :goto_6

    nop

    :goto_b
    add-float/2addr v3, v4

    goto :goto_1e

    nop

    :goto_c
    return-void

    :goto_d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2a

    nop

    :goto_e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2e

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_d

    nop

    :goto_10
    if-gt v4, v5, :cond_1

    goto :goto_13

    :cond_1
    goto :goto_28

    nop

    :goto_11
    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    nop

    :goto_12
    goto :goto_24

    :goto_13
    goto :goto_23

    nop

    :goto_14
    int-to-float v1, v1

    goto :goto_16

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    goto :goto_1

    nop

    :goto_16
    const/high16 v2, 0x41200000

    goto :goto_1f

    nop

    :goto_17
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    goto :goto_b

    nop

    :goto_18
    iget v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->division:I

    goto :goto_14

    nop

    :goto_19
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/TextData;->getColor()I

    move-result v2

    :goto_1a
    goto :goto_25

    nop

    :goto_1b
    iget v2, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mColorSet:I

    goto :goto_2c

    nop

    :goto_1c
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    goto :goto_22

    nop

    :goto_1d
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    goto :goto_11

    nop

    :goto_1e
    div-float/2addr v3, v1

    goto :goto_26

    nop

    :goto_1f
    div-float/2addr v1, v2

    goto :goto_8

    nop

    :goto_20
    const/4 v4, 0x0

    goto :goto_1d

    nop

    :goto_21
    if-eqz v0, :cond_2

    goto :goto_7

    :cond_2
    goto :goto_a

    nop

    :goto_22
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    goto :goto_17

    nop

    :goto_23
    const-string v4, ""

    :goto_24
    goto :goto_e

    nop

    :goto_25
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_18

    nop

    :goto_26
    sub-float/2addr v2, v3

    goto :goto_2b

    nop

    :goto_27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_f

    nop

    :goto_28
    const-string v4, " "

    goto :goto_12

    nop

    :goto_29
    div-float/2addr v2, v3

    goto :goto_9

    nop

    :goto_2a
    iget v4, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    goto :goto_30

    nop

    :goto_2b
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_27

    nop

    :goto_2c
    goto :goto_1a

    :goto_2d
    goto :goto_19

    nop

    :goto_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    nop

    :goto_2f
    int-to-float v2, v2

    goto :goto_5

    nop

    :goto_30
    const/4 v5, 0x1

    goto :goto_10

    nop
.end method

.method protected onMeasure(II)V
    .registers 8

    goto :goto_22

    nop

    :goto_0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1d

    nop

    :goto_1
    goto :goto_5

    :goto_2
    goto :goto_4

    nop

    :goto_3
    const-string v3, " "

    goto :goto_8

    nop

    :goto_4
    const/4 v2, 0x0

    :goto_5
    goto :goto_20

    nop

    :goto_6
    iget-boolean v2, v0, Lcom/android/systemui/newstatusbar/data/TextData;->shadow_enable:Z

    goto :goto_d

    nop

    :goto_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    nop

    :goto_8
    goto :goto_b

    :goto_9
    goto :goto_a

    nop

    :goto_a
    const-string v3, ""

    :goto_b
    goto :goto_c

    nop

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_7

    nop

    :goto_d
    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    goto :goto_1a

    nop

    :goto_e
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->setMeasuredDimension(II)V

    goto :goto_12

    nop

    :goto_f
    iget v3, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    goto :goto_14

    nop

    :goto_10
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    goto :goto_11

    nop

    :goto_11
    if-eqz v1, :cond_1

    goto :goto_18

    :cond_1
    goto :goto_1b

    nop

    :goto_12
    return-void

    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :goto_14
    const/4 v4, 0x1

    goto :goto_16

    nop

    :goto_15
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    goto :goto_6

    nop

    :goto_16
    if-gt v3, v4, :cond_2

    goto :goto_9

    :cond_2
    goto :goto_3

    nop

    :goto_17
    iput-object v1, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    :goto_18
    goto :goto_1e

    nop

    :goto_19
    float-to-int v1, v1

    goto :goto_21

    nop

    :goto_1a
    sget v2, Lcom/android/systemui/newstatusbar/data/TextData;->ShadowRadius:F

    goto :goto_1

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    goto :goto_17

    nop

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_f

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1c

    nop

    :goto_1e
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->paint:Landroid/graphics/Paint;

    goto :goto_13

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    goto :goto_10

    nop

    :goto_20
    add-float/2addr v1, v2

    goto :goto_19

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getMeasuredHeight()I

    move-result v2

    goto :goto_e

    nop

    :goto_22
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/views/MiuiClock;->onMeasure(II)V

    goto :goto_1f

    nop
.end method

.method public setAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->controller:Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;->onAlphaChange(F)V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->setTextSize(F)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 3

    return-void
.end method

.method public setTextAppearance(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setTextAppearance(I)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->updateDefault()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->update()V

    return-void
.end method

.method public setTextColor()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/views/MiuiClock;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/views/MiuiClock;->setTextColor(I)V

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mColorSet:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->setTextColor()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/views/MiuiClock;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mColorSet:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->setTextColor()V

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/TextData;->getSize()F

    move-result v0

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/views/MiuiClock;->setTextSize(F)V

    return-void
.end method

.method public setTextSize(IF)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/TextData;->getSize()F

    move-result v0

    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Lcom/android/systemui/statusbar/views/MiuiClock;->setTextSize(IF)V

    return-void
.end method

.method public setTransitionAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setTransitionAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->controller:Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;->onAlphaChange(F)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 2

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 3

    return-void
.end method

.method public update()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->setTextColor()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->setTextSize(F)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->updateTyperface()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->invalidate()V

    return-void
.end method

.method public updateDate()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mDateFormat:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->formats:[Ljava/lang/String;

    const-string v1, "Notif_date_format"

    invoke-static {v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mDateFormat:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->setTime()V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mCurrentTime:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/NotificationHeaderDateView;->mLastText:Ljava/lang/String;

    :cond_1
    return-void
.end method

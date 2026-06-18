.class public Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;
.super Landroidx/appcompat/widget/AppCompatImageView;


# static fields
.field public static synthetic $r8$clinit:I


# instance fields
.field public batteryChargingColor:I

.field public batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

.field public batteryLevelTranX:I

.field public batteryLevelTransDark:I

.field public batteryLevelTransWhite:I

.field public batteryLevelWhite:I

.field public batteryLowColor:I

.field public batteryPerformanceModeColor:I

.field public batteryPowerSaveColor:I

.field public batteryWidth:I

.field public charging:Z

.field public cornerRadiusTranX:F

.field public cornerRadiusTranY:F

.field public dark:I

.field public darkIntensity:F

.field public firstBackground:Landroid/graphics/drawable/Drawable;

.field public firstBackgroundDrawables:Landroid/util/ArrayMap;

.field public firstBitmap:Landroid/graphics/Bitmap;

.field public firstCanvas:Landroid/graphics/Canvas;

.field public firstDrawableBitmap:Landroid/graphics/Bitmap;

.field public firstDrawableCanvas:Landroid/graphics/Canvas;

.field public firstPaint:Landroid/graphics/Paint;

.field public hollowTextPaint:Landroid/graphics/Paint;

.field public level:I

.field public low:Z

.field public miuiOptimizationEnabled:Z

.field public onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView$onLayoutChangeListener$1;

.field public performanceMode:Z

.field public powerSave:Z

.field public progressGravityStart:Z

.field public progressOrientationPortrait:Z

.field public quickCharging:Z

.field public radiusDrawable:Landroid/graphics/drawable/Drawable;

.field public radiusDrawableBitmap:Landroid/graphics/Bitmap;

.field public radiusDrawableCanvas:Landroid/graphics/Canvas;

.field public secondBackground:Landroid/graphics/drawable/Drawable;

.field public secondBackgroundDrawables:Landroid/util/ArrayMap;

.field public secondBitmap:Landroid/graphics/Bitmap;

.field public secondCanvas:Landroid/graphics/Canvas;

.field public secondDrawableBitmap:Landroid/graphics/Bitmap;

.field public secondDrawableCanvas:Landroid/graphics/Canvas;

.field public secondPaint:Landroid/graphics/Paint;

.field public textPaint:Landroid/graphics/Paint;

.field public thirdBackground:Landroid/graphics/drawable/Drawable;

.field public thirdBackgroundDrawables:Landroid/util/ArrayMap;

.field public tintAreas:Ljava/util/ArrayList;

.field public tintColor:I

.field public useLegacyDrawable:Z

.field public useTint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintAreas:Ljava/util/ArrayList;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackgroundDrawables:Landroid/util/ArrayMap;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackgroundDrawables:Landroid/util/ArrayMap;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackgroundDrawables:Landroid/util/ArrayMap;

    new-instance p2, Lcom/miui/systemui/statusbar/BatteryIcon;

    invoke-direct {p2, p1}, Lcom/miui/systemui/statusbar/BatteryIcon;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->hollowTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView$onLayoutChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView$onLayoutChangeListener$1;-><init>(Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView$onLayoutChangeListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getBatteryLevelColor()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->low:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->powerSave:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->charging:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->quickCharging:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->dark:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelTransWhite:I

    return p0

    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelTransDark:I

    return p0

    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelWhite:I

    return p0
.end method

.method private getBatterySecondTintColor()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->miuiOptimizationEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintAreas:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintColor:I

    invoke-static {v0, p0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getSecondBgStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintAreas:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintColor:I

    invoke-static {v0, p0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryPerformanceModeColor:I

    return p0

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryPowerSaveColor:I

    return p0

    :cond_3
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryChargingColor:I

    return p0

    :cond_4
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLowColor:I

    return p0
.end method

.method private getFirstBackgroundTintDrawable()I
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080fb1

    return p0

    :cond_0
    const p0, 0x7f080fab

    return p0
.end method

.method private getFirstBgStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->dark:I

    if-ne p0, v1, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->dark:I

    if-ne p0, v1, :cond_2

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0
.end method

.method private getRealCornerRadiusTranX()I
    .registers 6

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->cornerRadiusTranX:F

    const/4 v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    int-to-float v3, v2

    const/16 v4, 0x64

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->progressOrientationPortrait:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->progressGravityStart:Z

    if-nez p0, :cond_1

    neg-int v0, v0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    mul-int/lit8 v0, v0, 0x2

    :cond_2
    return v0
.end method

.method private getRealCornerRadiusTranY()I
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->progressOrientationPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->cornerRadiusTranY:F

    const/4 v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    int-to-float v2, v2

    const/16 v3, 0x64

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    if-nez p0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method private getSecondBackgroundTintDrawable()I
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080fbb

    return p0

    :cond_0
    const p0, 0x7f080fb6

    return p0
.end method

.method private getSecondBgStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->quickCharging:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->charging:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->powerSave:Z

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->POWER_SAVE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    if-eqz v0, :cond_2

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->low:Z

    if-eqz v0, :cond_3

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->LOW:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_3
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->dark:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_5
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_CHARGE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_6
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->CHARGING:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0
.end method

.method private getThirdBackgroundTintDrawables()I
    .registers 1

    const p0, 0x7f080fb0

    return p0
.end method

.method private getThirdBgStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;
    .registers 2

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->dark:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView$onLayoutChangeListener$1;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView$onLayoutChangeListener$1;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelTranX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    div-float/2addr v4, v0

    iget v0, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->useLegacyDrawable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v0, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v0, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->charging:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->quickCharging:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->powerSave:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->hollowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateResources()V

    return-void
.end method

.method public radiusDrawableToBitmap(Landroid/graphics/drawable/Drawable;II)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableCanvas:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableCanvas:Landroid/graphics/Canvas;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public secondDrawableToBitmap(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableCanvas:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableCanvas:Landroid/graphics/Canvas;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public setMiuiOptimizationEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->miuiOptimizationEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->miuiOptimizationEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateBatteryDrawable()V

    :cond_0
    return-void
.end method

.method public setUseLegacyDrawable(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->useLegacyDrawable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->useLegacyDrawable:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateResources()V

    :cond_0
    return-void
.end method

.method public updateBatteryDrawable()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->useTint:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintAreas:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintColor:I

    invoke-static {v2, p0, v3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getBatterySecondTintColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintAreas:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintColor:I

    invoke-static {v2, p0, v3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->textPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintAreas:Ljava/util/ArrayList;

    invoke-static {v2, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/Collection;Landroid/view/View;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->low:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->powerSave:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->charging:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->quickCharging:Z

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->darkIntensity:F

    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelTransDark:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelTransWhite:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelTransDark:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_8
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelWhite:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getFirstBgStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getSecondBgStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getThirdBgStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->textPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getBatteryLevelColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateFirstBitmap()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateSecondBitmap()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->useLegacyDrawable:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->textPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintAreas:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintColor:I

    invoke-static {v1, p0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->dark:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_c

    move v0, v3

    goto :goto_3

    :cond_c
    move v0, v2

    :goto_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->charging:Z

    const/16 v4, 0xa

    const/4 v5, -0x1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mChargeDigitDarkLevel:I

    if-eq v2, v5, :cond_d

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_d

    if-gez v2, :cond_e

    :cond_d
    const v2, 0x7f13005f

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mChargeDigitDarkLevel:I

    :cond_e
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mChargeDigitLevel:I

    if-eq v2, v5, :cond_10

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_10

    if-gez v2, :cond_11

    :cond_10
    const v2, 0x7f13005e

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicChargeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mChargeDigitLevel:I

    :cond_11
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicChargeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_4

    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    if-eqz v1, :cond_18

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPerformanceModeDigitDarkLevel:I

    if-eq v2, v5, :cond_13

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_13

    if-gez v2, :cond_14

    :cond_13
    const v2, 0x7f130066

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPerformanceModeDigitDarkLevel:I

    :cond_14
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_4

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPerformanceModeDigitLevel:I

    if-eq v2, v5, :cond_16

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_16

    if-gez v2, :cond_17

    :cond_16
    const v2, 0x7f130065

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPerformanceModeDigitLevel:I

    :cond_17
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_4

    :cond_18
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->powerSave:Z

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPowerSaveDigitDarkLevel:I

    if-eq v2, v5, :cond_19

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_19

    if-gez v2, :cond_1a

    :cond_19
    const v2, 0x7f13006a

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPowerSaveDigitDarkLevel:I

    :cond_1a
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_4

    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPowerSaveDigitLevel:I

    if-eq v2, v5, :cond_1c

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_1c

    if-gez v2, :cond_1d

    :cond_1c
    const v2, 0x7f130069

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPowerSaveDigitLevel:I

    :cond_1d
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_4

    :cond_1e
    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    iget v3, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mDigitalDarkLevel:I

    if-eq v3, v5, :cond_1f

    sub-int/2addr v3, v1

    if-gt v3, v4, :cond_1f

    if-gez v3, :cond_20

    :cond_1f
    const v3, 0x7f130062

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mDigitalDarkLevel:I

    :cond_20
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_4

    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    iget v3, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mDigitalLevel:I

    if-eq v3, v5, :cond_22

    sub-int/2addr v3, v1

    if-gt v3, v4, :cond_22

    if-gez v3, :cond_23

    :cond_22
    const v3, 0x7f130061

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mDigitalLevel:I

    :cond_23
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageLevel(I)V

    return-void

    :cond_24
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateBatteryTintDrawable()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getFirstBackgroundTintDrawable()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getSecondBackgroundTintDrawable()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getThirdBackgroundTintDrawables()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public updateFirstBitmap()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableToBitmap(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getRealCornerRadiusTranX()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getRealCornerRadiusTranY()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableToBitmap(Landroid/graphics/drawable/Drawable;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public updateResources()V
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    invoke-virtual {v0}, Lcom/miui/systemui/statusbar/BatteryIcon;->clear()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->useLegacyDrawable:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0718c7

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f05000b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->progressOrientationPortrait:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f05000a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->progressGravityStart:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0700f4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0700f3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0705be

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->cornerRadiusTranX:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0705bf

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->cornerRadiusTranY:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0700f7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryWidth:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0705bc

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelTranX:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0601fa

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0600ef

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f060ce5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLowColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f060cdf

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryChargingColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f060ceb

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryPowerSaveColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f060cea

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryPerformanceModeColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f060ce4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelWhite:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f060ce3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelTransWhite:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f060ce2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->batteryLevelTransDark:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v4, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080fa9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v5, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080faa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v6, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080fac

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v7, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f080fad

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v8, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->LOW:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080fb3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f080fb4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f080fb5

    invoke-virtual {v4, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v4, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->CHARGING:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f080fb2

    invoke-virtual {v5, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v4, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->POWER_SAVE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f080fbc

    invoke-virtual {v5, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080fb7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v4, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_CHARGE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f080fb8

    invoke-virtual {v5, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080fae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->thirdBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080faf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f080fc0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->hollowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils;->FONT_WGHT:Landroid/graphics/Typeface;

    new-array v0, v2, [Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->hollowTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$Companion;->setHollowBatteryTypeface([Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils;->FONT_WGHT:Landroid/graphics/Typeface;

    new-array v0, v2, [Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$Companion;->setHollowBatteryTypeface([Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateBatteryTintDrawable()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateBatteryDrawable()V

    return-void
.end method

.method public updateSecondBitmap()V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableToBitmap(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getRealCornerRadiusTranX()I

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->getRealCornerRadiusTranY()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableToBitmap(Landroid/graphics/drawable/Drawable;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->radiusDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstDrawableBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstDrawableCanvas:Landroid/graphics/Canvas;

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstDrawableCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->firstDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->secondPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.class public Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;
.super Landroid/widget/ImageView;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static synthetic $r8$clinit:I


# instance fields
.field public mBackgroundDrawables:Landroid/util/ArrayMap;

.field public mBatteryChargingColor:I

.field public mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

.field public mBatteryLowColor:I

.field public mBatteryPerformanceModeColor:I

.field public mBatteryPowerSaveColor:I

.field public mCharging:Z

.field public mCornerRadiusTranX:F

.field public mCornerRadiusTranY:F

.field public mDark:I

.field public mDarkColor:I

.field public mDarkIntensity:F

.field public mLevel:I

.field public mLightColor:I

.field public mLow:Z

.field public mMiuiOptimizationEnabled:Z

.field public mPerformanceMode:Z

.field public mPowerSave:Z

.field public mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

.field public mProgressBackgroundCanvas:Landroid/graphics/Canvas;

.field public mProgressBackgroundPaint:Landroid/graphics/Paint;

.field public mProgressClipBitmap:Landroid/graphics/Bitmap;

.field public mProgressClipCanvas:Landroid/graphics/Canvas;

.field public mProgressClipDrawable:Landroid/graphics/drawable/Drawable;

.field public mProgressDrawables:Landroid/util/ArrayMap;

.field public mProgressGravityStart:Z

.field public mProgressOrientationPortrait:Z

.field public mQuickCharging:Z

.field public mRadiusBitmap:Landroid/graphics/Bitmap;

.field public mRadiusCanvas:Landroid/graphics/Canvas;

.field public mRadiusDrawable:Landroid/graphics/drawable/Drawable;

.field public mTintAreas:Ljava/util/ArrayList;

.field public mTintBgDrawable:Landroid/graphics/drawable/Drawable;

.field public mTintColor:I

.field public mUseLegacyDrawable:Z

.field public mUseTint:Z

.field public onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseTint:Z

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    new-instance p2, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$1;-><init>(Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$1;

    new-instance p2, Lcom/miui/systemui/statusbar/BatteryIcon;

    invoke-direct {p2, p1}, Lcom/miui/systemui/statusbar/BatteryIcon;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    return-void
.end method

.method private getBackgroundStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_QC_MODE_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_QC_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    if-eqz p0, :cond_4

    if-eqz v0, :cond_3

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_CHARGE_MODE_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_CHARGE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->QUICK_CHARGING_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_7
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->QUICK_CHARGING:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_8
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    if-eqz p0, :cond_a

    if-eqz v0, :cond_9

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->CHARGING_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_9
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->CHARGING:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_a
    if-eqz v0, :cond_b

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_b
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0
.end method

.method private getProgressStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_QC_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->QUICK_CHARGING:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_CHARGE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->CHARGING:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPowerSave:Z

    if-eqz v0, :cond_4

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->POWER_SAVE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLow:Z

    if-eqz v0, :cond_6

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->LOW:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_6
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0

    :cond_7
    sget-object p0, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    return-object p0
.end method

.method private getRealCornerRadiusTranX()I
    .registers 5

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCornerRadiusTranX:F

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    int-to-float v2, v1

    const/high16 v3, 0x42c80000

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressOrientationPortrait:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressGravityStart:Z

    if-nez p0, :cond_1

    neg-int v0, v0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    :cond_2
    return v0
.end method

.method private getRealCornerRadiusTranY()I
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressOrientationPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCornerRadiusTranY:F

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    if-nez p0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method


# virtual methods
.method public clearTint()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getBackgroundTintDrawable()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getProgressTintDrawable()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    return-void
.end method

.method public getBackgroundTintDrawable()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080bd1

    return p0

    :cond_0
    const p0, 0x7f080bd5

    return p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz p0, :cond_2

    const p0, 0x7f080bcd

    return p0

    :cond_2
    const p0, 0x7f080bc8

    return p0

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz p0, :cond_4

    const p0, 0x7f080bd2

    return p0

    :cond_4
    const p0, 0x7f080bd6

    return p0
.end method

.method public getProgressTintDrawable()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080be8

    return p0

    :cond_0
    const p0, 0x7f080bee

    return p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz p0, :cond_2

    const p0, 0x7f080be4

    return p0

    :cond_2
    const p0, 0x7f080bdc

    return p0

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz p0, :cond_4

    const p0, 0x7f080be9

    return p0

    :cond_4
    const p0, 0x7f080bf0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$1;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .registers 4

    iget p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    const/16 p2, 0x13

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLow:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    :cond_1
    return-void
.end method

.method public onChargeStateChanged(ZZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mQuickCharging:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    return-void
.end method

.method public onDarkChangeInternal()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseLegacyDrawable:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseTint:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintColor:I

    invoke-static {v1, p0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/Collection;Landroid/view/View;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mMiuiOptimizationEnabled:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getProgressStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    const/16 v3, 0xb

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    const/16 v3, 0x9

    if-eq v2, v3, :cond_4

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryPerformanceModeColor:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryPowerSaveColor:I

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryChargingColor:I

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryLowColor:I

    :goto_0
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    invoke-static {v0, p0, v4}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getDarkIntensity(Ljava/util/ArrayList;Landroid/view/View;F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    goto :goto_1

    :cond_9
    move v2, v3

    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    if-eq v2, v0, :cond_b

    iput v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getBackgroundStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getProgressStatus()Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/Drawable;

    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateProgressBackgroundBitmap()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    invoke-static {v0, p0, v4}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getDarkIntensity(Ljava/util/ArrayList;Landroid/view/View;F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    move v0, v2

    goto :goto_3

    :cond_d
    move v0, v3

    :goto_3
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    if-eq v0, v1, :cond_26

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDark:I

    const/4 v1, 0x0

    if-ne v0, v2, :cond_e

    move v0, v3

    goto :goto_4

    :cond_e
    move v0, v1

    :goto_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCharging:Z

    const/16 v4, 0xa

    const/4 v5, -0x1

    if-eqz v2, :cond_14

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mChargeDarkLevel:I

    if-eq v2, v5, :cond_f

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_f

    if-gez v2, :cond_10

    :cond_f
    const v2, 0x7f13005d

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mChargeDarkLevel:I

    :cond_10
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mChargeLevel:I

    if-eq v2, v5, :cond_12

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_12

    if-gez v2, :cond_13

    :cond_12
    const v2, 0x7f13005c

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mChargeLevel:I

    :cond_13
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_5

    :cond_14
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eqz v2, :cond_1a

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPerformanceModeDarkLevel:I

    if-eq v2, v5, :cond_15

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_15

    if-gez v2, :cond_16

    :cond_15
    const v2, 0x7f130064

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPerformanceModeDarkLevel:I

    :cond_16
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_5

    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPerformanceModeLevel:I

    if-eq v2, v5, :cond_18

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_18

    if-gez v2, :cond_19

    :cond_18
    const v2, 0x7f130063

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPerformanceModeLevel:I

    :cond_19
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPerformanceModeIcon:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_5

    :cond_1a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPowerSave:Z

    if-eqz v2, :cond_20

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPowerSaveDarkLevel:I

    if-eq v2, v5, :cond_1b

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_1b

    if-gez v2, :cond_1c

    :cond_1b
    const v2, 0x7f130068

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPowerSaveDarkLevel:I

    :cond_1c
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_5

    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    iget v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPowerSaveLevel:I

    if-eq v2, v5, :cond_1e

    sub-int v2, v1, v2

    if-gt v2, v4, :cond_1e

    if-gez v2, :cond_1f

    :cond_1e
    const v2, 0x7f130067

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mPowerSaveLevel:I

    :cond_1f
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_5

    :cond_20
    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    iget v3, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mDarkLevel:I

    if-eq v3, v5, :cond_21

    sub-int/2addr v3, v2

    if-gt v3, v4, :cond_21

    if-gez v3, :cond_22

    :cond_21
    const v3, 0x7f130060

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mDarkLevel:I

    :cond_22
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_5

    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    iget v3, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mLevel:I

    if-eq v3, v5, :cond_24

    sub-int/2addr v3, v2

    if-gt v3, v4, :cond_24

    if-gez v3, :cond_25

    :cond_24
    const v3, 0x7f13005b

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/systemui/statusbar/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput v2, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mLevel:I

    :cond_25
    iget-object v0, v0, Lcom/miui/systemui/statusbar/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLevel:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_26
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources$19()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$1;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseLegacyDrawable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources$19()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700f7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMiuiThemeChanged$1(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources$19()V

    return-void
.end method

.method public onPerformanceModeChanged(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPerformanceMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    :cond_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPowerSave:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mPowerSave:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    :cond_0
    return-void
.end method

.method public setMiuiOptimizationEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mMiuiOptimizationEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mMiuiOptimizationEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    :cond_0
    return-void
.end method

.method public setUseLegacyDrawable(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseLegacyDrawable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseLegacyDrawable:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources$19()V

    :cond_0
    return-void
.end method

.method public updateProgressBackgroundBitmap()V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

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

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipCanvas:Landroid/graphics/Canvas;

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mRadiusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getRealCornerRadiusTranX()I

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->getRealCornerRadiusTranY()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mRadiusBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mRadiusBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-eq v4, v5, :cond_7

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mRadiusBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mRadiusBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mRadiusCanvas:Landroid/graphics/Canvas;

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mRadiusBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mRadiusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mRadiusBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method public updateResources$19()V
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryIcon:Lcom/miui/systemui/statusbar/BatteryIcon;

    invoke-virtual {v0}, Lcom/miui/systemui/statusbar/BatteryIcon;->clear()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseLegacyDrawable:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressOrientationPortrait:Z

    const v2, 0x7f05000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressGravityStart:Z

    const v2, 0x7f0700e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCornerRadiusTranX:F

    const v2, 0x7f0700e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mCornerRadiusTranY:F

    const v1, 0x7f060ce5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryLowColor:I

    const v1, 0x7f060cdf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryChargingColor:I

    const v1, 0x7f060ceb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryPowerSaveColor:I

    const v1, 0x7f060cea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBatteryPerformanceModeColor:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v3, 0x7f080bc5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v3, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->NORMAL_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v4, 0x7f080bc9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v4, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->CHARGING:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v5, 0x7f080bc6

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v5, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->CHARGING_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v6, 0x7f080bc7

    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v5, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->QUICK_CHARGING:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v6, 0x7f080bd3

    invoke-virtual {v0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v6, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->QUICK_CHARGING_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v7, 0x7f080bd4

    invoke-virtual {v0, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v6, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v7, 0x7f080bca

    invoke-virtual {v0, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v7, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERFORMANCE_MODE_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v8, 0x7f080bce

    invoke-virtual {v0, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v7, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_CHARGE_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v8, 0x7f080bcb

    invoke-virtual {v0, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v8, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_CHARGE_MODE_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v9, 0x7f080bcc

    invoke-virtual {v0, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v8, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_QC_MODE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v9, 0x7f080bcf

    invoke-virtual {v0, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mBackgroundDrawables:Landroid/util/ArrayMap;

    sget-object v9, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->PERF_QC_MODE_DARK:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v10, 0x7f080bd0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v9, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->LOW:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v10, 0x7f080bdd

    invoke-virtual {v0, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    const v9, 0x7f080bdf

    invoke-virtual {v0, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    const v2, 0x7f080be0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    const v2, 0x7f080bda

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    const v2, 0x7f080bec

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;->POWER_SAVE:Lcom/android/systemui/statusbar/util/MiuiBatteryUtils$BatteryStatus;

    const v3, 0x7f080bea

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    const v2, 0x7f080be1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    const v2, 0x7f080be2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressDrawables:Landroid/util/ArrayMap;

    const v2, 0x7f080be6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080bd6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080bf0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080bef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mRadiusDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseLegacyDrawable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mProgressClipDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    return-void
.end method

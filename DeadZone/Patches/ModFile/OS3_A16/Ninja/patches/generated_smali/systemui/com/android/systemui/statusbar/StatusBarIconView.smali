.class public Lcom/android/systemui/statusbar/StatusBarIconView;
.super Lcom/android/systemui/newstatusbar/views/StatusBarIconView;

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# static fields
.field public static final DOT_APPEAR_AMOUNT:Lcom/android/systemui/statusbar/StatusBarIconView$1;

.field public static final ICON_APPEAR_AMOUNT:Lcom/android/systemui/statusbar/StatusBarIconView$1;


# instance fields
.field public final mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

.field public mAnimationStartColor:I

.field public mAutoDark:Z

.field public mBlocked:Z

.field public mCachedContrastBackgroundColor:I

.field public mColorAnimator:Landroid/animation/ValueAnimator;

.field public final mColorUpdater:Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public mContrastedDrawableColor:I

.field public mCurrentSetColor:I

.field public mDecorColor:I

.field public mDotAnimator:Landroid/animation/ObjectAnimator;

.field public mDotAppearAmount:F

.field public final mDotPaint:Landroid/graphics/Paint;

.field public mDotRadius:F

.field public mDozeAmount:F

.field public final mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

.field public mDrawableColor:I

.field public final mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

.field public mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field public mIconAppearAmount:F

.field public mIconAppearAnimator:Landroid/animation/ObjectAnimator;

.field public mIconColor:I

.field public mIconScale:F

.field public mIncreasedSize:Z

.field public mMatrix:[F

.field public mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field mNewStatusBarIconSize:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mNightMode:Z

.field public mNotification:Landroid/service/notification/StatusBarNotification;

.field mOriginalStatusBarIconSize:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mScaleToFitNewIconSize:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mShowsConversation:Z

.field public final mSlot:Ljava/lang/String;

.field public mStaticDotRadius:I

.field mStatusBarIconDrawingSize:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mStatusBarIconDrawingSizeIncreased:I

.field public mSystemIconIntrinsicHeight:F

.field public mVisibleState:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$1;

    const-string v1, "iconAppearAmount"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Lcom/android/systemui/statusbar/StatusBarIconView$1;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$1;

    const-string v1, "dot_appear_amount"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Lcom/android/systemui/statusbar/StatusBarIconView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/android/systemui/newstatusbar/views/StatusBarIconView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41880000

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeIncreased:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOriginalStatusBarIconSize:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNewStatusBarIconSize:I

    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mScaleToFitNewIconSize:F

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v1, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->areas:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAutoDark:Z

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    if-ne p1, p2, :cond_0

    move v2, v0

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->isNotification()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    if-eqz p2, :cond_1

    const p2, 0x1060301

    goto :goto_0

    :cond_1
    const p2, 0x1060302

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    return-void
.end method

.method private getIconHeight()F
    .registers 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    return p0
.end method

.method public static getVisibleStateString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "HIDDEN"

    return-object p0

    :cond_1
    const-string p0, "DOT"

    return-object p0

    :cond_2
    const-string p0, "ICON"

    return-object p0
.end method


# virtual methods
.method public final debug(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/ImageView;->debug(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/widget/ImageView;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/widget/ImageView;->debugIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "icon="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAnimationInject()Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    return-object p0
.end method

.method public getBlurRadius()I
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->blurRadius:I

    return p0
.end method

.method public getDeemHide()Z
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->deemHide:Z

    return p0
.end method

.method public getDotAppearAmount()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    return p0
.end method

.method public final getDrawingRect(Landroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->isNotification()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    :goto_0
    iget-object v4, v1, Lcom/android/internal/statusbar/StatusBarIcon;->preloadedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->preloadedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    const/4 v4, 0x0

    :cond_4
    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07188c

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    if-eqz v1, :cond_17

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_17

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_5

    const v0, 0x1050308

    goto :goto_2

    :cond_5
    const v0, 0x1050307

    :goto_2
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-string v4, "Attempted to resize "

    const-string v6, "Resizing large drawable ("

    const-string v7, "Not resizing "

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v9, "DrawableSize#downscaleToSize"

    invoke-static {v9}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_6
    :try_start_0
    instance-of v9, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_7

    move-object v9, v1

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_7
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    :goto_4
    instance-of v11, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_9

    move-object v11, v1

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    if-lez v9, :cond_15

    if-gtz v11, :cond_b

    goto :goto_a

    :cond_b
    const-string v12, " to "

    const/4 v13, 0x3

    const-string v14, "SysUiDrawableSize"

    const-string v15, " x "

    if-ge v9, v0, :cond_d

    if-ge v11, v0, :cond_d

    :try_start_1
    invoke-static {v14, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    if-eqz v8, :cond_17

    :goto_7
    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    goto :goto_c

    :cond_d
    :try_start_2
    invoke-static {v1}, Lcom/android/systemui/util/drawable/DrawableSize$Companion;->isComplicatedBitmap(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz v8, :cond_17

    goto :goto_7

    :cond_e
    int-to-float v0, v0

    int-to-float v7, v9

    div-float v10, v0, v7

    int-to-float v5, v11

    div-float/2addr v0, v5

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v7, v0

    float-to-int v7, v7

    mul-float/2addr v5, v0

    float-to-int v0, v5

    if-lez v7, :cond_14

    if-gtz v0, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {v14, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") from "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_11

    move-object v10, v1

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_8

    :cond_11
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-nez v4, :cond_13

    :cond_12
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_13
    invoke-static {v7, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v9, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v8, :cond_17

    goto :goto_7

    :cond_14
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to invalid "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_17

    goto :goto_7

    :cond_15
    :goto_a
    if-eqz v8, :cond_17

    goto :goto_7

    :goto_b
    if-eqz v8, :cond_16

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_16
    throw v0

    :cond_17
    :goto_c
    const/high16 v0, 0x3f800000

    cmpl-float v0, v2, v0

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    new-instance v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object v0
.end method

.method public getIconAppearAmount()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    return p0
.end method

.method public getIconScale()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    return p0
.end method

.method public getIconScaleIncreased()F
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeIncreased:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getNotification()Landroid/service/notification/StatusBarNotification;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getRemoveFlag()Z
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    return p0
.end method

.method public getSlot()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getStaticDrawableColor()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    return p0
.end method

.method public getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object p0
.end method

.method public getVisibleState()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isIconBlocked()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    return p0
.end method

.method public final isIconVisible()Z
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNotification()Z
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public maybeUpdateIconScaleDimens()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->isNotification()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->shape:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->FIXED_SPACE:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x3f800000

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v0, v0

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    move v0, v2

    :cond_2
    mul-float/2addr v3, v0

    mul-float/2addr v4, v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOriginalStatusBarIconSize:I

    int-to-float v1, v1

    div-float v3, v1, v3

    div-float/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIncreasedSize:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeIncreased:I

    :goto_2
    int-to-float v0, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    goto :goto_2

    :goto_3
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOriginalStatusBarIconSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mScaleToFitNewIconSize:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updatePivot()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const v1, 0x40001000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconDimens()V

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    if-eq p1, v0, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->isNotification()Z

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    sget-boolean p1, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    iput-object p1, v0, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->areas:Ljava/util/ArrayList;

    iput p2, v0, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->darkIntensity:F

    iput p3, v0, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->tint:I

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->useTint:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateLightDarkTint(Ljava/util/ArrayList;FIZ)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float v6, v4, v5

    mul-float/2addr v4, v5

    int-to-float v0, v0

    int-to-float v3, v3

    invoke-virtual {p1, v6, v4, v0, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000

    div-float/2addr v0, v1

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    const/high16 v4, 0x3f800000

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    mul-float/2addr v4, v3

    goto :goto_0

    :cond_1
    sub-float/2addr v3, v4

    sub-float/2addr v4, v3

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    int-to-float v4, v4

    invoke-static {v5, v4, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v4

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->isLayoutRtl()Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->dotPadding:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v0

    int-to-float v0, v1

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    sub-float v5, v0, v2

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p1, v5, v3, v4, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v3, v4, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-eqz p1, :cond_0

    const-string p0, ""

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->newAnimationFeature:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updatePivot()V

    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAutoDark:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->reapply(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_1
    return-void
.end method

.method public final onLightDarkTintChanged(IIZ)V
    .registers 5

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    iget-object p2, p1, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->areas:Ljava/util/ArrayList;

    iget v0, p1, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->darkIntensity:F

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->tint:I

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateLightDarkTint(Ljava/util/ArrayList;FIZ)V

    return-void
.end method

.method public final onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->isNotification()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    int-to-float p1, p1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mScaleToFitNewIconSize:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public final onMiuiThemeChanged$1(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconDimens()V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRtlPropertiesChanged(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    return-void
.end method

.method public final performRemove()V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final reloadDimens()V
    .registers 5

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    const v3, 0x7f07149a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->dotPadding:F

    const v2, 0x7f071521

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    const v2, 0x7f07188d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOriginalStatusBarIconSize:I

    const v2, 0x7f07188e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNewStatusBarIconSize:I

    const v2, 0x7f071888

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeIncreased:I

    const v2, 0x7f071887

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    :cond_1
    const v0, 0x1050393

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    const v0, 0x1050392

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    return-void
.end method

.method public final set(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->useTint:Z

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->dark:Z

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarIcon;->pkg:Ljava/lang/String;

    const-string v5, "com.android.systemui"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    if-eqz v4, :cond_1

    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    sget-object v2, Lcom/miui/systemui/statusbar/Icons;->sTintIconMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_3

    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    sget-object v2, Lcom/miui/systemui/statusbar/Icons;->sDarkIconMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    sget-object v2, Lcom/miui/systemui/statusbar/Icons;->sLightIconMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->expandNotification:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    if-ne v0, v3, :cond_7

    :goto_4
    move v0, v1

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v5

    if-eq v4, v5, :cond_9

    :cond_8
    :goto_5
    move v0, v2

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    if-eq v4, v1, :cond_c

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    const/4 v5, 0x6

    if-eq v4, v5, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v3

    if-ne v0, v3, :cond_8

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v0, :cond_8

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    if-ne v0, v3, :cond_8

    goto :goto_4

    :goto_6
    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_7

    :cond_e
    move v0, v2

    :goto_7
    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v3, v3, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    if-ne v3, v4, :cond_f

    move v3, v1

    goto :goto_8

    :cond_f
    move v3, v2

    :goto_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v4, :cond_10

    iget-boolean v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-boolean v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v4, v5, :cond_10

    move v4, v1

    goto :goto_9

    :cond_10
    move v4, v2

    :goto_9
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_12

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    :cond_11
    const v0, 0x7f0b058e

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    :cond_12
    if-nez v3, :cond_13

    iget v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_13
    iget-object p1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->shape:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    sget-object v0, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->FIXED_SPACE:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    if-ne p1, v0, :cond_14

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_14
    if-nez v4, :cond_15

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateVisibility$2()V

    :cond_15
    return v1
.end method

.method public setAnimationEnable(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->animateEnable:Z

    return-void
.end method

.method public setAutoDark(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAutoDark:Z

    return-void
.end method

.method public setBlocked(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateVisibility$2()V

    :cond_0
    return-void
.end method

.method public setBlurRadius(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->setBlurRadius(I)V

    return-void
.end method

.method public setDecorColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    return-void
.end method

.method public setDeemHide(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->deemHide:Z

    return-void
.end method

.method public setDotAppearAmount(F)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setDripEnd(Z)V
    .registers 2

    return-void
.end method

.method public setIconAppearAmount(F)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIconColor(IZ)V
    .registers 5

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/StatusBarIconView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$3;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public setIncreasedSize(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIncreasedSize:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    return-void
.end method

.method public setNotification(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationContentDescription;->contentDescForNotification(Landroid/app/Notification;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNotification(Landroid/service/notification/StatusBarNotification;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->expandNotification:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    return-void
.end method

.method public setRemove(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    return-void
.end method

.method public setShowsConversation(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowsConversation:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowsConversation:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    :cond_0
    return-void
.end method

.method public setStaticDrawableColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    return-void
.end method

.method public setStaticDrawableColor(II)V
    .registers 3

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    return-void
.end method

.method public setTintAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    return-void
.end method

.method public setVisibleState(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public setVisibleState(IZLjava/lang/Runnable;)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;J)V

    return-void
.end method

.method public setVisibleState(IZLjava/lang/Runnable;J)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x2

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    iget-boolean v7, v6, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->newAnimationFeature:Z

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    if-eqz v6, :cond_0

    goto :goto_a

    :cond_0
    iget v6, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    if-eq v1, v6, :cond_d

    iput v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    iget-object v6, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v6, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    const/high16 v6, 0x40000000

    const/high16 v7, 0x3f800000

    const/4 v8, 0x0

    if-eqz p2, :cond_9

    sget-object v9, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    sget-object v10, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move v11, v7

    goto :goto_0

    :cond_3
    move v11, v8

    move-object v10, v9

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconAppearAmount()F

    move-result v12

    cmpl-float v13, v11, v12

    const-wide/16 v14, 0x64

    const-wide/16 v16, 0x0

    if-eqz v13, :cond_5

    sget-object v13, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Lcom/android/systemui/statusbar/StatusBarIconView$1;

    const/16 v18, 0x0

    new-array v4, v3, [F

    aput v12, v4, v18

    aput v11, v4, v5

    invoke-static {v0, v13, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    cmp-long v10, p4, v16

    if-nez v10, :cond_4

    move-wide v10, v14

    goto :goto_1

    :cond_4
    move-wide/from16 v10, p4

    :goto_1
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v10, Lcom/android/systemui/statusbar/StatusBarIconView$4;

    invoke-direct {v10, v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView$4;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    move v4, v5

    goto :goto_2

    :cond_5
    const/16 v18, 0x0

    move/from16 v4, v18

    :goto_2
    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    move v6, v8

    :goto_3
    if-ne v1, v5, :cond_7

    sget-object v9, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_7
    move v7, v6

    :goto_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDotAppearAmount()F

    move-result v1

    cmpl-float v6, v7, v1

    if-eqz v6, :cond_e

    sget-object v6, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Lcom/android/systemui/statusbar/StatusBarIconView$1;

    new-array v3, v3, [F

    aput v1, v3, v18

    aput v7, v3, v5

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    cmp-long v3, p4, v16

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    move-wide/from16 v14, p4

    :goto_5
    invoke-virtual {v1, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    xor-int/lit8 v1, v4, 0x1

    iget-object v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/StatusBarIconView$5;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView$5;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;ZLjava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    move v4, v5

    goto :goto_9

    :cond_9
    const/16 v18, 0x0

    if-nez v1, :cond_a

    move v3, v7

    goto :goto_6

    :cond_a
    move v3, v8

    :goto_6
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconAppearAmount(F)V

    if-ne v1, v5, :cond_b

    move v6, v7

    goto :goto_7

    :cond_b
    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    move v6, v8

    :goto_7
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDotAppearAmount(F)V

    goto :goto_8

    :cond_d
    const/16 v18, 0x0

    :goto_8
    move/from16 v4, v18

    :cond_e
    :goto_9
    if-nez v4, :cond_f

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_f
    :goto_a
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusBarIconView(slot=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " visibleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " iconColor=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    const-string v2, " staticDrawableColor=#"

    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    const-string v2, " decorColor=#"

    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    const-string v2, " animationStartColor=#"

    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    const-string v2, " currentSetColor=#"

    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    const-string v2, " notification="

    invoke-static {v1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateContrastedStaticColor()V
    .registers 6

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v1, v0}, Lcom/android/internal/util/ContrastColorUtil;->satisfiesTextContrast(II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    sget-object v3, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v3, v4, v2, v1}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    const/4 v2, 0x1

    aget v1, v1, v2

    const v3, 0x3e4ccccd

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return-void
.end method

.method public final updateDecorColor()V
    .registers 4

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    invoke-static {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(FII)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final updateDrawable(Z)Z
    .registers 6

    const-string v0, "StatusBarIconView"

    const-string v1, "OOM while inflating "

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    const-string v2, "StatusBarIconView#updateDrawable()"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "No icon for slot "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/newstatusbar/views/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/views/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for slot "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v3

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final updateIconColor()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowsConversation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->expandNotification:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    const-string v2, "android"

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    check-cast v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/utils/NotifImageUtil;->shouldSubstituteSmallIcon(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v0, :cond_2

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    invoke-direct {v0, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    const/4 v3, -0x1

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    invoke-static {v4, v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(FII)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    const v4, 0x3f2b851f

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    mul-float/2addr v5, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([FF)V

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x4

    aput v2, v3, v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v4, 0x9

    aput v2, v3, v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v4, 0xe

    aput v2, v3, v4

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000

    div-float/2addr v0, v2

    add-float/2addr v0, v5

    const/16 v2, 0x12

    aput v0, v3, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;->setColorMatrixArray([F)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_4

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v2, 0x3f800000

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final updateIconDimens()V
    .registers 2

    const-string v0, "StatusBarIconView#updateIconDimens"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final updateLightDarkTint(Ljava/util/ArrayList;FIZ)V
    .registers 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mExParams:Lcom/android/systemui/statusbar/StatusBarIconViewEx;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, "com.android.systemui"

    iget-object v4, v1, Lcom/android/internal/statusbar/StatusBarIcon;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    move p4, v3

    goto :goto_1

    :cond_1
    move p4, v4

    :goto_1
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->useTint:Z

    if-eq v0, p4, :cond_3

    iput-boolean p4, v2, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->useTint:Z

    if-nez p4, :cond_2

    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    move p4, v3

    goto :goto_2

    :cond_3
    move p4, v4

    :goto_2
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->useTint:Z

    if-nez v0, :cond_5

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getDarkIntensity(Ljava/util/ArrayList;Landroid/view/View;F)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_4

    move v4, v3

    :cond_4
    iget-boolean p2, v2, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->dark:Z

    if-eq v4, p2, :cond_5

    iput-boolean v4, v2, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->dark:Z

    goto :goto_3

    :cond_5
    move v3, p4

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    :cond_6
    iget-boolean p2, v2, Lcom/android/systemui/statusbar/StatusBarIconViewEx;->useTint:Z

    if-eqz p2, :cond_7

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    :cond_7
    return-void
.end method

.method public final updatePivot()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->newNotificationFeature:Z

    const/high16 v2, 0x40000000

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->iconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isLayoutRtl()Z

    move-result v0

    const/high16 v1, 0x3f800000

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    sub-float/2addr v1, v0

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    return-void
.end method

.method public final updateVisibility$2()V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationInject:Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->newAnimationFeature:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-boolean v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->iconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconAppearAmount()F

    move-result p0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    const/high16 v5, 0x3f800000

    cmpg-float p0, p0, v5

    if-nez p0, :cond_1

    const/4 p0, 0x2

    if-eq v3, p0, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->deemHide:Z

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->animateEnable:Z

    if-eqz p0, :cond_3

    if-eq v5, v3, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    return-void

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconViewAnimationInjector;->getAnimHelper()Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;

    move-result-object p0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/anim/StatusBarIconAnimHelper;->removeFlag:Z

    return-void

    :cond_4
    iget-boolean v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    if-nez v0, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    return-void
.end method

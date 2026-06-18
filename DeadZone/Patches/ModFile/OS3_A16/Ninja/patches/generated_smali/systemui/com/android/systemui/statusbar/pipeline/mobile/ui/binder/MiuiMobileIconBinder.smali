.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static final access$bind$updateMobileLayoutParams(Landroid/widget/TextView;Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 8

    const v0, 0x7f150622

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/graphics/Paint;

    iget-object v0, p1, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    iget-object v0, p1, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->setMiuiStatusBarTypeface([Landroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder;->updateMobileTypeSize(Landroid/content/Context;Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;)V

    invoke-interface {p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;->getShowName()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2, p4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder;->updateMobileTypeLayoutParams(Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {p5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f071889

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p2, p0, :cond_1

    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final access$resetImageWithTintLight(Landroid/widget/ImageView;ZZ)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public static final access$setImageResWithTintLight(Landroid/widget/ImageView;ILkotlin/Triple;)V
    .registers 5

    invoke-virtual {p2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {p1, v0, p2}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static final bind(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder$bind$2;
    .registers 38

    move-object/from16 v2, p0

    const v0, 0x7f0b07ac

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;

    instance-of v0, v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const v0, 0x7f0b07b8

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/ImageView;

    const v0, 0x7f0b07b1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageView;

    const v0, 0x7f0b07c0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/ImageView;

    const v0, 0x7f0b07c1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/ImageView;

    const v0, 0x7f0b07bf

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/widget/TextView;

    const v0, 0x7f0b07b5

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b07bd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f0b07ae

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/ImageView;

    const v3, 0x7f0b07b7

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageView;

    const v3, 0x7f0b07b3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/ImageView;

    const v3, 0x7f0b07b6

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/ImageView;

    const v3, 0x7f0b07b4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/ImageView;

    const v3, 0x7f0b07c2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/ImageView;

    const v3, 0x7f0b0b6c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v4, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    invoke-direct {v4}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;-><init>()V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder;->updateMobileTypeSize(Landroid/content/Context;Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;)V

    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;->isVisible()Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_2

    :cond_1
    move v5, v8

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v25, v4

    move-object/from16 v22, v19

    move-object/from16 v26, v23

    move-object/from16 v19, v1

    move-object/from16 v23, v12

    filled-new-array/range {v14 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v26

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v28

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060cf4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    new-instance v4, Lkotlin/Triple;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v5, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v29

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v33

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v31

    new-instance v30, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v30 .. v30}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v10, v14

    move-object v14, v0

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder$bind$1;

    const/16 v27, 0x0

    move-object/from16 v3, v22

    move-object/from16 v22, v19

    move-object/from16 v19, v3

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v8, v17

    move-object/from16 v11, v18

    move-object/from16 v9, v20

    move-object/from16 v18, v24

    move-object/from16 v24, v25

    move-object/from16 v7, v29

    move-object/from16 v4, v30

    move-object/from16 v20, v31

    move-object/from16 v25, v32

    move-object/from16 v26, v33

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v27}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder$bind$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/views/MobileSignalAnimatorContainer;Landroid/view/ViewGroup;Landroid/widget/ImageView;Ljava/util/List;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    new-instance v26, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder$bind$2;

    move-object/from16 v27, p2

    invoke-direct/range {v26 .. v33}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder$bind$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MiuiMobileIconViewModel;Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlinx/coroutines/flow/StateFlowImpl;)V

    return-object v26
.end method

.method public static updateMobileTypeLayoutParams(Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 8

    invoke-static {p0, p1, p2}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->updateMobileTypeLayoutParams(Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0718a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0718a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0718a4

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    invoke-virtual {p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->getIntrinsicWidth()I

    move-result p0

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v0, v4

    div-int/lit8 v4, p0, 0x2

    neg-int v4, v4

    add-int/2addr v4, v1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, p0, :cond_4

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v1, v3, :cond_4

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v1, v0, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    if-eq v1, p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    iput p0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static updateMobileTypeSize(Landroid/content/Context;Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0718cf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeSize:I

    iget-object v0, p1, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p0, p1, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    iget v0, p1, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeSize:I

    int-to-float v0, v0

    const v1, 0x3f547ae1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->measure()V

    return-void
.end method

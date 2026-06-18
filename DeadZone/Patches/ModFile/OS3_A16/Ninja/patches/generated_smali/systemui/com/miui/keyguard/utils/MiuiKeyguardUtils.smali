.class public final Lcom/miui/keyguard/utils/MiuiKeyguardUtils;
.super Ljava/lang/Object;


# static fields
.field public static final HARD_CUT_TEMPLATE_ID:Ljava/util/HashMap;

.field public static final INSTANCE:Lcom/miui/keyguard/utils/MiuiKeyguardUtils;

.field public static final SECONDARY_LAYER_CLOCK_TEMPLATE_ID:Ljava/util/HashMap;

.field public static sKeepScreenOnWhenLargeAreaTouchList:Ljava/util/List;

.field public static sRegionSupportMiHomeList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/keyguard/utils/MiuiKeyguardUtils;->sKeepScreenOnWhenLargeAreaTouchList:Ljava/util/List;

    new-instance v1, Lkotlin/Pair;

    const-string v0, "pad_exclusive_a"

    const-string v2, "pad_exclusive_a_signature"

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const-string v0, "pad_exclusive_c"

    const-string v3, "pad_exclusive_c_minute"

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    const-string v0, "eastern_c"

    const-string v4, "eastern_c_minute"

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    const-string v14, "eastern_c_notification"

    invoke-direct {v5, v14, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v5

    new-instance v5, Lkotlin/Pair;

    const-string v15, "eastern_a"

    const-string v6, "eastern_a_minute"

    invoke-direct {v5, v15, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lkotlin/Pair;

    const-string v8, "eastern_a_notification"

    invoke-direct {v7, v8, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v7

    new-instance v7, Lkotlin/Pair;

    const-string v9, "oversize_a"

    const-string v10, "oversize_a_minute"

    invoke-direct {v7, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v8

    new-instance v8, Lkotlin/Pair;

    const-string v10, "oversize_b"

    const-string v11, "oversize_b_hour"

    invoke-direct {v8, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v10, v9

    new-instance v9, Lkotlin/Pair;

    const-string v11, "eastern_b"

    const-string v12, "eastern_b_data"

    invoke-direct {v9, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v11, v10

    new-instance v10, Lkotlin/Pair;

    const-string v12, "classic"

    const-string v13, "classic_signature"

    invoke-direct {v10, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v11

    new-instance v11, Lkotlin/Pair;

    const-string v13, "classic_max"

    move-object/from16 v16, v1

    const-string v1, "classic_max_minute"

    invoke-direct {v11, v13, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v12

    new-instance v12, Lkotlin/Pair;

    const-string v13, "classic_plus"

    move-object/from16 v17, v1

    const-string v1, "classic_plus_signature"

    invoke-direct {v12, v13, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lkotlin/Pair;

    const-string v1, "depth_pets"

    move-object/from16 v18, v2

    const-string v2, "depth_pets_secondary"

    invoke-direct {v13, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, v16

    move-object/from16 v19, v17

    move-object/from16 v2, v18

    filled-new-array/range {v1 .. v13}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/miui/keyguard/utils/MiuiKeyguardUtils;->SECONDARY_LAYER_CLOCK_TEMPLATE_ID:Ljava/util/HashMap;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/Pair;

    move-object/from16 v9, v19

    invoke-direct {v0, v15, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v9, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v0, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/miui/keyguard/utils/MiuiKeyguardUtils;->HARD_CUT_TEMPLATE_ID:Ljava/util/HashMap;

    return-void
.end method

.method public static calculateColorRed255(FI)I
    .registers 5

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    int-to-float v2, v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr p0, v0

    add-float/2addr p0, v2

    float-to-int p0, p0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v0, p0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static calculateDimBlurEffect$default(FZI)Landroid/graphics/RenderEffect;
    .registers 6

    and-int/lit8 p2, p2, 0x4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p1, v0

    :cond_0
    const/4 p2, 0x0

    cmpg-float p2, p0, p2

    if-gtz p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/high16 p2, 0x42c80000

    const/16 v1, 0x4d

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    mul-float/2addr p2, p0

    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p2, p2, p1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    int-to-float p2, v1

    mul-float/2addr p2, p0

    float-to-int p0, p2

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    new-instance p2, Landroid/graphics/BlendModeColorFilter;

    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {p2, p0, v0}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-static {p2}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/RenderEffect;->createChainEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz p1, :cond_5

    int-to-float p1, v1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-gtz p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, p0

    :goto_1
    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    new-instance p1, Landroid/graphics/BlendModeColorFilter;

    sget-object p2, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {p1, p0, p2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-static {p1}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0

    :cond_5
    mul-float/2addr p0, p2

    sget-object p1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p0, p0, p1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public static getSecondaryClockTemplateId(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-static {p0, p1}, Lcom/miui/keyguard/utils/MiuiKeyguardUtils;->needToSplitClock(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "magazine_c_date_only"

    return-object p0

    :cond_1
    sget-object p0, Lcom/miui/keyguard/utils/MiuiKeyguardUtils;->SECONDARY_LAYER_CLOCK_TEMPLATE_ID:Ljava/util/HashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isHardCutNotifyAnimTemplate(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "eastern_c_notification"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eastern_c"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eastern_a_notification"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eastern_a"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "classic_plus"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isRegionSupportMiHome(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static needToSplitClock(ILjava/lang/String;)Z
    .registers 3

    const-string v0, "magazine_c"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/16 p1, 0x9

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

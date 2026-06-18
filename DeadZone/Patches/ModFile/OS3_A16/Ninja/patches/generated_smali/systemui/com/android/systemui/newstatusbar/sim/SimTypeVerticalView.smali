.class public Lcom/android/systemui/newstatusbar/sim/SimTypeVerticalView;
.super Lcom/android/systemui/newstatusbar/sim/SimTypeView;


# instance fields
.field data:Lcom/android/systemui/newstatusbar/data/TextData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/sim/SimTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/newstatusbar/data/TextData;

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeVerticalView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vertical_mobile_type"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/newstatusbar/data/TextData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeVerticalView;->data:Lcom/android/systemui/newstatusbar/data/TextData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/newstatusbar/sim/SimTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/newstatusbar/data/TextData;

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeVerticalView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vertical_mobile_type"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/newstatusbar/data/TextData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeVerticalView;->data:Lcom/android/systemui/newstatusbar/data/TextData;

    return-void
.end method

.method private updateData()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeVerticalView;->data:Lcom/android/systemui/newstatusbar/data/TextData;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/TextData;->update()Lcom/android/systemui/newstatusbar/data/Data;

    const-string v1, "mobile_type_color"

    invoke-static {v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->color:I

    const-string v1, "mobile_type_typefase"

    const-string v2, "Default"

    invoke-static {v1, v2}, Landroid/preference/SettingsEliteHelper;->getStringofSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFase:Ljava/lang/String;

    const-string v1, "mobile_type_typefasestyle"

    invoke-static {v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    return-void
.end method


# virtual methods
.method public getData()Lcom/android/systemui/newstatusbar/data/TextData;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeVerticalView;->data:Lcom/android/systemui/newstatusbar/data/TextData;

    return-object v0
.end method

.method public onIconChange()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeVerticalView;->updateData()V

    invoke-super {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeView;->onIconChange()V

    return-void
.end method

.class public Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;
.super Lcom/android/systemui/newstatusbar/views/AlphaColorView;


# instance fields
.field private realVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/newstatusbar/views/AlphaColorView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->realVisibility:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/views/AlphaColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->realVisibility:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/newstatusbar/views/AlphaColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->realVisibility:I

    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->iconData:Lcom/android/systemui/newstatusbar/data/IconData;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->realVisibility:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->iconData:Lcom/android/systemui/newstatusbar/data/IconData;

    iget-object v1, v1, Lcom/android/systemui/newstatusbar/data/IconData;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getBoolofSettings(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/views/AlphaColorView;->setVisibility(I)V

    return-void
.end method

.method public update()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/newstatusbar/views/AlphaColorView;->update()V

    iget v0, p0, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->realVisibility:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->realVisibility:I

    :cond_0
    iget v0, p0, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->realVisibility:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/AlphaVisibleColorView;->setVisibility(I)V

    return-void
.end method

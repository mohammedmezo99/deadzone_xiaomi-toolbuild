.class public Lcom/android/systemui/newstatusbar/views/WeatherView;
.super Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/miui/systemui/controller/WeatherController$WeatherChangeListener;
.implements Lcom/android/systemui/newstatusbar/policy/ISlots;


# instance fields
.field private final currData:Lcom/android/systemui/newstatusbar/data/TextData;

.field private dispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field private mAreas:Ljava/util/ArrayList;

.field private mDarkColor:I

.field private mDarkIntensity:F

.field private mLightColor:I

.field private mTint:I

.field private mUseTint:Z

.field private slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/newstatusbar/data/TextData;

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "status_weather"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/newstatusbar/data/TextData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/data/TextData;->addKeys([Ljava/lang/String;)Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/newstatusbar/views/WeatherView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/newstatusbar/views/WeatherView$1;-><init>(Lcom/android/systemui/newstatusbar/views/WeatherView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/data/Data;->addListener(Lcom/android/systemui/newstatusbar/data/Data$OnDataChangeListener;)Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/Data;->update()Lcom/android/systemui/newstatusbar/data/Data;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/data/TextData;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->currData:Lcom/android/systemui/newstatusbar/data/TextData;

    return-void
.end method


# virtual methods
.method protected getData()Lcom/android/systemui/newstatusbar/data/TextData;
    .registers 2

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->currData:Lcom/android/systemui/newstatusbar/data/TextData;

    goto :goto_1

    nop

    :goto_1
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttached()V
    .registers 2

    goto :goto_1

    nop

    :goto_0
    return-void

    :goto_1
    const-class v0, Lcom/miui/systemui/controller/WeatherController;

    goto :goto_4

    nop

    :goto_2
    invoke-virtual {v0, p0}, Lcom/miui/systemui/controller/WeatherController;->addCallback(Lcom/miui/systemui/controller/WeatherController$WeatherChangeListener;)V

    goto :goto_5

    nop

    :goto_3
    check-cast v0, Lcom/miui/systemui/controller/WeatherController;

    goto :goto_2

    nop

    :goto_4
    invoke-static {v0}, Lcom/android/systemui/SysDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/WeatherView;->update()V

    goto :goto_0

    nop
.end method

.method public onDarkChanged(Ljava/util/ArrayList;FI)V
    .registers 11

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mAreas:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mDarkIntensity:F

    iput p3, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mTint:I

    iget v4, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mLightColor:I

    iget v5, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mDarkColor:I

    iget-boolean v6, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mUseTint:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/newstatusbar/views/WeatherView;->updateLightDarkTint$2(Ljava/util/ArrayList;FIIIZ)V

    return-void
.end method

.method protected onDetached()V
    .registers 2

    goto :goto_0

    nop

    :goto_0
    const-class v0, Lcom/miui/systemui/controller/WeatherController;

    goto :goto_3

    nop

    :goto_1
    if-nez v0, :cond_0

    goto :goto_7

    :cond_0
    goto :goto_6

    nop

    :goto_2
    check-cast v0, Lcom/miui/systemui/controller/WeatherController;

    goto :goto_5

    nop

    :goto_3
    invoke-static {v0}, Lcom/android/systemui/SysDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    nop

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->dispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    goto :goto_1

    nop

    :goto_5
    invoke-virtual {v0, p0}, Lcom/miui/systemui/controller/WeatherController;->removeCallback(Lcom/miui/systemui/controller/WeatherController$WeatherChangeListener;)V

    goto :goto_4

    nop

    :goto_6
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :goto_7
    goto :goto_8

    nop

    :goto_8
    return-void
.end method

.method public onLightDarkTintChanged(IIZ)V
    .registers 11

    iput p1, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mLightColor:I

    iput p2, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mDarkColor:I

    iput-boolean p3, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mUseTint:Z

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mAreas:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mDarkIntensity:F

    iget v3, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->mTint:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/newstatusbar/views/WeatherView;->updateLightDarkTint$2(Ljava/util/ArrayList;FIIIZ)V

    return-void
.end method

.method public onWeatherChange(Lcom/miui/systemui/controller/WeatherController$WeatherInfo;)V
    .registers 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/miui/systemui/controller/WeatherController$WeatherInfo;->temperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "°C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/WeatherView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSlot(Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;)V
    .registers 5

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->slot:Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/newstatusbar/controllers/ElementController;->getDispather(Lcom/android/systemui/newstatusbar/controllers/ElementController$Slots;Lcom/android/systemui/newstatusbar/policy/ISlots;)Lcom/android/systemui/plugins/DarkIconDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/WeatherView;->dispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->TAG:Ljava/lang/String;

    const-string v2, "setSlot: WeatherView dispatcher = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateLightDarkTint$2(Ljava/util/ArrayList;FIIIZ)V
    .registers 9

    if-eqz p6, :cond_0

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getDarkIntensity(Ljava/util/ArrayList;Landroid/view/View;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move v0, p5

    goto :goto_0

    :cond_1
    move v0, p4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/WeatherView;->setTextColor(I)V

    return-void
.end method

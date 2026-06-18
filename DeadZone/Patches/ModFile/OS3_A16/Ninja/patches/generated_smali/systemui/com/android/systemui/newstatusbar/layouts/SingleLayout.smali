.class public Lcom/android/systemui/newstatusbar/layouts/SingleLayout;
.super Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final priorArray:[Ljava/lang/String;


# instance fields
.field private final iconSize:I

.field private isCenterEnableByIsland:Z

.field public isHideInPromptVisible:Z

.field private final longClick:Ljava/lang/Runnable;

.field private mChild:Landroid/view/View;

.field private mClockView:Landroid/view/View;

.field private mName:Ljava/lang/String;

.field private mPosition:I

.field private mPrior:I

.field private mVisible:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-class v0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->TAG:Ljava/lang/String;

    const-string v1, "elem_clock"

    const-string v2, "elem_net1"

    const-string v3, "elem_net2"

    const-string v4, "elem_bat"

    const-string v5, "elem_wifi"

    const-string v6, "elem_speed"

    const-string v7, "elem_date"

    const-string v8, "elem_status"

    const-string v9, "elem_weather"

    const-string v10, "fullscreen_notification_icon_area"

    const-string v11, "elem_prompt"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->priorArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x5

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->isCenterEnableByIsland:Z

    new-instance v0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout$1;-><init>(Lcom/android/systemui/newstatusbar/layouts/SingleLayout;)V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->longClick:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_icon_height"

    invoke-static {p1, v1}, Landroid/Utils/Utils;->DimenToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v1, v0, 0x3

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->iconSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/newstatusbar/layouts/SingleLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->startActivityOnClkick()V

    return-void
.end method

.method private compare(FF)Z
    .registers 11

    add-float v0, p1, p2

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    sub-float v2, p1, p2

    float-to-double v4, v2

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private findChild()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mChild:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private getIntentForName()Landroid/content/Intent;
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "miui.intent.action.Elem_"

    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->priorArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "com.android.settings.statusbarelement.StatusBarElementClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Часы"

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "com.android.settings.statusbarelement.StatusBarElementSpeed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Скорость подключения"

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "com.android.settings.statusbarelement.StatusBarElementDate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Настройки даты"

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v2, "com.android.settings.statusbarelement.StatusBarElementBat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Батарея"

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v2, "com.android.settings.statusbarelement.StatusBarElementStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Иконки статусов"

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v2, "com.android.settings.statusbarelement.StatusBarElementWeather"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Погода в строке состояния"

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v2, "com.android.settings.statusbarelement.StatusBarElementNotif"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Настройки уведомлений"

    goto :goto_1

    :cond_7
    :goto_0
    const-string v2, "com.android.settings.statusbarelement.StatusBarElementNet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Иконки сети"

    :cond_8
    :goto_1
    const-string v4, ":settings:show_fragment"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, ":settings:show_fragment_title"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getPriorforName(Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->priorArray:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    return v1
.end method

.method private initial()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getPriorforName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mPrior:I

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->updateVisibility()V

    return-void
.end method

.method private isEnableAnim()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const-string v1, "elem_status"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const-string v1, "fullscreen_notification_icon_area"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNotif()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fullscreen_notification_icon_area"

    invoke-static {v1, v2}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startActivityOnClkick()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->performHapticFeedback(I)Z

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getIntentForName()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiPickerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/SysDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->findChild()V

    return-void
.end method

.method public asView()Lcom/android/systemui/newstatusbar/layouts/SingleLayout;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/systemui/newstatusbar/layouts/SingleLayout;",
            ">()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public getAddedChild()Landroid/view/View;
    .registers 4

    instance-of v0, p0, Lcom/android/systemui/newstatusbar/layouts/TransferMobileLayout;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/newstatusbar/layouts/OverflowLayout;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getElementName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutWidth()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->isVisibleByPlaceCalculation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mPosition:I

    return v0
.end method

.method public getPrior()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mPrior:I

    return v0
.end method

.method public getRealMeasuredWidth()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mChild:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/newstatusbar/layouts/OverflowLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/newstatusbar/layouts/OverflowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/layouts/OverflowLayout;->getRealMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->rightMargin:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isChange(IIII)Z
    .registers 7

    goto :goto_8

    nop

    :goto_0
    int-to-float v0, p4

    goto :goto_6

    nop

    :goto_1
    int-to-float v1, v1

    goto :goto_a

    nop

    :goto_2
    const/4 v0, 0x1

    :goto_3
    goto :goto_17

    nop

    :goto_4
    goto :goto_3

    :goto_5
    goto :goto_2

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getBottom()I

    move-result v1

    goto :goto_12

    nop

    :goto_7
    int-to-float v0, p3

    goto :goto_d

    nop

    :goto_8
    int-to-float v0, p1

    goto :goto_1b

    nop

    :goto_9
    if-eqz v0, :cond_0

    goto :goto_5

    :cond_0
    goto :goto_7

    nop

    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->compare(FF)Z

    move-result v0

    goto :goto_11

    nop

    :goto_b
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->compare(FF)Z

    move-result v0

    goto :goto_15

    nop

    :goto_c
    const/4 v0, 0x0

    goto :goto_4

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getRight()I

    move-result v1

    goto :goto_1

    nop

    :goto_e
    int-to-float v1, v1

    goto :goto_b

    nop

    :goto_f
    int-to-float v0, p2

    goto :goto_18

    nop

    :goto_10
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->compare(FF)Z

    move-result v0

    goto :goto_13

    nop

    :goto_11
    if-eqz v0, :cond_1

    goto :goto_5

    :cond_1
    goto :goto_0

    nop

    :goto_12
    int-to-float v1, v1

    goto :goto_10

    nop

    :goto_13
    if-nez v0, :cond_2

    goto :goto_1a

    :cond_2
    goto :goto_19

    nop

    :goto_14
    int-to-float v1, v1

    goto :goto_16

    nop

    :goto_15
    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    goto :goto_f

    nop

    :goto_16
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->compare(FF)Z

    move-result v0

    goto :goto_9

    nop

    :goto_17
    return v0

    :goto_18
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getTop()I

    move-result v1

    goto :goto_14

    nop

    :goto_19
    goto :goto_5

    :goto_1a
    goto :goto_c

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getLeft()I

    move-result v1

    goto :goto_e

    nop
.end method

.method public isVisibleByPlaceCalculation()Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getRealMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->isEnableAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mWidth:I

    iget v1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->iconSize:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onFinishInflate()V
    .registers 1

    goto :goto_3

    nop

    :goto_0
    return-void

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->initial()V

    goto :goto_0

    nop

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->findChild()V

    goto :goto_1

    nop

    :goto_3
    invoke-super {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->onFinishInflate()V

    goto :goto_2

    nop
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->onViewAdded(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->findChild()V

    return-void
.end method

.method public preLayout(IIII)V
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->isChange(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->layout(IIII)V

    :cond_1
    return-void
.end method

.method public resetLongClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->longClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCenterEnableByIsland(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->isCenterEnableByIsland:Z

    return-void
.end method

.method public setMaxMeasureWidth(I)V
    .registers 5

    iget v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mWidth:I

    if-eq v0, p1, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getRealMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mWidth:I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->isEnableAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mChild:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/newstatusbar/layouts/OverflowLayout;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/systemui/newstatusbar/layouts/OverflowLayout;

    iget v1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->leftMargin:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/layouts/OverflowLayout;->setWidth(I)V

    :cond_2
    return-void
.end method

.method public setPosition(I)V
    .registers 3

    iput p1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mPosition:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->bringToFront()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mPrior:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getPriorforName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mPrior:I

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->setVisibility(I)V

    return-void
.end method

.method public updateVisibility()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mName:Ljava/lang/String;

    const-string v1, "elem_net1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "elem_net2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "elem_net"

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_element_visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/preference/SettingsEliteHelper;->getBoolofSettings(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->mVisible:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->setVisibility(I)V

    return-void
.end method

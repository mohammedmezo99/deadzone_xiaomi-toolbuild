.class public Lcom/android/systemui/newstatusbar/sim/SimInOutView;
.super Lcom/android/systemui/newstatusbar/views/WifiInOutView;


# instance fields
.field public mIds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/views/WifiInOutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/newstatusbar/sim/SimInOutView;->mIds:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/newstatusbar/views/WifiInOutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/newstatusbar/sim/SimInOutView;->mIds:I

    return-void
.end method


# virtual methods
.method public getData()Lcom/android/systemui/newstatusbar/data/IconData;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimInOutView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimInOutView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimInOutView;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;->getSimTypeInOutData()Lcom/android/systemui/newstatusbar/data/IconData;

    move-result-object v0

    return-object v0
.end method

.method public setImageResource(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/newstatusbar/sim/SimInOutView;->mIds:I

    invoke-super {p0, p1}, Lcom/android/systemui/newstatusbar/views/WifiInOutView;->setImageResource(I)V

    return-void
.end method

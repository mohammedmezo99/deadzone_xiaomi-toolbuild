.class Lcom/android/systemui/newstatusbar/sim/SimTypeContainer$2;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer$2;->this$0:Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer$2;->this$0:Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;

    const-string v1, "show_type_name_mobile"

    invoke-static {v1}, Landroid/preference/SettingsEliteHelper;->getBoolofSettings1(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->access$002(Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer$2;->this$0:Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->access$100(Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->setVisibility(I)V

    return-void
.end method

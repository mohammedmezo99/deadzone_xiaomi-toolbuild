.class Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/newstatusbar/data/Data$OnDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController$2;->this$0:Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController$2;->this$0:Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;->access$100(Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/StatusBarIconViewController;->updateCallBacks(Ljava/util/ArrayList;)V

    return-void
.end method

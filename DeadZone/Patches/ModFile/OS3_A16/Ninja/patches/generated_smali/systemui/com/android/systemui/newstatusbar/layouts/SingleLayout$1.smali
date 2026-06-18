.class Lcom/android/systemui/newstatusbar/layouts/SingleLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/layouts/SingleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/layouts/SingleLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/layouts/SingleLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout$1;->this$0:Lcom/android/systemui/newstatusbar/layouts/SingleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/SingleLayout$1;->this$0:Lcom/android/systemui/newstatusbar/layouts/SingleLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->access$000(Lcom/android/systemui/newstatusbar/layouts/SingleLayout;)V

    return-void
.end method

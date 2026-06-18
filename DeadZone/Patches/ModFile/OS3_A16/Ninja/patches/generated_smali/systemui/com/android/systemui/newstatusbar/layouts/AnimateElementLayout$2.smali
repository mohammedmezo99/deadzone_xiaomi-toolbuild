.class Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout$2;->this$0:Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout$2;->this$0:Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;->access$100(Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout$2;->this$0:Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;->access$200(Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout$2;->this$0:Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;->access$200(Lcom/android/systemui/newstatusbar/layouts/AnimateElementLayout;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

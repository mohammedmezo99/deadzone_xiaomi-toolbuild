.class Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$2;->this$0:Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$2;->this$0:Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->access$200(Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;)V

    return-void
.end method

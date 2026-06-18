.class Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$1;->this$0:Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$1;->this$0:Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;

    new-instance v1, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$SettingsObserver;

    iget-object v2, p0, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$1;->this$0:Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;

    invoke-direct {v1, v2}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$SettingsObserver;-><init>(Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;)V

    invoke-static {v0, v1}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->access$002(Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$SettingsObserver;)Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$SettingsObserver;

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$1;->this$0:Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->access$000(Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;)Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$SettingsObserver;->register()V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$1;->this$0:Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->access$100(Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout$1;->this$0:Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;->access$200(Lcom/android/systemui/newstatusbar/layouts/ElementBgLayout;)V

    return-void
.end method

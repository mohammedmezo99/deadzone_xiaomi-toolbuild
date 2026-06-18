.class final Lcom/android/systemui/newstatusbar/layouts/MainLayout$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/layouts/MainLayout;->animateShow(Lcom/android/systemui/newstatusbar/layouts/MainLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Lcom/android/systemui/newstatusbar/layouts/MainLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$4;->val$view:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$4;->val$view:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->setTranslationX(F)V

    return-void
.end method

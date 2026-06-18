.class Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;->access$000(Lcom/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout;)V

    return-void
.end method

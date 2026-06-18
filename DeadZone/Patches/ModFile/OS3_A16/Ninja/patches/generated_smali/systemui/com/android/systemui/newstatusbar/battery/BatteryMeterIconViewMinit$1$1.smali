.class Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1$1;->this$1:Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1;

    iput-object p2, p0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1$1;->this$1:Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1;

    iget-object v0, v0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1;->this$0:Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit;

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit;->superSetImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

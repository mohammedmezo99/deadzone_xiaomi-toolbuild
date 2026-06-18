.class public abstract Lcom/miui/systemui/modulesettings/KeyguardSettings;
.super Ljava/lang/Object;


# static fields
.field public static final CHARGE_ANIM_TYPE:Landroid/net/Uri;

.field public static final WAKEUP_FOR_NOTIFICATION:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "wakeup_for_keyguard_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/systemui/modulesettings/KeyguardSettings;->WAKEUP_FOR_NOTIFICATION:Landroid/net/Uri;

    const-string v0, "charge_animation_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/systemui/modulesettings/KeyguardSettings;->CHARGE_ANIM_TYPE:Landroid/net/Uri;

    return-void
.end method

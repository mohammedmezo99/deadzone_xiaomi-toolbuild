.class final Lbg/mods/Lockscreen/ChargingInfoHelper$ChargingInfo;
.super Ljava/lang/Object;


# instance fields
.field current:D

.field power:D

.field temp:D

.field voltage:D


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbg/mods/Lockscreen/ChargingInfoHelper$ChargingInfo;->temp:D

    iput-wide v0, p0, Lbg/mods/Lockscreen/ChargingInfoHelper$ChargingInfo;->current:D

    iput-wide v0, p0, Lbg/mods/Lockscreen/ChargingInfoHelper$ChargingInfo;->voltage:D

    iput-wide v0, p0, Lbg/mods/Lockscreen/ChargingInfoHelper$ChargingInfo;->power:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/injector/KeyguardIndicationHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lbg/mods/Lockscreen/ChargingInfoHelper$ChargingInfo;-><init>()V

    return-void
.end method

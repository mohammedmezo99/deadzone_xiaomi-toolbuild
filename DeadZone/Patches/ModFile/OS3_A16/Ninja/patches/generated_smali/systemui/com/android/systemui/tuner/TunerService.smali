.class public abstract Lcom/android/systemui/tuner/TunerService;
.super Ljava/lang/Object;


# direct methods
.method public static parseIntegerSwitch(Ljava/lang/String;Z)Z
    .registers 2

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    :cond_1
    return p1
.end method


# virtual methods
.method public varargs abstract addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
.end method

.method public abstract getValue(ILjava/lang/String;)I
.end method

.method public abstract removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
.end method

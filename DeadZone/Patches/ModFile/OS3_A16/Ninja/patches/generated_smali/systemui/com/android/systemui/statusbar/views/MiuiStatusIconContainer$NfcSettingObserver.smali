.class public final Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$NfcSettingObserver;
.super Landroid/database/ContentObserver;


# instance fields
.field private final host:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$NfcSettingObserver;->host:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$NfcSettingObserver;->host:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer$NfcSettingObserver;->onChange(Z)V

    return-void
.end method

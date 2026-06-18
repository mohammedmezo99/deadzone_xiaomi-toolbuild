.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$3;
.super Landroid/database/ContentObserver;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$3;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$3;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;->updateExpandTopNotification()V

    return-void
.end method

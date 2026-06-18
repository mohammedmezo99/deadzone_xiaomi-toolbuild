.class public Lcom/android/systemui/newstatusbar/layouts/NotificationLayout;
.super Lcom/android/systemui/newstatusbar/layouts/SingleLayout;


# instance fields
.field private layoutListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setLayoutListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/layouts/NotificationLayout;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

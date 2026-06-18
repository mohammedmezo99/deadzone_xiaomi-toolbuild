.class Lcom/android/systemui/newstatusbar/views/AlphaColorView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/newstatusbar/data/Data$OnDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/views/AlphaColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/views/AlphaColorView;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/views/AlphaColorView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/views/AlphaColorView$1;->this$0:Lcom/android/systemui/newstatusbar/views/AlphaColorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/AlphaColorView$1;->this$0:Lcom/android/systemui/newstatusbar/views/AlphaColorView;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/views/AlphaColorView;->update()V

    return-void
.end method

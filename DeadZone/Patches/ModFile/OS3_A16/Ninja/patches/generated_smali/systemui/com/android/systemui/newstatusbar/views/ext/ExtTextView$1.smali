.class Lcom/android/systemui/newstatusbar/views/ext/ExtTextView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView$1;->this$0:Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView$1;->this$0:Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView$1;->this$0:Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->update()V

    :cond_0
    return-void
.end method

.class public Lcom/android/server/policy/PhoneWindowManager$MusicNext;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicNext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MusicNext;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MusicNext;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    sget v1, Lcom/android/server/policy/VolBtnHelper;->mVolBtnVolUp:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendMediaButtonEvent(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/VolBtnHelper;->mIsVolLongPressed:Z

    return-void
.end method

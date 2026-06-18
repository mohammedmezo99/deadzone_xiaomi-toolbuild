.class public Landroid/Utils/Shell$CommandResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/Utils/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/Utils/Shell$CommandResult;->result:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/Utils/Shell$CommandResult;->result:I

    iput-object p2, p0, Landroid/Utils/Shell$CommandResult;->successMsg:Ljava/lang/String;

    iput-object p3, p0, Landroid/Utils/Shell$CommandResult;->errorMsg:Ljava/lang/String;

    return-void
.end method

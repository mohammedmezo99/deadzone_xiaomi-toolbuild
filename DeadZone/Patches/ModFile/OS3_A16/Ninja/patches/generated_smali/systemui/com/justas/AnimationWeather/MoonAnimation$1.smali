.class Lcom/justas/AnimationWeather/MoonAnimation$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/justas/AnimationWeather/MoonAnimation;->generateStars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/justas/AnimationWeather/MoonAnimation;


# direct methods
.method constructor <init>(Lcom/justas/AnimationWeather/MoonAnimation;)V
    .registers 2

    iput-object p1, p0, Lcom/justas/AnimationWeather/MoonAnimation$1;->this$0:Lcom/justas/AnimationWeather/MoonAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/justas/AnimationWeather/MoonAnimation$1;->this$0:Lcom/justas/AnimationWeather/MoonAnimation;

    invoke-static {v0}, Lcom/justas/AnimationWeather/MoonAnimation;->access$000(Lcom/justas/AnimationWeather/MoonAnimation;)V

    return-void
.end method

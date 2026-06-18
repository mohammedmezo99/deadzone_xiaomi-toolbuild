.class Lcom/justas/AnimationWeather/Weather$QueryHandler;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/justas/AnimationWeather/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryHandler"
.end annotation


# instance fields
.field private mWeather:Lcom/justas/AnimationWeather/Weather;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Lcom/justas/AnimationWeather/Weather$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/justas/AnimationWeather/Weather$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$102(Lcom/justas/AnimationWeather/Weather$QueryHandler;Lcom/justas/AnimationWeather/Weather;)Lcom/justas/AnimationWeather/Weather;
    .registers 2

    iput-object p1, p0, Lcom/justas/AnimationWeather/Weather$QueryHandler;->mWeather:Lcom/justas/AnimationWeather/Weather;

    return-object p1
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5

    goto :goto_0

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_3

    nop

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, p3}, Lcom/justas/AnimationWeather/Weather;->access$300(Lcom/justas/AnimationWeather/Weather;Landroid/database/Cursor;)V

    goto :goto_1

    nop

    :goto_3
    iget-object v0, p0, Lcom/justas/AnimationWeather/Weather$QueryHandler;->mWeather:Lcom/justas/AnimationWeather/Weather;

    goto :goto_2

    nop
.end method

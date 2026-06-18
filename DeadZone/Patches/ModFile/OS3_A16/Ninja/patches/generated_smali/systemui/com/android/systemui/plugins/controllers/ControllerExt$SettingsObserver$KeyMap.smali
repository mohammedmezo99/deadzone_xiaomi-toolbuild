.class Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyMap"
.end annotation


# instance fields
.field isRegister:Z

.field final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->isRegister:Z

    iput-object p1, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public register()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap;->isRegister:Z

    return-void
.end method

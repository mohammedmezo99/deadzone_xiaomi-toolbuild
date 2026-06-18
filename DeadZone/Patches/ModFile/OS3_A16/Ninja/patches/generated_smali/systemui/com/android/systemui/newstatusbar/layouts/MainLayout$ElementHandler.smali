.class Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/layouts/MainLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementHandler"
.end annotation


# instance fields
.field private final mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0  #0x1fa
    return-void

    :pswitch_1  #0x1f4
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->access$000(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V

    goto :goto_0

    :pswitch_2  #0x1f5
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->access$100(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V

    goto :goto_0

    :pswitch_3  #0x1f6
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->arrangeByPlaces()V

    goto :goto_0

    :pswitch_4  #0x1f7
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->fullUpdate()V

    goto :goto_0

    :pswitch_5  #0x1f8
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->access$200(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V

    goto :goto_0

    :pswitch_6  #0x1f9
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->access$300(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V

    goto :goto_0

    :pswitch_7  #0x1fd
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->access$400(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V

    goto :goto_0

    :pswitch_8  #0x1fc
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-static {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->access$500(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V

    goto :goto_0

    :pswitch_9  #0x1fe
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->findNotificationShade()V

    goto :goto_0

    :pswitch_a  #0x1ff
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->startMove(Landroid/view/View;)V

    goto :goto_0

    :pswitch_b  #0x1fb
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->updateStatusIcons()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1  #000001f4
        :pswitch_2  #000001f5
        :pswitch_3  #000001f6
        :pswitch_4  #000001f7
        :pswitch_5  #000001f8
        :pswitch_6  #000001f9
        :pswitch_0  #000001fa
        :pswitch_b  #000001fb
        :pswitch_8  #000001fc
        :pswitch_7  #000001fd
        :pswitch_9  #000001fe
        :pswitch_a  #000001ff
    .end packed-switch
.end method

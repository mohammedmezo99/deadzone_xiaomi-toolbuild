.class public abstract Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

.field public static final LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

.field public static final USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v0, :cond_0

    const-string v0, "com.miui.android.fashiongallery"

    goto :goto_0

    :cond_0
    const-string v0, "com.mfashiongallery.emag"

    :goto_0
    sput-object v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v0, :cond_1

    const-string v0, "com.miui.android.fashiongallery.lockscreen_magazine_provider"

    goto :goto_1

    :cond_1
    const-string v0, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    :goto_1
    const-string v1, "content://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->CONTENT_URI_LOCK_MAGAZINE_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public static isGlobalNeedFeature()Z
    .registers 1

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

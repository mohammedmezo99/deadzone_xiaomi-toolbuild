.class Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powerkeeper/tracker/TrackerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivacyPolicy"
.end annotation


# instance fields
.field private mAllowTrack:Z

.field private mContext:Landroid/content/Context;

.field private mInternational:Z

.field private mIsCloudControlAllow:Z

.field private mIsPrivacyEnable:Z

.field private mIsUserAllow:Z

.field private mPubSubDisable:Z

.field private mRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/powerkeeper/tracker/TrackerManager;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mRegion:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic a(Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mInternational:Z

    return p0
.end method


# virtual methods
.method public isAllowTrack()Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mAllowTrack:Z

    return p0
.end method

.method public isInternational()Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mInternational:Z

    return p0
.end method

.method public isPubSubDisable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mPubSubDisable:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyPolicy{mAllowTrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mAllowTrack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPubSubDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mPubSubDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInternational="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mInternational:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCloudControlAllow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mIsCloudControlAllow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUserAllow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mIsUserAllow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPrivacyEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mIsPrivacyEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRegion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateLicense()V
    .registers 5

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mRegion:Ljava/lang/String;

    const-string v3, "RU"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mInternational:Z

    iget-object v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/utils/Utils;->isUserExperienceAndPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mAllowTrack:Z

    iget-object v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/utils/Utils;->isPrivacyEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/powerkeeper/utils/Utils;->isInEURegion()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mPubSubDisable:Z

    iget-object v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/utils/Utils;->isCloudControlAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mIsCloudControlAllow:Z

    iget-object v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/utils/Utils;->isUserAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mIsUserAllow:Z

    iget-object v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/utils/Utils;->isPrivacyEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy;->mIsPrivacyEnable:Z

    return-void
.end method

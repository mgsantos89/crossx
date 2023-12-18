.class public Lcom/startapps/crossx/model/UserMembership;
.super Ljava/lang/Object;
.source "UserMembership.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/model/UserMembership$CheckinsCount;,
        Lcom/startapps/crossx/model/UserMembership$Status;
    }
.end annotation


# instance fields
.field public box:Lcom/startapps/crossx/model/Box;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "box"
    .end annotation
.end field

.field public boxSettings:Lcom/startapps/crossx/model/BoxSettingsModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "box_settings"
    .end annotation
.end field

.field public cancelDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cancel_date"
    .end annotation
.end field

.field public checkinsCount:Lcom/startapps/crossx/model/UserMembership$CheckinsCount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkins_count"
    .end annotation
.end field

.field public contractPending:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contract_pending"
    .end annotation
.end field

.field public documents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_membership_documents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserMembershipDocument;",
            ">;"
        }
    .end annotation
.end field

.field public enabledUserRenew:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled_user_renew"
    .end annotation
.end field

.field public endDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_date"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public locks:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_membership_locks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserMembershipLockModel;",
            ">;"
        }
    .end annotation
.end field

.field public membership:Lcom/startapps/crossx/model/MembershipModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "membership"
    .end annotation
.end field

.field public paymentPending:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_pending"
    .end annotation
.end field

.field public payments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Payment;",
            ">;"
        }
    .end annotation
.end field

.field public programs:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "programs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public recurrence:Lcom/startapps/crossx/model/UserMembershipRecurrence;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recurrence"
    .end annotation
.end field

.field public startDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_date"
    .end annotation
.end field

.field public status:Lcom/startapps/crossx/model/UserMembership$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocksCount()I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/startapps/crossx/model/UserMembership;->locks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/UserMembershipLockModel;

    .line 69
    iget v2, v2, Lcom/startapps/crossx/model/UserMembershipLockModel;->days:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isShowPlanRenew()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/startapps/crossx/model/UserMembership;->boxSettings:Lcom/startapps/crossx/model/BoxSettingsModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxSettingsModel;->isEnabledAppPlanRenew()Z

    move-result v0

    return v0
.end method

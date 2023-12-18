.class public Lcom/startapps/crossx/model/UserMembershipLockModel;
.super Ljava/lang/Object;
.source "UserMembershipLockModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dateFrom:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_from"
    .end annotation
.end field

.field public dateTo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_to"
    .end annotation
.end field

.field public days:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "days"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public reason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lock_reason"
    .end annotation
.end field

.field public userMembershipMassupdateId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_membership_massupdate_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/startapps/crossx/model/MembershipModel;
.super Ljava/lang/Object;
.source "MembershipModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/model/MembershipModel$LimitDetail;,
        Lcom/startapps/crossx/model/MembershipModel$LimitType;
    }
.end annotation


# instance fields
.field public checkinLimit:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkin_limit"
    .end annotation
.end field

.field public daysLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "days_limit"
    .end annotation
.end field

.field public daysLimitBy:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "days_limit_by"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public isGympass:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_gympass"
    .end annotation
.end field

.field public limitDetail:Lcom/startapps/crossx/model/MembershipModel$LimitDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limit_detail"
    .end annotation
.end field

.field public limitType:Lcom/startapps/crossx/model/MembershipModel$LimitType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limit_type"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsGympass()Z
    .locals 2

    .line 52
    iget v0, p0, Lcom/startapps/crossx/model/MembershipModel;->isGympass:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

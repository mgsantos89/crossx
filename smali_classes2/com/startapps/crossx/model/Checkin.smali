.class public Lcom/startapps/crossx/model/Checkin;
.super Ljava/lang/Object;
.source "Checkin.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/model/Checkin$Status;
    }
.end annotation


# instance fields
.field public categoryId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_id"
    .end annotation
.end field

.field public checkinUnauthorizedId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkin_unauthorized_id"
    .end annotation
.end field

.field public gymClass:Lcom/startapps/crossx/model/GymClassModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gym_class"
    .end annotation
.end field

.field public gympassToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gympass_token"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private is_gympass:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_gympass"
    .end annotation
.end field

.field public noCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "no_count"
    .end annotation
.end field

.field public program:Lcom/startapps/crossx/model/ProgramModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field public reasonForced:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reason_forced"
    .end annotation
.end field

.field public status:Lcom/startapps/crossx/model/Checkin$Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public time:Lcom/startapps/crossx/model/TimeModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field public timeId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_id"
    .end annotation
.end field

.field public workoutDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "workout_date"
    .end annotation
.end field

.field public workoutId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "workout_id"
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
.method public getItemCheckinLabel()I
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/startapps/crossx/model/Checkin;->status:Lcom/startapps/crossx/model/Checkin$Status;

    sget-object v1, Lcom/startapps/crossx/model/Checkin$Status;->RESERVED:Lcom/startapps/crossx/model/Checkin$Status;

    if-ne v0, v1, :cond_0

    const v0, 0x7f1202a4

    return v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/Checkin;->status:Lcom/startapps/crossx/model/Checkin$Status;

    sget-object v1, Lcom/startapps/crossx/model/Checkin$Status;->WAITING_LIST:Lcom/startapps/crossx/model/Checkin$Status;

    if-ne v0, v1, :cond_1

    const v0, 0x7f1202ad

    return v0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/model/Checkin;->status:Lcom/startapps/crossx/model/Checkin$Status;

    sget-object v1, Lcom/startapps/crossx/model/Checkin$Status;->CONFIRMED:Lcom/startapps/crossx/model/Checkin$Status;

    const v2, 0x7f120288

    if-ne v0, v1, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/startapps/crossx/model/Checkin;->isGympass()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f120287

    return v0

    :cond_2
    return v2

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/model/Checkin;->status:Lcom/startapps/crossx/model/Checkin$Status;

    sget-object v1, Lcom/startapps/crossx/model/Checkin$Status;->CANCELED:Lcom/startapps/crossx/model/Checkin$Status;

    if-ne v0, v1, :cond_4

    const v0, 0x7f120283

    return v0

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/model/Checkin;->status:Lcom/startapps/crossx/model/Checkin$Status;

    sget-object v1, Lcom/startapps/crossx/model/Checkin$Status;->NO_SHOW:Lcom/startapps/crossx/model/Checkin$Status;

    if-ne v0, v1, :cond_5

    const v0, 0x7f12029c

    return v0

    :cond_5
    return v2
.end method

.method public getItemCheckinLabelColor()I
    .locals 1

    const v0, 0x7f060034

    return v0
.end method

.method public isGympass()Z
    .locals 2

    .line 45
    iget v0, p0, Lcom/startapps/crossx/model/Checkin;->is_gympass:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

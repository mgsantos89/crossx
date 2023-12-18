.class public Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "UserMembershipCheckinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/Checkin;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Checkin;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 28
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 4

    .line 43
    check-cast p1, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;

    .line 44
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/Checkin;

    .line 46
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->dateLabel:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/startapps/crossx/model/Checkin;->workoutDate:Ljava/lang/String;

    const-string/jumbo v1, "yyyy-MM-dd"

    const-string v2, "dd/MM/yyyy"

    invoke-static {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->programLabel:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/startapps/crossx/model/Checkin;->program:Lcom/startapps/crossx/model/ProgramModel;

    iget-object v0, v0, Lcom/startapps/crossx/model/ProgramModel;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p3, p2, Lcom/startapps/crossx/model/Checkin;->time:Lcom/startapps/crossx/model/TimeModel;

    const-string v0, " - "

    if-eqz p3, :cond_0

    .line 49
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->timeLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/startapps/crossx/model/Checkin;->time:Lcom/startapps/crossx/model/TimeModel;

    iget-object v2, v2, Lcom/startapps/crossx/model/TimeModel;->startTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/startapps/crossx/model/Checkin;->time:Lcom/startapps/crossx/model/TimeModel;

    iget-object v1, v1, Lcom/startapps/crossx/model/TimeModel;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p3, p2, Lcom/startapps/crossx/model/Checkin;->gymClass:Lcom/startapps/crossx/model/GymClassModel;

    if-eqz p3, :cond_1

    .line 52
    :try_start_0
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {p3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p2, Lcom/startapps/crossx/model/Checkin;->gymClass:Lcom/startapps/crossx/model/GymClassModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/GymClassModel;->getStart_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 54
    iget-object v2, p2, Lcom/startapps/crossx/model/Checkin;->gymClass:Lcom/startapps/crossx/model/GymClassModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/GymClassModel;->getEnd_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    .line 55
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    .line 58
    iget-object v2, p1, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->timeLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->timeLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/startapps/crossx/model/Checkin;->gymClass:Lcom/startapps/crossx/model/GymClassModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/GymClassModel;->getStart_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/startapps/crossx/model/Checkin;->gymClass:Lcom/startapps/crossx/model/GymClassModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/GymClassModel;->getEnd_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->timeLabel:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_0
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->itemCheckin:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/Checkin;->getItemCheckinLabel()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 66
    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;->itemCheckin:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/Checkin;->getItemCheckinLabelColor()I

    move-result p2

    invoke-static {p2}, Lcom/startapps/crossx/controller/utils/Utils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 33
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter$ViewHolderUserMembershipCheckin;-><init>(Lcom/startapps/crossx/view/adapter/UserMembershipCheckinAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00b1

    return v0
.end method

.class Lcom/startapps/crossx/view/activity/PersonalRecordActivity$2;
.super Ljava/lang/Object;
.source "PersonalRecordActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->orderPersonalRecordsByDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/startapps/crossx/model/PersonalRecordsDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$2;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/startapps/crossx/model/PersonalRecordsDetails;Lcom/startapps/crossx/model/PersonalRecordsDetails;)I
    .locals 1

    .line 415
    invoke-virtual {p2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getDate()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 414
    invoke-static {p2, v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 416
    invoke-virtual {p1}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 415
    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 410
    check-cast p1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    check-cast p2, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$2;->compare(Lcom/startapps/crossx/model/PersonalRecordsDetails;Lcom/startapps/crossx/model/PersonalRecordsDetails;)I

    move-result p1

    return p1
.end method

.class public Lcom/startapps/crossx/model/PersonalRecordsDetails;
.super Ljava/lang/Object;
.source "PersonalRecordsDetails.java"


# instance fields
.field private date:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:J

.field private result:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/startapps/crossx/model/PersonalRecordsDetails;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/startapps/crossx/model/PersonalRecordsDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/startapps/crossx/model/PersonalRecordsDetails;->id:J

    return-wide v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/startapps/crossx/model/PersonalRecordsDetails;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/startapps/crossx/model/PersonalRecordsDetails;->type:I

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/startapps/crossx/model/PersonalRecordsDetails;->date:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/startapps/crossx/model/PersonalRecordsDetails;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/startapps/crossx/model/PersonalRecordsDetails;->id:J

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/startapps/crossx/model/PersonalRecordsDetails;->result:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/startapps/crossx/model/PersonalRecordsDetails;->type:I

    return-void
.end method

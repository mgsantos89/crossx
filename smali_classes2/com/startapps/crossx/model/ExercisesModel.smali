.class public Lcom/startapps/crossx/model/ExercisesModel;
.super Ljava/lang/Object;
.source "ExercisesModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bestDescription:Ljava/lang/String;

.field private bestResult:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private resultTypeID:J

.field private resultTypeName:Ljava/lang/String;

.field private resultTypeResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestDescription()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/startapps/crossx/model/ExercisesModel;->bestDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getBestResult()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/startapps/crossx/model/ExercisesModel;->bestResult:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/startapps/crossx/model/ExercisesModel;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/startapps/crossx/model/ExercisesModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResultTypeID()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/startapps/crossx/model/ExercisesModel;->resultTypeID:J

    return-wide v0
.end method

.method public getResultTypeName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/startapps/crossx/model/ExercisesModel;->resultTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultTypeResult()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/startapps/crossx/model/ExercisesModel;->resultTypeResult:Ljava/lang/String;

    return-object v0
.end method

.method public setBestResult(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/startapps/crossx/model/ExercisesModel;->bestResult:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/startapps/crossx/model/ExercisesModel;->bestDescription:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/startapps/crossx/model/ExercisesModel;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/startapps/crossx/model/ExercisesModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setResultTypeID(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/startapps/crossx/model/ExercisesModel;->resultTypeID:J

    return-void
.end method

.method public setResultTypeName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/startapps/crossx/model/ExercisesModel;->resultTypeName:Ljava/lang/String;

    return-void
.end method

.method public setResultTypeResult(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/model/ExercisesModel;->resultTypeResult:Ljava/lang/String;

    return-void
.end method

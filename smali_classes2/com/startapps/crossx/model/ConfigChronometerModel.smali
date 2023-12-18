.class public Lcom/startapps/crossx/model/ConfigChronometerModel;
.super Ljava/lang/Object;
.source "ConfigChronometerModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isCrescente:Z

.field private minutes:I

.field private round:I

.field private secondSexercise:I

.field private seconds:I

.field private secondsBreak:I

.field private type:Lcom/startapps/crossx/model/enuns/TimerEnum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMinutes()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->minutes:I

    return v0
.end method

.method public getRound()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->round:I

    return v0
.end method

.method public getSecondSexercise()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->secondSexercise:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->seconds:I

    return v0
.end method

.method public getSecondsBreak()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->secondsBreak:I

    return v0
.end method

.method public getType()Lcom/startapps/crossx/model/enuns/TimerEnum;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->type:Lcom/startapps/crossx/model/enuns/TimerEnum;

    return-object v0
.end method

.method public isCrescente()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->isCrescente:Z

    return v0
.end method

.method public setIsCrescente(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->isCrescente:Z

    return-void
.end method

.method public setMinutes(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->minutes:I

    return-void
.end method

.method public setRound(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->round:I

    return-void
.end method

.method public setSecondExercise(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->secondSexercise:I

    return-void
.end method

.method public setSeconds(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->seconds:I

    return-void
.end method

.method public setSecondsBreak(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->secondsBreak:I

    return-void
.end method

.method public setType(Lcom/startapps/crossx/model/enuns/TimerEnum;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/startapps/crossx/model/ConfigChronometerModel;->type:Lcom/startapps/crossx/model/enuns/TimerEnum;

    return-void
.end method

.class public Lcom/startapps/crossx/model/BenchmarksModel;
.super Ljava/lang/Object;
.source "BenchmarksModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/startapps/crossx/model/BenchmarksModel;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/model/BenchmarksModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/startapps/crossx/model/BenchmarksModel;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/startapps/crossx/model/BenchmarksModel;->name:Ljava/lang/String;

    return-void
.end method

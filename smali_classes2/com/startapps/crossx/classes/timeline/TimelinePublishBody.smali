.class public Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;
.super Ljava/lang/Object;
.source "TimelinePublishBody.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private boxId:Ljava/lang/String;

.field private bytes:[B

.field private postId:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->boxId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->bytes:[B

    .line 20
    iput-object p3, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBoxId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->boxId:Ljava/lang/String;

    return-object v0
.end method

.method public getBytes()[B
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->bytes:[B

    return-object v0
.end method

.method public getPostId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setBoxId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->boxId:Ljava/lang/String;

    return-void
.end method

.method public setBytes([B)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->bytes:[B

    return-void
.end method

.method public setPostId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->postId:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->text:Ljava/lang/String;

    return-void
.end method

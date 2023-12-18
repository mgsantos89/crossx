.class public Lcom/startapps/crossx/modules/likes/SearchLikes;
.super Ljava/lang/Object;
.source "SearchLikes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;
    }
.end annotation


# instance fields
.field private mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

.field private mBoxId:Ljava/lang/String;

.field private mPostId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/rest/clients/BoxHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/startapps/crossx/modules/likes/SearchLikes;->mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    .line 32
    iput-object p2, p0, Lcom/startapps/crossx/modules/likes/SearchLikes;->mBoxId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/startapps/crossx/modules/likes/SearchLikes;->mPostId:Ljava/lang/String;

    return-void
.end method

.method private getData(Ljava/lang/String;Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;)V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/SearchLikes;->mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    iget-object v1, p0, Lcom/startapps/crossx/modules/likes/SearchLikes;->mBoxId:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapps/crossx/modules/likes/SearchLikes;->mPostId:Ljava/lang/String;

    new-instance v3, Lcom/startapps/crossx/modules/likes/SearchLikes$1;

    invoke-direct {v3, p0, p2}, Lcom/startapps/crossx/modules/likes/SearchLikes$1;-><init>(Lcom/startapps/crossx/modules/likes/SearchLikes;Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->likes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method


# virtual methods
.method public getFirstPage(Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/startapps/crossx/modules/likes/SearchLikes;->getData(Ljava/lang/String;Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;)V

    return-void
.end method

.method public getNextPage(Ljava/lang/String;Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/modules/likes/SearchLikes;->getData(Ljava/lang/String;Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;)V

    return-void
.end method

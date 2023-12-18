.class public Lcom/startapps/crossx/modules/timeline/TimelineViewModel;
.super Ljava/lang/Object;
.source "TimelineViewModel.java"

# interfaces
.implements Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;


# instance fields
.field private final boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

.field private final mView:Lcom/startapps/crossx/classes/timeline/TimelineContract$View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/classes/timeline/TimelineContract$View<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;"
        }
    .end annotation
.end field

.field private final userLogin:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetmView(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)Lcom/startapps/crossx/classes/timeline/TimelineContract$View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->mView:Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPost(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;Ljava/lang/String;)Lcom/startapps/crossx/model/TimeLineModel;
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->getPost(Ljava/lang/String;)Lcom/startapps/crossx/model/TimeLineModel;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/classes/timeline/TimelineContract$View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/classes/timeline/TimelineContract$View<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->userLogin:Lcom/startapps/crossx/model/UserModel;

    .line 50
    new-instance v0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    .line 51
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->mView:Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    return-void
.end method

.method private getPost(Ljava/lang/String;)Lcom/startapps/crossx/model/TimeLineModel;
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->mView:Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->getItems()Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/TimeLineModel;

    .line 84
    invoke-virtual {v1}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public blockAllFromUser(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V
    .locals 4

    .line 343
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$7;

    invoke-direct {v3, p0, p1}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$7;-><init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->blockAllFromUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public getPositionTimeLineModel(Lcom/startapps/crossx/model/TimeLineModel;)I
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->mView:Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->getItems()Ljava/util/List;

    move-result-object v0

    .line 398
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/TimeLineModel;

    .line 399
    invoke-virtual {v2}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public isShowButtonDeletePost(Lcom/startapps/crossx/model/TimeLineModel;)Z
    .locals 4

    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-nez v1, :cond_1

    return v0

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->userLogin:Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v2

    .line 69
    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/startapps/crossx/model/enuns/UsersRole;->HEADCOACH:Lcom/startapps/crossx/model/enuns/UsersRole;

    if-ne v2, p1, :cond_3

    sget-object p1, Lcom/startapps/crossx/model/enuns/UsersRole;->MASTER:Lcom/startapps/crossx/model/enuns/UsersRole;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public isUserLiked(Lcom/startapps/crossx/model/TimeLineModel;)Z
    .locals 0

    .line 261
    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->isUserLiked()Z

    move-result p1

    return p1
.end method

.method public onCommentPost(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 0

    return-void
.end method

.method public onDeletePublication(Ljava/lang/String;Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$4;

    invoke-direct {v2, p0, p2}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$4;-><init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->delete(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public onEditPublication(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
    .locals 5

    .line 173
    new-instance v0, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v0}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, v1}, Lcom/squareup/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 176
    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "image/jpeg"

    .line 177
    invoke-static {v1}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    const-string v2, "imageFile"

    const-string/jumbo v3, "temp.jpg"

    .line 179
    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 182
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getBoxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getPostId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$3;

    invoke-direct {v4, p0, p1}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$3;-><init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->editPost(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public onFeatchPublicationsPage(Ljava/lang/String;I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    new-instance v1, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$1;

    invoke-direct {v1, p0, p2}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$1;-><init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->timeLine(Ljava/lang/String;ILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public onLikePost(ZLcom/startapps/crossx/model/TimeLineModel;)V
    .locals 2

    .line 282
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object p1

    .line 284
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$5;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$5;-><init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->likesPost(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public onLoadComments(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->mView:Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->onShowCommentsUI(Lcom/startapps/crossx/model/TimeLineModel;)V

    return-void
.end method

.method public onLoadLikes(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 4

    .line 307
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->mView:Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    invoke-interface {v2}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->getContextActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/startapps/crossx/modules/likes/LikesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "box_id"

    .line 310
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "post_id"

    .line 311
    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->mView:Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    invoke-interface {p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->getContextActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onPublish(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
    .locals 4

    .line 135
    new-instance v0, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v0}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, v1}, Lcom/squareup/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 138
    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "image/jpeg"

    .line 139
    invoke-static {v1}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    const-string v2, "imageFile"

    const-string/jumbo v3, "temp.jpg"

    .line 141
    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 145
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getBoxId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$2;

    invoke-direct {v3, p0, p1}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$2;-><init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->publish(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public onSharePublication(Landroid/content/Context;Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 3

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/*"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "share.jpg"

    invoke-static {v1, p1, v2}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->saveImageForSend(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v2}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->saveImageForSend(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "text/plain"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Subject Here"

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 255
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f120200

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onTextNumberComments(Lcom/startapps/crossx/model/TimeLineModel;)Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getCommentCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->mView:Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->getContextActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12028b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onTextNumberLikes(Lcom/startapps/crossx/model/TimeLineModel;)Ljava/lang/String;
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getLikeCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->mView:Lcom/startapps/crossx/classes/timeline/TimelineContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/classes/timeline/TimelineContract$View;->getContextActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12029a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postComplaint(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V
    .locals 4

    .line 369
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$8;

    invoke-direct {v3, p0, p1}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$8;-><init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->postComplaint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public userComplaint(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V
    .locals 4

    .line 317
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$6;

    invoke-direct {v3, p0, p1}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel$6;-><init>(Lcom/startapps/crossx/modules/timeline/TimelineViewModel;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->userComplaint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

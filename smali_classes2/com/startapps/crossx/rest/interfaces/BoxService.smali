.class public interface abstract Lcom/startapps/crossx/rest/interfaces/BoxService;
.super Ljava/lang/Object;
.source "BoxService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006H\'J&\u0010\t\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\'J6\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\'J6\u0010\u000f\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\'J>\u0010\u0012\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\n\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0006H\'J*\u0010\u0014\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\'J6\u0010\u0016\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\'J\u001e\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u001b0\u001a2\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001dH\'J2\u0010\u001e\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0018\u00010\n\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\'J>\u0010 \u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0018\u00010\n\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0006H\'J,\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006H\'J*\u0010\"\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\'J2\u0010\"\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010#\u0018\u00010\n\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\'J\u001e\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0%0\u00032\u0008\u0008\u0001\u0010&\u001a\u00020\u0006H\'J(\u0010\'\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u00032\n\u0008\u0001\u0010(\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0001\u0010)\u001a\u00020\u001dH\'J0\u0010*\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010#\u0018\u00010\n\u0018\u00010\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0001\u0010+\u001a\u00020\u001dH\'J,\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006H\'\u00a8\u0006-"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/interfaces/BoxService;",
        "",
        "blockAllFromUser",
        "Lretrofit/Call;",
        "Lcom/startapps/crossx/model/TimelineActionResponse;",
        "idBox",
        "",
        "postId",
        "body",
        "boxDetail",
        "",
        "Lcom/startapps/crossx/model/BoxModel;",
        "commentDelete",
        "Lorg/json/JSONObject;",
        "commentId",
        "commentPost",
        "Lcom/startapps/crossx/model/CommentModel;",
        "comment",
        "comments",
        "lastId",
        "delete",
        "Lcom/google/gson/JsonObject;",
        "editPostTimeLine",
        "file",
        "Lcom/squareup/okhttp/RequestBody;",
        "getBox",
        "Lretrofit2/Call;",
        "Lcom/startapps/crossx/model/DataModel;",
        "boxId",
        "",
        "likePost",
        "Lcom/startapps/crossx/model/LikesModel;",
        "likes",
        "postComplaint",
        "publish",
        "Lcom/startapps/crossx/model/TimeLineModel;",
        "searchBox",
        "Lcom/startapps/crossx/model/DataListModel;",
        "search",
        "sendFeedback",
        "description",
        "isPrivate",
        "timeLine",
        "page",
        "userComplaint",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract blockAllFromUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "postId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/TimelineActionResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/box/{idBox}/timeline/{postId}/blockAllFromUser"
    .end annotation
.end method

.method public abstract boxDetail(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/box/{idBox}"
    .end annotation
.end method

.method public abstract commentDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "postId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "commentId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/DELETE;
        value = "/v3/box/{idBox}/timeline/{postId}/comment/{commentId}"
    .end annotation
.end method

.method public abstract commentPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "postId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "comment"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/box/{idBox}/timeline/{postId}/comment"
    .end annotation
.end method

.method public abstract comments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "postId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "lastId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/box/{idBox}/timeline/{postId}/comment"
    .end annotation
.end method

.method public abstract delete(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "post_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/box/{idBox}/timeline/delete"
    .end annotation
.end method

.method public abstract editPostTimeLine(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "postId"
        .end annotation
    .end param
    .param p3    # Lcom/squareup/okhttp/RequestBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/squareup/okhttp/RequestBody;",
            ")",
            "Lretrofit/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/box/{idBox}/timeline/post/{postId}"
    .end annotation
.end method

.method public abstract getBox(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "box_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/DataModel<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "box/{box_id}"
    .end annotation
.end method

.method public abstract likePost(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "postId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/box/{idBox}/timeline/{postId}/like"
    .end annotation
.end method

.method public abstract likes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "postId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "lastId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/box/{idBox}/timeline/{postId}/like"
    .end annotation
.end method

.method public abstract postComplaint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "postId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/TimelineActionResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/box/{idBox}/timeline/{postId}/complaintPost"
    .end annotation
.end method

.method public abstract publish(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Lcom/squareup/okhttp/RequestBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/squareup/okhttp/RequestBody;",
            ")",
            "Lretrofit/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/box/{idBox}/timeline/post"
    .end annotation
.end method

.method public abstract publish(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "text"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/box/{idBox}/timeline/post"
    .end annotation
.end method

.method public abstract searchBox(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "str"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/DataListModel<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "box/search"
    .end annotation
.end method

.method public abstract sendFeedback(Ljava/lang/String;I)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "description"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit/http/Field;
            value = "is_private"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/feedbacks"
    .end annotation
.end method

.method public abstract timeLine(Ljava/lang/String;I)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/box/{idBox}/timeline"
    .end annotation
.end method

.method public abstract userComplaint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "idBox"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "postId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/TimelineActionResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/box/{idBox}/timeline/{postId}/complaintUser"
    .end annotation
.end method

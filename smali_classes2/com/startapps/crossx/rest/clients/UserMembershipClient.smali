.class public Lcom/startapps/crossx/rest/clients/UserMembershipClient;
.super Lcom/startapps/crossx/rest/clients/BaseClient;
.source "UserMembershipClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/clients/BaseClient<",
        "Lcom/startapps/crossx/rest/interfaces/UserMembershipService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    const-class v0, Lcom/startapps/crossx/rest/interfaces/UserMembershipService;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/rest/clients/BaseClient;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public fetchUserMemberships(Ljava/lang/String;IILcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/UserMembershipClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/UserMembershipService;

    invoke-interface {v0, p1, p2, p3}, Lcom/startapps/crossx/rest/interfaces/UserMembershipService;->fetchUserMemberships(Ljava/lang/String;II)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getCheckinsWithUserMembership(JIILcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Checkin;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/UserMembershipClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/UserMembershipService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/startapps/crossx/rest/interfaces/UserMembershipService;->getCheckinsWithUserMembership(JII)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getUserMembership(JLcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/UserMembershipClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/UserMembershipService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/UserMembershipService;->getUserMembership(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public renewUserMembership(JLcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/UserMembershipClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/UserMembershipService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/UserMembershipService;->renewUserMembership(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

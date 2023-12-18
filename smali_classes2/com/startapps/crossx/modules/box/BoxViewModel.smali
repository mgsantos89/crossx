.class public Lcom/startapps/crossx/modules/box/BoxViewModel;
.super Ljava/lang/Object;
.source "BoxViewModel.java"

# interfaces
.implements Lcom/startapps/crossx/classes/box/BoxContract$Presenter;


# instance fields
.field private boxID:Ljava/lang/String;

.field private mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

.field private mView:Lcom/startapps/crossx/classes/box/BoxContract$View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmView(Lcom/startapps/crossx/modules/box/BoxViewModel;)Lcom/startapps/crossx/classes/box/BoxContract$View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/box/BoxViewModel;->mView:Lcom/startapps/crossx/classes/box/BoxContract$View;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/startapps/crossx/classes/box/BoxContract$View;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/startapps/crossx/modules/box/BoxViewModel;->mView:Lcom/startapps/crossx/classes/box/BoxContract$View;

    .line 27
    iput-object p1, p0, Lcom/startapps/crossx/modules/box/BoxViewModel;->boxID:Ljava/lang/String;

    .line 29
    new-instance p1, Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/modules/box/BoxViewModel;->mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/startapps/crossx/modules/box/BoxViewModel;->mBoxApi:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    iget-object v1, p0, Lcom/startapps/crossx/modules/box/BoxViewModel;->boxID:Ljava/lang/String;

    new-instance v2, Lcom/startapps/crossx/modules/box/BoxViewModel$1;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/modules/box/BoxViewModel$1;-><init>(Lcom/startapps/crossx/modules/box/BoxViewModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->boxDetail(Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

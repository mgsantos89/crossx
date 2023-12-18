.class final Lretrofit/RequestBuilderAction$Path;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Path"
.end annotation


# instance fields
.field private final encoded:Z

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    const-string v0, "name == null"

    .line 70
    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lretrofit/RequestBuilderAction$Path;->name:Ljava/lang/String;

    .line 71
    iput-boolean p2, p0, Lretrofit/RequestBuilderAction$Path;->encoded:Z

    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 79
    iget-object v0, p0, Lretrofit/RequestBuilderAction$Path;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-boolean v1, p0, Lretrofit/RequestBuilderAction$Path;->encoded:Z

    invoke-virtual {p1, v0, p2, v1}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Path parameter \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lretrofit/RequestBuilderAction$Path;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\" value must not be null."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

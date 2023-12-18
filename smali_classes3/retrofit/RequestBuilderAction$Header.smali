.class final Lretrofit/RequestBuilderAction$Header;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Header"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    const-string v0, "name == null"

    .line 40
    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lretrofit/RequestBuilderAction$Header;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 46
    :cond_0
    instance-of v0, p2, Ljava/lang/Iterable;

    if-eqz v0, :cond_2

    .line 47
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v1, p0, Lretrofit/RequestBuilderAction$Header;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lretrofit/RequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 54
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 56
    iget-object v3, p0, Lretrofit/RequestBuilderAction$Header;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lretrofit/RequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    :cond_4
    iget-object v0, p0, Lretrofit/RequestBuilderAction$Header;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lretrofit/RequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

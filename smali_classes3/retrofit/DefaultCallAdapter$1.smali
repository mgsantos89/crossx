.class final Lretrofit/DefaultCallAdapter$1;
.super Ljava/lang/Object;
.source "DefaultCallAdapter.java"

# interfaces
.implements Lretrofit/CallAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/DefaultCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit/Retrofit;)Lretrofit/CallAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit/Retrofit;",
            ")",
            "Lretrofit/CallAdapter<",
            "*>;"
        }
    .end annotation

    .line 30
    invoke-static {p1}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lretrofit/Call;

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_0
    invoke-static {p1}, Lretrofit/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 34
    new-instance p2, Lretrofit/DefaultCallAdapter;

    invoke-direct {p2, p1}, Lretrofit/DefaultCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    return-object p2
.end method

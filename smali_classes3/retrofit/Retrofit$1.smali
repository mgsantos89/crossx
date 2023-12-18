.class Lretrofit/Retrofit$1;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final platform:Lretrofit/Platform;

.field final synthetic this$0:Lretrofit/Retrofit;

.field final synthetic val$service:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lretrofit/Retrofit;Ljava/lang/Class;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lretrofit/Retrofit$1;->this$0:Lretrofit/Retrofit;

    iput-object p2, p0, Lretrofit/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object p1

    iput-object p1, p0, Lretrofit/Retrofit$1;->platform:Lretrofit/Platform;

    return-void
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    iget-object v0, p0, Lretrofit/Retrofit$1;->platform:Lretrofit/Platform;

    invoke-virtual {v0, p2}, Lretrofit/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lretrofit/Retrofit$1;->platform:Lretrofit/Platform;

    iget-object v1, p0, Lretrofit/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1, p1, p3}, Lretrofit/Platform;->invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 132
    :cond_1
    iget-object p1, p0, Lretrofit/Retrofit$1;->this$0:Lretrofit/Retrofit;

    invoke-virtual {p1, p2}, Lretrofit/Retrofit;->loadMethodHandler(Ljava/lang/reflect/Method;)Lretrofit/MethodHandler;

    move-result-object p1

    invoke-virtual {p1, p3}, Lretrofit/MethodHandler;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

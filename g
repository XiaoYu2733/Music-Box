.class public final La/g;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 4

    const-string v0, "error = "

    const-string v1, ", message = "

    .line 1
    invoke-static {v0, p1, v1}, La/f;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v1, La/b;->a:Ls3/g;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_26

    const/4 v1, 0x2

    if-eq p1, v1, :cond_23

    const/4 v1, 0x3

    if-eq p1, v1, :cond_20

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1d

    const-string v1, "error_"

    .line 3
    invoke-static {v1, p1}, La/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_1d
    const-string p1, "invalid_display"

    goto :goto_28

    :cond_20
    const-string p1, "internal_time_short"

    goto :goto_28

    :cond_23
    const-string p1, "no_accessibility_access"

    goto :goto_28

    :cond_26
    const-string p1, "internal_error"

    .line 4
    :goto_28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
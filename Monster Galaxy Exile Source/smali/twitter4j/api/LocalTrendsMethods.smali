.class public interface abstract Ltwitter4j/api/LocalTrendsMethods;
.super Ljava/lang/Object;
.source "LocalTrendsMethods.java"


# virtual methods
.method public abstract getAvailableTrends()Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getAvailableTrends(Ltwitter4j/GeoLocation;)Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoLocation;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getLocationTrends(I)Ltwitter4j/Trends;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

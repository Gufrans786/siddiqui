package com.mapbox.maps;

public class TileCacheBudget {
    private Type type;
    private Object value;

    public enum Type {
        TILE_CACHE_BUDGET_IN_MEGABYTES,
        TILE_CACHE_BUDGET_IN_TILES
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public TileCacheBudget(TileCacheBudgetInMegabytes tileCacheBudgetInMegabytes) {
        this.type = Type.TILE_CACHE_BUDGET_IN_MEGABYTES;
        this.value = tileCacheBudgetInMegabytes;
    }

    public TileCacheBudget(TileCacheBudgetInTiles tileCacheBudgetInTiles) {
        this.type = Type.TILE_CACHE_BUDGET_IN_TILES;
        this.value = tileCacheBudgetInTiles;
    }

    public static TileCacheBudget valueOf(TileCacheBudgetInMegabytes tileCacheBudgetInMegabytes) {
        return new TileCacheBudget(tileCacheBudgetInMegabytes);
    }

    public static TileCacheBudget valueOf(TileCacheBudgetInTiles tileCacheBudgetInTiles) {
        return new TileCacheBudget(tileCacheBudgetInTiles);
    }

    public boolean isTileCacheBudgetInMegabytes() {
        return this.type == Type.TILE_CACHE_BUDGET_IN_MEGABYTES;
    }

    public boolean isTileCacheBudgetInTiles() {
        return this.type == Type.TILE_CACHE_BUDGET_IN_TILES;
    }

    public TileCacheBudgetInMegabytes getTileCacheBudgetInMegabytes() {
        if (isTileCacheBudgetInMegabytes()) {
            return (TileCacheBudgetInMegabytes) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (TileCacheBudgetInMegabytes)");
    }

    public TileCacheBudgetInTiles getTileCacheBudgetInTiles() {
        if (isTileCacheBudgetInTiles()) {
            return (TileCacheBudgetInTiles) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (TileCacheBudgetInTiles)");
    }

    public Type getTypeInfo() {
        return this.type;
    }
}

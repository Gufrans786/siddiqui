package com.google.firebase.database.collection;

public class LLRBBlackValueNode<K, V> extends LLRBValueNode<K, V> {
    private int size;

    @Override
    public boolean isRed() {
        return false;
    }

    LLRBBlackValueNode(K k, V v, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2) {
        super(k, v, lLRBNode, lLRBNode2);
        this.size = -1;
    }

    @Override
    protected LLRBNode.Color getColor() {
        return LLRBNode.Color.BLACK;
    }

    @Override
    public int size() {
        if (this.size == -1) {
            this.size = getLeft().size() + 1 + getRight().size();
        }
        return this.size;
    }

    @Override
    void setLeft(LLRBNode<K, V> lLRBNode) {
        if (this.size != -1) {
            throw new IllegalStateException("Can't set left after using size");
        }
        super.setLeft(lLRBNode);
    }

    @Override
    protected LLRBValueNode<K, V> copy(K k, V v, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2) {
        if (k == null) {
            k = getKey();
        }
        if (v == null) {
            v = getValue();
        }
        if (lLRBNode == null) {
            lLRBNode = getLeft();
        }
        if (lLRBNode2 == null) {
            lLRBNode2 = getRight();
        }
        return new LLRBBlackValueNode(k, v, lLRBNode, lLRBNode2);
    }
}

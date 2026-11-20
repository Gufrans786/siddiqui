package com.google.firebase.database.collection;

public class LLRBRedValueNode<K, V> extends LLRBValueNode<K, V> {
    @Override
    public boolean isRed() {
        return true;
    }

    LLRBRedValueNode(K k, V v) {
        super(k, v, LLRBEmptyNode.getInstance(), LLRBEmptyNode.getInstance());
    }

    LLRBRedValueNode(K k, V v, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2) {
        super(k, v, lLRBNode, lLRBNode2);
    }

    @Override
    protected LLRBNode.Color getColor() {
        return LLRBNode.Color.RED;
    }

    @Override
    public int size() {
        return getLeft().size() + 1 + getRight().size();
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
        return new LLRBRedValueNode(k, v, lLRBNode, lLRBNode2);
    }
}

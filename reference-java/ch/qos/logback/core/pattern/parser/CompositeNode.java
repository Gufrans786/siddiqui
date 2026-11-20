package ch.qos.logback.core.pattern.parser;

public class CompositeNode extends SimpleKeywordNode {
    Node childNode;

    CompositeNode(String str) {
        super(2, str);
    }

    @Override
    public boolean equals(Object obj) {
        if (!super.equals(obj) || !(obj instanceof CompositeNode)) {
            return false;
        }
        Node node = this.childNode;
        Node node2 = ((CompositeNode) obj).childNode;
        if (node != null) {
            return node.equals(node2);
        }
        return node2 == null;
    }

    public Node getChildNode() {
        return this.childNode;
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    public void setChildNode(Node node) {
        this.childNode = node;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.childNode != null ? "CompositeNode(" + this.childNode + ")" : "CompositeNode(no child)");
        sb.append(printNext());
        return sb.toString();
    }
}

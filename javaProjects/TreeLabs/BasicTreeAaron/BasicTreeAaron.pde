void setup() {
    BinarySearchTree<Integer> tree = new BinarySearchTree<Integer>();

    tree.add(90);//add is method 1
    tree.add(100);
    tree.add(80);
    tree.add(70);
    tree.add(85);
    tree.add(98);
    tree.add(120);

    println("IN ORDER");//2
    tree.inOrder();
    println();
    println("PRE ORDER");//3
    tree.preOrder();
    println();
    println("POST ORDER");//4
    tree.postOrder();
    println();
    println("REVERSE ORDER");//5
    tree.revOrder();

    //println("\n\nTree before removing any nodes - using level order traversal.");
    //tree.levelOrder();//6

    //println("\nNumber of levels is " + tree.getNumLevels());//7
    //println("\nTree width is " + tree.getWidth());//8
    //println("\nTree height is " + tree.getHeight());//9
    println("\nNumber of leaves is " + tree.getNumLeaves());//10
    println("\nNumber of nodes is " + tree.getNumNodes());//11
    //println("\n\n");//search is method 12
    //println(tree.search(100)?"The tree contains 100!":"The does not contain 100!");
    //println(tree.search(114)?"The tree contains 114!":"The does not contain 114!");

    //tree.remove(90);//13
    //println("\nTree after removing 90.");
    //tree.levelOrder();

    //tree.remove(70);
    //println("\nTree after removing 70.");
    //tree.levelOrder();

    //println();
    //println("The smallest tree node " + tree.getSmallest());//14
    //println();
    //println(tree);//15
}

public interface Treeable<T extends Comparable<T>> {
    public Object getValue();
    public Treeable<T> getLeft();
    public Treeable<T> getRight();
    public void setValue(T value);
    public void setLeft(Treeable<T> left);
    public void setRight(Treeable<T> right);
}



//first class/////////////
import java.util.LinkedList;
import java.util.Queue;

public class BinarySearchTree<T extends Comparable<T>> {
    private TreeNode<T> root;
    public BinarySearchTree() {
        root=null;
    }
    public void add(T val) {
        root= add(val, root);
    }
    //private helper method
    private TreeNode<T> add(T val, TreeNode<T> tree) {//1
        if (tree==null)
            tree=new TreeNode<T>(val);

        T treeValue=tree.getValue();
        int dirTest=val.compareTo(treeValue);
        if (dirTest<0)
            tree.setLeft(add(val, tree.getLeft()));
        if (dirTest>0)
            tree.setRight(add(val, tree.getRight()));
        return tree;
    }

    public void inOrder() {
        inOrder(root);
    }
    private void inOrder(TreeNode tree) {//2
    if (tree != null) {
        inOrder(tree.getLeft());
        print(tree.getValue() + " ");
        inOrder(tree.getRight());
    }
    }

    public void preOrder() {
        preOrder(root);
    }
    private void preOrder(TreeNode tree) {//3
       if (tree != null) {
        print(tree.getValue() + " ");
        preOrder(tree.getLeft());
        preOrder(tree.getRight());
    }
    }

    public void postOrder() {
        postOrder(root);
    }
    private void postOrder(TreeNode tree) {//4
       if (tree != null) {
        postOrder(tree.getLeft());
        postOrder(tree.getRight());
        print(tree.getValue() + " ");
    }
    }

    public void revOrder() {
        revOrder(root);
    }
    public void revOrder(TreeNode tree) {//5
        if (tree != null) {
        revOrder(tree.getRight());
        print(tree.getValue() + " ");
        revOrder(tree.getLeft());
    }
    }

    public void levelOrder() {
        levelOrder(root);
    }
    public void levelOrder(TreeNode tree) {//6 
        Queue<TreeNode>level=new LinkedList<TreeNode>();
        level.add(tree);//adds the tree to a queue to remove in 
        //LIFO order (last in, first out)
        //it is also a breadth first search BFS algorithm!
        //BFS goes wide, where as depth first algorithms (DFS)
        //like preOrder, postOrder, reverseORder go deep first and 
        //use recursion which uses the stack in
        //FIFO order (first in, first out)
        //check out the visualizations on graphs...which are also
        //node based https://graph.brianreber.com/
        //so the root is pulled off, then it's children are added to the queue

        while (!level.isEmpty()) {//then removes one by one
            TreeNode node = level.remove();
            print(node.getValue()+" ");

            if (node.getLeft()!=null) {
                level.add(node.getLeft());
            }
            if (node.getRight()!=null) {
                level.add(node.getRight());
            }
        }
    }

    public int getNumLevels() {
        return getNumLevels(root);
    }
    private int getNumLevels(TreeNode tree) {//7
        if (tree!=null)
            return 1+Math.max(getNumLevels(tree.getLeft()), getNumLevels(tree.getRight()));
        return 0;
    }

    public int getWidth() {
        return getWidth(root);
    }
    private int getWidth(TreeNode tree) {//8
    return -1;
}

    public int getHeight() {//9
    return -1;


}

    public int getNumLeaves() {
        return getNumLeaves(root);
    }
    private int getNumLeaves(TreeNode tree) {//10
    if (tree==null){
        return 0;
    } else if (tree.getRight()==null && tree.getLeft()==null){
        return 1;
     }
    return getNumLeaves(tree.getRight()) + getNumLeaves(tree.getLeft());
}

    public int getNumNodes() {
        return getNumNodes(root);
    }
    private int getNumNodes(TreeNode tree) {//11
    if (tree==null){
        return 0;
    }
    return 1 + getNumNodes(tree.getRight()) + getNumNodes(tree.getLeft());
    }

    public boolean search(T val) {
        return search(val, root);
    }
    private boolean search(T val, TreeNode<T> tree) {//12
        if (tree != null) {
            int dirTest = val.compareTo(tree.getValue());
            if (dirTest == 0 ) 
                return true;
            else if (dirTest < 0)
                return search(val, tree.getLeft());
            else if (dirTest > 0)
                return search(val, tree.getRight());
        }
        return false;
    }

    public void remove(T val) {
        root = remove(val, root);
    }
    private TreeNode remove(T val, TreeNode<T> tree) {//13
        if (tree == null) {//tricky...trace to understand how this works:
            return null;
        }
        T treeValue = tree.getValue();
        int dirTest = val.compareTo(treeValue);

        if (dirTest < 0)
            tree.setLeft(remove(val, tree.getLeft()));
        else if (dirTest > 0)
            tree.setRight(remove(val, tree.getRight()));//traverse until node is found, then:
            
            
        else {
            //case 1" remove leaf node
            if (tree.getRight()==null&&tree.getLeft()==null) {
                return null;//set pointer to null effectively removing the leaf node
                
                //case 2: remove a node with one child
            } 
            if (tree.getLeft()==null) {
                return tree.getRight();
            } 
            
            if (tree.getRight()==null) {
                return tree.getLeft();
                
                //case 3: two children
            } else {
                TreeNode<T> successor=getSmallest(tree.getRight());//get smallest node
                tree.setValue(successor.getValue());//set smallest node value
                tree.setRight(remove(successor.getValue(), tree.getRight()));//set smallest node pointer
            }
        }
        return tree;
    }

    public Comparable getSmallest() {
        return getSmallest(root).getValue();
    }
    private TreeNode<T> getSmallest(TreeNode<T> tree) {//14
       return tree;/////////NOT DONE
       
       
    }

    public String toString() {
        return toString(root);
    }
    private String toString(TreeNode tree) {//15
        
        return "toString method";
        
    }
}


//new class///////////////
public class TreeNode<T extends Comparable<T>> implements Treeable<T>
{
  private T treeNodeValue;
  private TreeNode<T> leftTreeNode;
  private TreeNode<T> rightTreeNode;

  public TreeNode( )
  {
    treeNodeValue = null;
    leftTreeNode = null;
    rightTreeNode = null;
  }

  public TreeNode(T value)
  {
    treeNodeValue = value;
    leftTreeNode = null;
    rightTreeNode = null;
  }

  public TreeNode(T value, TreeNode<T> left, TreeNode<T> right)
  {
    treeNodeValue = value;
    leftTreeNode = left;
    rightTreeNode = right;
  }

  public T getValue()
  {
    return treeNodeValue;
  }

  public TreeNode<T> getLeft()
  {
    return leftTreeNode;
  }

  public TreeNode<T> getRight()
  {
    return rightTreeNode;
  }

  public void setValue(T value)
  {
    treeNodeValue = value;
  }

  public void setLeft(Treeable<T> left)
  {
    leftTreeNode = (TreeNode<T>)left;
  }

  public void setRight(Treeable<T> right)
  {
    rightTreeNode = (TreeNode<T>)right;

  }
}

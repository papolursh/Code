using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GMO_CodeTest
{
    public class DNode
    {
        public int data;
        public DNode prev;
        public DNode next;
        public DNode(int d)
        {
            data = d;
        }
    }
    public class DoubleLinkedList
    {
        private DNode Node;
        public void InsertLast(int data)
        {
            var node = new DNode(data);
            if (Node == null)
            {
                Node = node;
                return;
            }

            DNode currNode = Node;
            while (currNode.next != null)
            {
                currNode = currNode.next;
            }

            currNode.next = node;
            node.prev = currNode;
        }

        public void Remove(int data)
        {
            DNode tempNode = Node;
            while (tempNode != null && tempNode.data != data)
            {
                tempNode = tempNode.next;
            }

            if (tempNode == null) return;

            if (tempNode.next != null)
            {
                tempNode.next.prev = tempNode.prev;
            }

            if (tempNode.prev != null)
            {
                tempNode.prev.next = tempNode.next;
            }
        }

        public string Print()
        {
            StringBuilder sbuilder = new StringBuilder();
            DNode node = Node;
            while (node != null)
            {
                sbuilder.Append(node.data + ",");
                node = node.next;
            }

            return sbuilder.ToString();
        }
    }
}
/*
95:不同的二叉搜索树
给你一个整数 n ，请你生成并返回所有由 n 个节点组成且节点值从 1 到 n 互不相同的不同 二叉搜索树 。可以按 任意顺序 返回答案。
*/
/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {number} n
 * @return {TreeNode[]}
 */
var generateTrees = function(n) {
  if(n < 1) {
      return []
  }
  return getAns(1, n)

  function getAns(start, end) {
      const list = []
      if(start > end) {
          list.push(null)
          return list
      }
      
      for(let i = start; i <=end; i++) {
          let lefts = getAns(start, i - 1)
          let rights = getAns(i + 1, end)

          for(let l of lefts) {
              for(let r of rights) {
                  let root = new TreeNode(i)
                  root.left = l
                  root.right = r
                  list.push(root)
              }
          }
      }
      return list
  }
};

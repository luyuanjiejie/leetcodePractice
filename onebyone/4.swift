func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var array3: [Int] = nums1 + nums2
        array3.sort()
        var res: Double = Double(array3[array3.count/2])
        if ( array3.count <= 1) {
            return res
        }
        if (array3.count % 2 == 0) {
            var cal1: Double = Double(array3[(array3.count) / 2 - 1])
            var cal2: Double = Double(array3[array3.count/2]);
            res = ( cal1 + cal2 ) / 2
        }
        return res
    }

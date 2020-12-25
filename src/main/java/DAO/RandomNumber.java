package DAO;

import beans.Product;
import empty.HotProductEmpty;
import empty.ProductEmpty;

import java.util.List;
import java.util.Random;

public class RandomNumber {
    static Random rd = new Random();
    public static int random0To(int end) {
        int point = new HotProductEmpty().getAllAmountHotProduct().size();
        if (end > point - 10)
            return rd.nextInt(point);
        else
            return rd.nextInt(end);
    }
}

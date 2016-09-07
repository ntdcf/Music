//package com.Music.Service;
//
///**
// * Created by luohao on 2016/9/5.
// */
//
//import org.junit.Test;
//
//import java.util.Scanner;
//
//
///**
// * Created by luohao on 2016/8/29.
// */
//
///**
// 题目描述：
// 尽管是一个CS专业的学生，小B的数学基础很好并对数值计算有着特别的兴趣，喜欢用计算机程序来解决数学问题。现在，她正在玩一个数值变换的游戏。她发现计算机中经常用不同的进制表示同一个数，如十进制数123表达为16进制时只包含两位数7、11（B），用八进制表示时为三位数1、7、3。按不同进制表达时，各个位数的和也不同，如上述例子中十六进制和八进制中各位数的和分别是18和11。
// 小B感兴趣的是，一个数A如果按2到A-1进制表达时，各个位数之和的均值是多少？她希望你能帮她解决这个问题？
// 所有的计算均基于十进制进行，结果也用十进制表示为不可约简的分数形式。
// 输入
// 输入中有多组测试数据。每组测试数据为一个整数A（1=<A=<5000）。
// 输出
// 对每组测试数据，在单独的行中以X/Y的形式输出结果。
//
// 样例输入
// 5
// 3
// 样例输出
// 7/3
// 2/1
// */
//
//public class Main {
//
//    public static void main(String[] args) {
//        Scanner scanner = new Scanner(System.in);
//
//        int n = scanner.nextInt();
//        int m = scanner.nextInt();
//
//
//        int[][] number = new int[m][2];
//        for (int i = 0; i < m; i++) {
//            number[i][0] = scanner.nextInt();
//            number[i][1] = scanner.nextInt();
//        }
//
//        int temp = 0;
//        for(int i = 0; i < m-1; i++){
//            for(int j = 1; j < m; j++) {
//                if (number[i][0] == number[j][0]) {
//                    if(number[i][1] < number[j][0]) number[i][1] = 0;
//                    else number[j][0] = 0;
//                }
//            }
//        }
//
//        for(int i = 0; i < m; i++) {
//            temp = temp + number[i][1];
//        }
//
//        System.out.println(temp);
//    }
//}
//

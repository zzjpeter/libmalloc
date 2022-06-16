//
//  main.m
//  ZZJMallocBuild
//
//  Created by peterzjzhu on 2022/6/17.
//

/**
 调试工程很重要 源码直观就是爽
 ⚠️编译调试不能过: 请你检查以下几小点⚠️
 ①: 编译 targets 选择: ZZJMallocBuild
 ②: enable hardened runtime -> NO
 ③: build phase -> denpendenice -> libsystem_malloc
 ④: team 选择 None
 dsym
 */

/**
 peterzjzhu - 和谐学习 不急不躁
 需求: 针对malloc源码修改
 目标: 编译调试 objc 下层流程: calloc
 缺陷:
	- 对zone的优化处理进行隔断
	- nano_v2的处理
	- 还有platform的环境变量简化
 */

#import <Foundation/Foundation.h>
#import <malloc/malloc.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
		void *p = calloc(1, 24);
		NSLog(@"%lu",malloc_size(p));
		NSLog(@"Hello, World!");
    }
    return 0;
}

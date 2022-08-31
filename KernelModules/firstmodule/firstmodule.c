#include <linux/module.h>
#include <linux/init.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Amir Shkedy");
MODULE_DESCRIPTION("first module I wrote!!");

/**
 * @brief This function is called when the module is loaded into the kernel
 */
static int __init MyModuleInit(void){
	printk("Look at me I'm writing to kernel!! :) \n");
	return 0;
}

/**
 * @brief This function is aclled when the module is removed from the kernel
 */
static void __exit MyModuleExit(void){
	printk("I'm living you kernel :( \n");
}

module_init(MyModuleInit);
module_exit(MyModuleExit);

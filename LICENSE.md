    # 如果你对本项目还不是那么的了解，我希望你能好好看完下面这部分内容：

## 项目来源：一次与 @郝磊 的约定，2024 我们要做好一个项目

我们一拍即合，当天准备材料，当晚前准备好了报名表。

然而现实是无比残酷的，我们的一拍即合，并不能打败我们过去的自己，做的化工设计材料我们原封不动的交了上去，按老师的话来讲，扑街^……

非常感谢代兰花老师（大一时曾教过我我入门新能源科学与工程概论的老师），在她的鼓励下，我们并没有放弃，经过多方的联系，与指导老师、队友们的讨论，我们决定直接争抢国赛推荐名额————达到校赛前15名。                    
                    

## 然后，我们就玩命去做。那5月12日的20个小时，我们未曾停歇。                    

我从中午12：15 的课一下就会到了实验室（这里很感谢，顾偲雯指导老师对我们的场地支持），汇报完进度我是很忐忑不安的，顾老师回了我两个字：加油！
我们的板子刚刚到，这时，我的全部账上还剩下我的200生活费，但大家都动了起来，尽力去做好，补两份Word————申报书、说明书。

主要的难点在于说明书，这些知识基本都是我这半年学会的，很多方面我还不会专业、准确的表达，更别谈将队友讲懂了。@周潮 尝试等着我写一个交代清楚我们这个东西时怎么回事，怎么分工的内容。

当时，我寄希望于我的队友们：张若璐——调研、纪柏清——光伏电路、闻志伟——电机控制、周潮——汇总、我——上位机（控制程序）、张旺旺——麦轮底板、郝磊—— 电池设计。

那天，下午去找了趟工程热力学老师，郑敏老师。她办公室，坐着一堆让我瑟瑟发抖的老师，我只敢低着头，小声的回答老师的问题，感觉自己虽然成年了，但还是会下意识的陷入这种场景中。结束了班主任也找我聊了挺久，我自闭了。

朋友是一个有趣的力量，张若璐是下午唯一做完调研报告来见我的。接近1/3的内容，我们从财报上扒拉下来，成为了以一个类似行业定位一样的文字——业内调研。                   

在不到，8点时，我们成功移植了调研报告的内容，到申请表，而说明报告一笔未动。

这时闻志伟需要我的帮忙，他的电机全部成功控制，电机能够成功的都向一个方向转动。但现实显然很残酷，原地打转。小车就像一个飞速自旋的陀螺一般。我们尝试了源码的修改、电机的接线，但现实明显残酷的多，板子的固件被修改了，原来的指令集并不相同了，这是一个相当令人沮丧的场景。两块板子不到两分钟成了砖头......后来，esp32也没跑起来，11:00实在没有办法他走了。

还好，我们并没有直接放弃，我说，没事老闻，你尽力了。

张若璐居然在10:30来了，把我修改一些硬件的选型文档，移到说明书上。我呆了，这大概是今晚的MVP队友吧 。

郝磊带了几杯奶茶，我们的活干了起来。回来时，郝磊腿磕伤了，酒精擦了下，给他去国际交流中心开了间房间，我继续开始写数据验证，而就让纪柏清先送郝磊休息去了。

灯光，在通宵的实验室里似乎永远不会熄灭，时间如同蚂蚁一般在地上艰难爬行。

强撑着精神，张若璐在我旁边打起了呼噜。似乎世界上就只有我一个人，一盏灯，一个笔记本电脑了。

郝磊他两回来了，精神抖擞。我被赶了出去洗澡，但又不放心，这才3:00，我4:30再去，转身回了实验室，坐到桌前，继续画起图来。

他们三个，精神十足，聊起为啥来到常工院的承重话题，那种快乐，反正让画着图的我不由精神一振一怔的。

画好所有的图，差不都到了4:30，时间过的可快了。我标好的所有图在Visio里，其他别无二致。写好了大部分的内容，夜幕悄悄的淹没在黎明之前......
    
    
    
    
    
    
    
    
    
    
    

技术巡检小车调研主要由——张若璐提供初步思路
技术支持，由上位机（作为主控，连接以下模块）
- 模块一：星闪（模块），作为通讯，由闻志伟完成测试、AT指令
- 模块二：视觉（模块），作为监控，由朱佩韦完成 openMV，连接至上位机
- 模块三：电池（模块），作为电源，由郝磊完成12V供电上位机无供电
- 模块四：光伏（模块），给电源充电，由纪柏清负责5 W x 9
- 模块五：车轮（麦轮），注意轴连器连接，由张旺旺负责上位机 imx 8 烧录 openEuler_embedded 镜像 ，回来串口要通
- 模块六：软件（Android\iOS\HarmonyOS\Win.NT），许子涵、崔正阳、顾舒腾、闻志伟、朱佩韦负责
- 模块七：数据网关（AR502H-CN），崔正阳\顾舒腾\许子涵负责
- 模块八：嵌入式底软(YOCTO)，闻志伟、朱佩韦负责
    
    
    
    
                     木兰宽松许可证, 第2版

   木兰宽松许可证， 第2版 
   2020年1月 http://license.coscl.org.cn/MulanPSL2


   您对“软件”的复制、使用、修改及分发受木兰宽松许可证，第2版（“本许可证”）的如下条款的约束：

   0. 定义

      “软件”是指由“贡献”构成的许可在“本许可证”下的程序和相关文档的集合。

      “贡献”是指由任一“贡献者”许可在“本许可证”下的受版权法保护的作品。

      “贡献者”是指将受版权法保护的作品许可在“本许可证”下的自然人或“法人实体”。

      “法人实体”是指提交贡献的机构及其“关联实体”。

      “关联实体”是指，对“本许可证”下的行为方而言，控制、受控制或与其共同受控制的机构，此处的控制是指有受控方或共同受控方至少50%直接或间接的投票权、资金或其他有价证券。

   1. 授予版权许可

      每个“贡献者”根据“本许可证”授予您永久性的、全球性的、免费的、非独占的、不可撤销的版权许可，您可以复制、使用、修改、分发其“贡献”，不论修改与否。

   2. 授予专利许可

      每个“贡献者”根据“本许可证”授予您永久性的、全球性的、免费的、非独占的、不可撤销的（根据本条规定撤销除外）专利许可，供您制造、委托制造、使用、许诺销售、销售、进口其“贡献”或以其他方式转移其“贡献”。前述专利许可仅限于“贡献者”现在或将来拥有或控制的其“贡献”本身或其“贡献”与许可“贡献”时的“软件”结合而将必然会侵犯的专利权利要求，不包括对“贡献”的修改或包含“贡献”的其他结合。如果您或您的“关联实体”直接或间接地，就“软件”或其中的“贡献”对任何人发起专利侵权诉讼（包括反诉或交叉诉讼）或其他专利维权行动，指控其侵犯专利权，则“本许可证”授予您对“软件”的专利许可自您提起诉讼或发起维权行动之日终止。

   3. 无商标许可

      “本许可证”不提供对“贡献者”的商品名称、商标、服务标志或产品名称的商标许可，但您为满足第4条规定的声明义务而必须使用除外。

   4. 分发限制

      您可以在任何媒介中将“软件”以源程序形式或可执行形式重新分发，不论修改与否，但您必须向接收者提供“本许可证”的副本，并保留“软件”中的版权、商标、专利及免责声明。

   5. 免责声明与责任限制

      “软件”及其中的“贡献”在提供时不带任何明示或默示的担保。在任何情况下，“贡献者”或版权所有者不对任何人因使用“软件”或其中的“贡献”而引发的任何直接或间接损失承担责任，不论因何种原因导致或者基于何种法律理论，即使其曾被建议有此种损失的可能性。 

   6. 语言
      “本许可证”以中英文双语表述，中英文版本具有同等法律效力。如果中英文版本存在任何冲突不一致，以中文版为准。

   条款结束 

   如何将木兰宽松许可证，第2版，应用到您的软件
   
   如果您希望将木兰宽松许可证，第2版，应用到您的新软件，为了方便接收者查阅，建议您完成如下三步：

      1， 请您补充如下声明中的空白，包括软件名、软件的首次发表年份以及您作为版权人的名字；

      2， 请您在软件包的一级目录下创建以“LICENSE”为名的文件，将整个许可证文本放入该文件中；

      3， 请将如下声明文本放入每个源文件的头部注释中。

   Copyright (c) [Year] [name of copyright holder]
   [Software Name] is licensed under Mulan PSL v2.
   You can use this software according to the terms and conditions of the Mulan PSL v2. 
   You may obtain a copy of Mulan PSL v2 at:
            http://license.coscl.org.cn/MulanPSL2 
   THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT, MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.  
   See the Mulan PSL v2 for more details.  


                     Mulan Permissive Software License，Version 2

   Mulan Permissive Software License，Version 2 (Mulan PSL v2)
   January 2020 http://license.coscl.org.cn/MulanPSL2

   Your reproduction, use, modification and distribution of the Software shall be subject to Mulan PSL v2 (this License) with the following terms and conditions: 
   
   0. Definition
   
      Software means the program and related documents which are licensed under this License and comprise all Contribution(s). 
   
      Contribution means the copyrightable work licensed by a particular Contributor under this License.
   
      Contributor means the Individual or Legal Entity who licenses its copyrightable work under this License.
   
      Legal Entity means the entity making a Contribution and all its Affiliates.
   
      Affiliates means entities that control, are controlled by, or are under common control with the acting entity under this License, ‘control’ means direct or indirect ownership of at least fifty percent (50%) of the voting power, capital or other securities of controlled or commonly controlled entity.

   1. Grant of Copyright License

      Subject to the terms and conditions of this License, each Contributor hereby grants to you a perpetual, worldwide, royalty-free, non-exclusive, irrevocable copyright license to reproduce, use, modify, or distribute its Contribution, with modification or not.

   2. Grant of Patent License 

      Subject to the terms and conditions of this License, each Contributor hereby grants to you a perpetual, worldwide, royalty-free, non-exclusive, irrevocable (except for revocation under this Section) patent license to make, have made, use, offer for sale, sell, import or otherwise transfer its Contribution, where such patent license is only limited to the patent claims owned or controlled by such Contributor now or in future which will be necessarily infringed by its Contribution alone, or by combination of the Contribution with the Software to which the Contribution was contributed. The patent license shall not apply to any modification of the Contribution, and any other combination which includes the Contribution. If you or your Affiliates directly or indirectly institute patent litigation (including a cross claim or counterclaim in a litigation) or other patent enforcement activities against any individual or entity by alleging that the Software or any Contribution in it infringes patents, then any patent license granted to you under this License for the Software shall terminate as of the date such litigation or activity is filed or taken.

   3. No Trademark License

      No trademark license is granted to use the trade names, trademarks, service marks, or product names of Contributor, except as required to fulfill notice requirements in Section 4.

   4. Distribution Restriction

      You may distribute the Software in any medium with or without modification, whether in source or executable forms, provided that you provide recipients with a copy of this License and retain copyright, patent, trademark and disclaimer statements in the Software.

   5. Disclaimer of Warranty and Limitation of Liability

      THE SOFTWARE AND CONTRIBUTION IN IT ARE PROVIDED WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED. IN NO EVENT SHALL ANY CONTRIBUTOR OR COPYRIGHT HOLDER BE LIABLE TO YOU FOR ANY DAMAGES, INCLUDING, BUT NOT LIMITED TO ANY DIRECT, OR INDIRECT, SPECIAL OR CONSEQUENTIAL DAMAGES ARISING FROM YOUR USE OR INABILITY TO USE THE SOFTWARE OR THE CONTRIBUTION IN IT, NO MATTER HOW IT’S CAUSED OR BASED ON WHICH LEGAL THEORY, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

   6. Language

      THIS LICENSE IS WRITTEN IN BOTH CHINESE AND ENGLISH, AND THE CHINESE VERSION AND ENGLISH VERSION SHALL HAVE THE SAME LEGAL EFFECT. IN THE CASE OF DIVERGENCE BETWEEN THE CHINESE AND ENGLISH VERSIONS, THE CHINESE VERSION SHALL PREVAIL.

   END OF THE TERMS AND CONDITIONS

   How to Apply the Mulan Permissive Software License，Version 2 (Mulan PSL v2) to Your Software

      To apply the Mulan PSL v2 to your work, for easy identification by recipients, you are suggested to complete following three steps:

      i Fill in the blanks in following statement, including insert your software name, the year of the first publication of your software, and your name identified as the copyright owner; 

      ii Create a file named “LICENSE” which contains the whole context of this License in the first directory of your software package;

      iii Attach the statement to the appropriate annotated syntax at the beginning of each source file.


   Copyright (c) [Year] [name of copyright holder]
   [Software Name] is licensed under Mulan PSL v2.
   You can use this software according to the terms and conditions of the Mulan PSL v2. 
   You may obtain a copy of Mulan PSL v2 at:
               http://license.coscl.org.cn/MulanPSL2 
   THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT, MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.  
   See the Mulan PSL v2 for more details.  

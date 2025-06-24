@Entry
@Component
struct PlayGround {
  build() {
    //测试相对容器
    // Row() {
    //   RelativeContainer() {
    //     Column(){
    //       //上2+2
    //       Row(){
    //         Row(){
    //           ForEach(Array.from({length:2}),()=>{
    //             Row(){
    //               Text()
    //                 .width(15)
    //                 .aspectRatio(1)
    //                 .backgroundColor(Color.Red)
    //             }
    //             .padding(2)
    //           })
    //         }
    //         //右2
    //         Row(){
    //           ForEach(Array.from({length:2}),()=>{
    //             Row(){
    //               Text()
    //                 .width(15)
    //                 .aspectRatio(1)
    //                 .backgroundColor(Color.Red)
    //             }
    //             .padding(2)
    //           })
    //         }
    //         .margin({left:60})
    //       }
    //       //上4+4
    //       Row(){
    //         //4
    //         Row(){
    //           ForEach(Array.from({length:4}),()=>{
    //             Row(){
    //               Text()
    //                 .width(15)
    //                 .aspectRatio(1)
    //                 .backgroundColor(Color.Red)
    //             }
    //             .padding(2)
    //           })
    //         }
    //         .alignRules({
    //           bottom:{
    //             anchor:"center",
    //             align:VerticalAlign.Top
    //           },
    //           left:{
    //             anchor:'center',
    //             align:HorizontalAlign.Start
    //           }
    //         })
    //         //右4
    //         Row(){
    //           ForEach(Array.from({length:4}),()=>{
    //             Row(){
    //               Text()
    //                 .width(15)
    //                 .aspectRatio(1)
    //                 .backgroundColor(Color.Red)
    //             }
    //             .padding(2)
    //           })
    //         }
    //         .margin({left:20})
    //         .alignRules({
    //           bottom:{
    //             anchor:"center",
    //             align:VerticalAlign.Top
    //           },
    //           right:{
    //             anchor:'center',
    //             align:HorizontalAlign.End
    //           }
    //         })
    //       }
    //       //中间行
    //       Row(){
    //         ForEach(Array.from({length:9}),()=>{
    //           Row(){
    //             Text()
    //               .width(15)
    //               .aspectRatio(1)
    //               .backgroundColor(Color.Red)
    //           }
    //           .padding(2)
    //         })
    //       }
    //       .id('center')
    //       //9
    //       Row(){
    //         ForEach(Array.from({length:9}),()=>{
    //           Row(){
    //             Text()
    //               .width(15)
    //               .aspectRatio(1)
    //               .backgroundColor(Color.Red)
    //           }
    //           .padding(2)
    //         })
    //       }
    //       //7
    //       Row(){
    //         ForEach(Array.from({length:7}),()=>{
    //           Row(){
    //             Text()
    //               .width(15)
    //               .aspectRatio(1)
    //               .backgroundColor(Color.Red)
    //           }
    //           .padding(2)
    //         })
    //       }
    //       //5
    //       Row(){
    //         ForEach(Array.from({length:5}),()=>{
    //           Row(){
    //             Text()
    //               .width(15)
    //               .aspectRatio(1)
    //               .backgroundColor(Color.Red)
    //           }
    //           .padding(2)
    //         })
    //       }
    //       //3
    //       Row(){
    //         ForEach(Array.from({length:3}),()=>{
    //           Row(){
    //             Text()
    //               .width(15)
    //               .aspectRatio(1)
    //               .backgroundColor(Color.Red)
    //           }
    //           .padding(2)
    //         })
    //       }
    //       //1
    //       Row(){
    //         Row(){
    //           Text()
    //             .width(15)
    //             .aspectRatio(1)
    //             .backgroundColor(Color.Red)
    //         }
    //         .padding(2)
    //       }
    //     }
    //     .width('100%')
    //   }
    //   .width('100%')
    // }
    // .height('100%')
    //测试帧动画
    Column(){
      ImageAnimator()
        .images([
          {src:$r('[basic].media.loading_01') },
          {src:$r('[basic].media.loading_02') },
          {src:$r('[basic].media.loading_03') },
          {src:$r('[basic].media.loading_04') },
        ])
        .state(AnimationStatus.Running)
        .duration(500)
        .iterations(-1)
        .width(275)
        .height(75)
    }
    .width('100%')
    .height('100%')
  }
}
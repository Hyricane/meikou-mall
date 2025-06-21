import { homeView } from 'home';
import { categoryView } from 'category';
import { CartView } from 'cart';
import { myView } from 'my';
import { BreakPointType, Logger } from 'basic'

interface TabItem {
  text: string
  normal: ResourceStr
  active: ResourceStr
}

@Entry
@Component
struct Index {
  @StorageProp('currentBreakpoint') breakPoint: string = 'xs'
  aboutToAppear(): void {
    Logger.info({
      name: 'jack',
      age: 18
    })
  }

  @State message: string = 'Hello World';
  @State activeIndex: number = 0
  list: TabItem[] = [
    { text: '首页', normal: $r('app.media.ic_public_home_normal'), active: $r('app.media.ic_public_home_active') },
    { text: '分类', normal: $r('app.media.ic_public_pro_normal'), active: $r('app.media.ic_public_pro_active') },
    { text: '购物袋', normal: $r('app.media.ic_public_cart_normal'), active: $r('app.media.ic_public_cart_active') },
    { text: '我的', normal: $r('app.media.ic_public_my_normal'), active: $r('app.media.ic_public_my_active') },
  ]

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      ForEach(this.list, (item: TabItem, index: number) => {
        TabContent() {
          if (index == 0) {
            homeView()
          } else if (index == 1) {

          } else if (index == 2) {
            CartView()
          } else {
            myView()
          }
        }
        .tabBar(this.TabItemBuilder(item, index))
      })
    }
    .scrollable(false)
    .onTabBarClick(index => {
      this.activeIndex = index
    })
    .barPosition(new BreakPointType({
      'sm': BarPosition.End,
      'md': BarPosition.End,
      'lg': BarPosition.Start
    }).getValue(this.breakPoint))
    .vertical(this.breakPoint == 'lg' ? true : false)
  }

  @Builder
  TabItemBuilder(item: TabItem, index: number) {
    Column() {
      Image(this.activeIndex === index ? item.active : item.normal)
        .width(24)
        .aspectRatio(1)
      Text(item.text)
        .fontColor($r('[basic].color.black'))
        .fontSize(12)
    }
    .justifyContent(FlexAlign.SpaceEvenly)
    .height(50)
  }


}
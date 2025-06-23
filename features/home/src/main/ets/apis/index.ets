import { RequestAxios } from 'basic'
import { Banner, CategoryItem, HotResult, MkGoodsItem } from '../viewmodel'

export const getBannerApi = () => {
  return RequestAxios.get<Banner[]>('/home/banner')
}

export const getCategoryApi = () => {
  return RequestAxios.get<CategoryItem[]>('/home/category/head')
}

// 首页-特惠推荐
export const getHotPreferenceApi = () => {
  return RequestAxios.get<HotResult>('/hot/preference')
}

// 首页-爆款推荐
export const getHotInVogueApi = () => {
  return RequestAxios.get<HotResult>('/hot/inVogue')
}

// 首页-一站买全
export const getHotOneStopApi = () => {
  return RequestAxios.get<HotResult>('/hot/oneStop')
}
// 获取新鲜好物数据
export const getNewApi = () => {
  return RequestAxios.get<MkGoodsItem[]>('/home/new')
}
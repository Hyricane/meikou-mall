import { RequestAxios } from "basic"
import { Banner } from "../viewmodel"

//一般带有固定后缀或前缀
export const getBannerAPI = () => {
  return RequestAxios.get<Banner[]>('/home/banner')
}
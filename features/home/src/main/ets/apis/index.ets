import { RequestAxios } from "basic"
import { Banner } from "../viewmodel"

export const getBannerAPI = () => {
  return RequestAxios.get<Banner[]>('/home/banner')
}
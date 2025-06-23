import axios, { InternalAxiosRequestConfig, AxiosError, AxiosResponse } from '@ohos/axios'

// 实例化 通用配置
export const axiosInstance = axios.create({
  baseURL: 'https://meikou-api.itheima.net/',
  timeout: 20000
})

// 后端返回的数据格式 code, msg, result
interface HttpResponse<T> {
  code: string
  msg: string
  result: T
}

// AxiosResponse 是 axios 响应类型
export type ResponseType<T> = AxiosResponse<HttpResponse<T>>

export class RequestAxios {
  // {} => {params: {}}
  // const res = await xx.get()    res.data.result
  static get<T>(url: string, params?: object): Promise<ResponseType<T>> {
    return axiosInstance.get<null, ResponseType<T>>(url, {params: params})
  }
  static delete<T>(url: string, params?: object): Promise<ResponseType<T>> {
    return axiosInstance.delete<null, ResponseType<T>>(url, {params: params})
  }

  static post<T>(url: string, data?: object): Promise<ResponseType<T>> {
    return axiosInstance.post<null, ResponseType<T>>(url, data)
  }
  static put<T>(url: string, data?: object): Promise<ResponseType<T>> {
    return axiosInstance.put<null, ResponseType<T>>(url, data)
  }
}


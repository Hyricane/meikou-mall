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
  // get -> params -> { params: {} }
  static get<T>(url: string, params?: object): Promise<T> {
    return axiosInstance.get<null, T>(url, { params })
  }

  // post -> data -> { data: {} }
  static post<T>(url: string, data?: object): Promise<T> {
    return axiosInstance.post<null, T>(url, data)
  }

  static delete<T>(url: string, data?: object): Promise<T> {
    return axiosInstance.delete<null, T>(url, data)
  }

  static put<T>(url: string, data?: object): Promise<T> {
    return axiosInstance.put<null, T>(url, data)
  }
}


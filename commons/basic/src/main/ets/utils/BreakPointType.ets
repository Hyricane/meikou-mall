
export class BreakPointType<T> {
  options: Record<string, T>

  constructor(option: Record<string, T>) {
    this.options = option
  }

  getValue(currentBreakPoint: string) {
    return this.options[currentBreakPoint]
  }
}